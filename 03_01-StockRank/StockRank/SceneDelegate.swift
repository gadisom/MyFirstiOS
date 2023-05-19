import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       // Scene이 생성된 후, 해당 Scene이 사용자에게 보여지기 전에 호출됩니다.
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       // Scene이 해제되거나, 시스템에서 삭제될 때 호출됩니다.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       // Scene이 활성화될 때 호출됩니다.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        //Scene이 비활성화될 때 호출됩니다.
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        //Scene이 백그라운드로 이동될 때 호출됩니다.
    }


}

