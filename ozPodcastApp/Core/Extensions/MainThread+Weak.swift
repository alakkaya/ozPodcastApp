import Foundation

protocol MainThreadRunner: AnyObject {
    func runOnMain(_ block: @escaping () -> Void)
    
    // It will gandle view dealloce
    func runOnMainSafety(_ block: @escaping () -> Void)
}

extension MainThreadRunner {
    
    func runOnMain(_ block: @escaping () -> Void){
        guard Thread.isMainThread else {
            DispatchQueue.main.async {
                block()
            }
            return
        }
        block()
    }
    
    func runOnMainSafety(_ block: @escaping () -> Void) {
        guard Thread.isMainThread else {
            DispatchQueue.main.async {[weak self] in
                guard let _self = self else { return }
                block()
            }
            return
        }
        block()
    }
    
}
