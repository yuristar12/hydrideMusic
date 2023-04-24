import Cocoa
import FlutterMacOS
import bitsdojo_window_macos

class MainFlutterWindow: BitsdojoWindow {
    var volumeEvents:VolumeEvents;
    
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController.init()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)
    
    
      RegisterGeneratedPlugins(registry: flutterViewController);
    
            
      
      
//     注册音量控制event
      volumeEvents = VolumeEvents();
      
      volumeEvents.registerEvent(withBinaryMessager: flutterViewController.engine.binaryMessenger);
      
      
      
 
    


    super.awakeFromNib()
  }
    override func bitsdojo_window_configure() -> UInt {
    return BDW_CUSTOM_FRAME | BDW_HIDE_ON_STARTUP
  }
}
