#Flutter Wrapper
-keep class com.eclipsesource.v8.** { *; }
## Keep the annotations that proguard needs to process.
#-keep class com.google.android.filament.proguard.UsedBy*
#
## Just because native code accesses members of a class, does not mean that the
## class itself needs to be annotated - only annotate classes that are
## referenced themselves in native code.
#-keep @com.google.android.filament.proguard.UsedBy* class * {
#  <init>();
#}
#-keepclassmembers class * {
#  @com.google.android.filament.proguard.UsedBy* *;
#}
#
## These classes is loaded via env->FindClass() from Utils.cpp
## They are in the utils namespace and therefore not covered by previous rules.
#-keep class com.google.android.filament.utils.KTX1Loader
#-keep class com.google.android.filament.utils.HDRLoader
#
## These native JNI methods are loaded via env->RegisterNatives() from Utils.cpp
#-keepclassmembers class com.google.android.filament.utils.KTX1Loader {
#   native <methods>;
#}
#-keepclassmembers class com.google.android.filament.utils.HDRLoader {
#   native <methods>;
#}