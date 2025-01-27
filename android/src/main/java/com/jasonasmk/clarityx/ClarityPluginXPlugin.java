package com.jasonasmk.clarityx;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ClarityPluginX")
public class ClarityPluginXPlugin extends Plugin {


    @PluginMethod
    public void initialize(PluginCall call) {
        String projectId = call.getString("projectId");
        ClarityPluginX implementation = new ClarityPluginX(getActivity());

        Boolean result = implementation.initialize(projectId);

        if(result) {
            call.resolve();
            return;
        }
        call.reject("Clarity initialization failed");
    }

    @PluginMethod
    public void setCustomUserId(PluginCall call) {
        String customUserId = call.getString("customUserId");
        ClarityPluginX implementation = new ClarityPluginX(getActivity());

        Boolean result = implementation.setCustomUserId(customUserId);

        if(result) {
            call.resolve();
            return;
        }
        call.reject("Clarity setCustomUserId failed");
    }
}
