#include <jni.h>
#include <stdio.h>
extern "C" {
                        //Java_包名_類名_Java需要呼叫的方法名
    // 引數說明
    // 1. JNIEnv:代表了VM裡面的環境,本地的程式碼可以通過該引數與Java程式碼進行操作
    // 2. obj:定義JNI方法的類的一個本地引用(this)
    jstring Java_com_charles_hellojni_MainActivity_stringFromJNI(JNIEnv* env, jobject obj){
        return (*env).NewStringUTF("Hello World, I am Charles!");
    }
}