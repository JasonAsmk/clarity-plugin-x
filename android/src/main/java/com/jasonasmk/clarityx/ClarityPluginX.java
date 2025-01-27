package com.jasonasmk.clarityx;

import androidx.appcompat.app.AppCompatActivity;

import com.microsoft.clarity.Clarity;
import com.microsoft.clarity.ClarityConfig;
import com.microsoft.clarity.models.LogLevel;


public class ClarityPluginX {
    private AppCompatActivity activity;
    public ClarityPluginX(AppCompatActivity activity) {
        this.activity = activity;
    }

    public Boolean initialize(String projectId) {
        ClarityConfig config = new ClarityConfig(projectId);
        config.setLogLevel(LogLevel.Verbose);
        return Clarity.initialize(this.activity, config);
    }

    public Boolean setCustomUserId(String customUserId) {
        return Clarity.setCustomUserId(customUserId);
    }
}
