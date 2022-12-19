# Tracking Example (demo) app

The Demo app consist of 2 columns with buttons. Each button represents one provided TrackingEvent:

+ 1'st column: buttons to track regular events, such as: `AddToCart` event, `StartView` event, etc.
+ 2'nd column: buttons to track the same event, but with extra `customParams` argument in the call.

![tracking-demo-app-screen](README_md/sdk-tracker-ios-demo.gif)

## Run application

+ Install Pod dependencies

```
$ pod install
```

+ Open [SATrackingSDKExample.xcworkspace](../SATrackingSDKExample.xcworkspace) in the Xcode.

+ Initialize the Tracking SDK.

    + Open [AppDelegate.swift](SATrackingSDKExample/AppDelegate.swift) file.

    + Set up the following properties in the `TrackerOptions` shown in the code below:

        ```Swift
        // Let's initialize SATrackingSDK
        let options = TrackerOptions(
            applicationId: Bundle.main.bundleIdentifier ?? "",
            partnerId: "YOUR_PARTNER_ID",
            uid: "YOUR_UID",
            baseURL: "https://<YOUR_END_POINT>/",
            debugMode: true,
            httpHeaders: ["Authorization": {
                "YOUR_AUTHORIZATION_TOKEN"
            }]
        )
        TechTracker.initialize(options: options)
        ```

+ Run the app. Open log output window in the Xcode (see animated demo above).

+ Tap on buttons to see the log output.
  There, you can see the JSON request to see what properties sent to backend.

+ Here, couple examples how to track regular event and how to send the event with `customParams`.
  See [ViewController.swift](SATrackingSDKExample/ViewController.swift) for more details.
  Eg (`Scroll` event):

  ```Swift
  // REGULAR EVENT
  var event = Scroll()
  event.value = 1.0
  event.page = "page"
  event.category = "category"
  event.subcategory = "subcategory"
  TechTracker.sharedTracker.event(event: event)
  
  // THE SAME EVENT (with customParams)
  var event = Scroll()
  event.value = 1.0
  event.page = "page"
  event.category = "category"
  event.subcategory = "subcategory"
  event.customParams = [
      "custom_param1": "value1",
      "custom_param2": "value2"
  ]
  TechTracker.sharedTracker.event(event: event)
  ```
