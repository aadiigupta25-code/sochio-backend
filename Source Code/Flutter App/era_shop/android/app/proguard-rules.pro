## Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }
-dontwarn io.flutter.embedding.**

## Firebase
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**

## Stripe
-keep class com.stripe.** { *; }
-dontwarn com.stripe.**

## Razorpay
-keep class com.razorpay.** { *; }
-dontwarn com.razorpay.**

## Google Sign In
-keep class com.google.android.gms.auth.** { *; }

## Zego
-keep class **.zego.**{*;}
-keep class im.zego.** { *; }
-dontwarn im.zego.**

## Socket.IO
-keep class io.socket.** { *; }
-dontwarn io.socket.**

## OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

## Gson
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*
-keep class * implements com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

## General
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception
-keep class * implements android.os.Parcelable { *; }
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}
