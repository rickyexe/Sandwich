import PlaygroundSupport
import SPCCore
import UIKit

/// A global instance of Scene.
public let scene = Scene(size: Scene.sceneSize)

/// Sets up the Live View using the scene’s SKView.
public func setUpLiveView(presentation: LiveViewContentPresentation = .aspectFitMaximum) {
    LiveViewController.contentPresentation = presentation
    let liveViewController = LiveViewController()
    liveViewController.contentView = scene.skView
    PlaygroundPage.current.liveView = liveViewController
    liveViewController.backgroundImage = UIImage.from(color: UIColor(named: "scene_background_color") ?? .systemBackground)
    scene.backgroundColor = UIColor(named: "scene_background_color") ?? .systemBackground
}
