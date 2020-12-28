package com.example.flutter_mid

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    companion object {
        const val CHANNEL = "example.com/value"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(registry: this)

        MethodChannel(flutterView, CHANNEL)
            .setMethodCallHandler{ methodCall, result -> 
                // 플러터와 통신할 때, 호출되는 callback
                if (methodCall.method == "getValue") {
                    result.success("성공")
                } else {
                    result.notImplemented()
                }
            }
    }
}
