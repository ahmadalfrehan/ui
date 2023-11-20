package com.example.designtra

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "hotspot"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            val hotspotManager = HotspotManager(context)
            when (call.method) {
                "isHotspotEnabled" -> result.success(hotspotManager.isHotspotEnabled())
                "setHotspotEnabled" -> {
                    val enabled = call.arguments as Boolean
                    hotspotManager.setHotspotEnabled(enabled)
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

}
