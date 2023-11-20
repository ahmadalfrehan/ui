package com.example.designtra

import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.net.wifi.WifiConfiguration
import android.net.wifi.WifiManager
import android.os.Build
import android.provider.Settings

class HotspotManager(private val context: Context) {

    fun isHotspotEnabled(): Boolean {

        val connectivityManager =
            context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val wifiManager =
                context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
            wifiManager.isWifiEnabled
        } else {
            try {
                val method = connectivityManager.javaClass.getDeclaredMethod("getTetheredIfaces")
                method.isAccessible = true
                val result = method.invoke(connectivityManager) as List<*>
                result.isNotEmpty()
            } catch (e: Exception) {
                e.printStackTrace()
                false
            }
        }
    }

    fun setHotspotEnabled(enabled: Boolean) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            // Android 10 (API level 29) and above
            val intent = Intent(Settings.ACTION_SETTINGS)
            context.startActivity(intent)
        } else {
            // Below Android 10
            try {
                val connectivityManager =
                    context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager

                val wifiManager =
                    context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager

                val method = connectivityManager.javaClass.getDeclaredMethod(
                    "tether",
                    String::class.java,
                    Boolean::class.java
                )
                method.isAccessible = true

                val wifiConfiguration = WifiConfiguration()
                wifiConfiguration.SSID = "YourHotspotSSID"
                wifiConfiguration.preSharedKey = "YourHotspotPassword"

                method.invoke(connectivityManager, wifiConfiguration.SSID, enabled)
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }
    }
}