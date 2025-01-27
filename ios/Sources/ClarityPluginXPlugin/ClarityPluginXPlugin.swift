import Foundation
import Capacitor
/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ClarityPluginXPlugin)
public class ClarityPluginXPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ClarityPluginXPlugin"
    public let jsName = "ClarityPluginX"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "initialize", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ClarityPluginX()

    @objc func initialize(_ call: CAPPluginCall) {
        let projectId = call.getString("projectId") ?? ""
        let result = implementation.initialize(projectId)
        
        if(result) {
            call.resolve()
        } else {
            call.reject("Error initializing Clarity")
        }
    }
    
    @objc func setCustomUserId(_ call: CAPPluginCall) {
        let customUserId = call.getString("customUserId") ?? ""
        let result = implementation.setCustomUserId(customUserId)
        if(result) {
            call.resolve()
        } else {
            call.reject("Error setting custom user id")
        }
    }
}
