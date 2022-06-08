package com.charles.hellojni;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    public native String stringFromJNI();

    static {
        System.loadLibrary("hello_jni");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.d("[CC]", "[" + stringFromJNI() + "]");
    }
}