import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {
    
    static let instance = NotificationManager()
    
    func NotificationAutharization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (sucess, error) in
            if let error = error {
                print("Error: \(error)")
            } else {
                print("SUCESS")
            }
                
        }
        
    }
    
    func scheduleNotification(){
        let content = UNMutableNotificationContent()
        content.title = "This is my first Notification"
        content.subtitle = "This is content Inside! "
        content.sound = .default
        content.badge = 1
        
        //time
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
        //calender
//        var dateComponents = DateComponents()
//        dateComponents.hour = 16
//        dateComponents.minute = 25
//
//        
//        
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        //location
        let coordinates = CLLocationCoordinate2D(
            latitude: 40.00,
            longitude: 50.00
        )
        let region = CLCircularRegion(
            center: coordinates,
            radius: 100,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = false
        
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger:  trigger)
        UNUserNotificationCenter.current().add(request)
        
    }
}

struct LocalNotificationPushBootcamp: View {
    
    
    
    var body: some View {
        VStack(spacing: 25){
            Button("Request Permission"){
                NotificationManager.instance.NotificationAutharization()
            }
            Button("Schedule Notification") {
                NotificationManager.instance.scheduleNotification()
            }
            .onAppear() {
                UIApplication.shared.applicationIconBadgeNumber = 0
            }
            
        }
        
}
}

#Preview {
    LocalNotificationPushBootcamp()
}
