import Foundation
import Clarity

@objc public class ClarityPluginX: NSObject {
    @objc public func initialize(_ projectId: String) -> Bool {
        let config = ClarityConfig(projectId: projectId)
        return ClaritySDK.initialize(config: config)
    }
    
    @objc public func setCustomUserId(_ customUserId: String) -> Bool {
        return ClaritySDK.setCustomUserId(customUserId)
    }
}
