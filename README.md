[![CI Status](https://img.shields.io/travis/fmaxx/SATrackingSDK.svg?style=flat)](https://travis-ci.org/fmaxx/SATrackingSDK)
[![Version](https://img.shields.io/cocoapods/v/SATrackingSDK.svg?style=flat)](https://cocoapods.org/pods/SATrackingSDK)
[![License](https://img.shields.io/cocoapods/l/SATrackingSDK.svg?style=flat)](https://cocoapods.org/pods/SATrackingSDK)
[![Platform](https://img.shields.io/cocoapods/p/SATrackingSDK.svg?style=flat)](https://cocoapods.org/pods/SATrackingSDK)

# Documentation

Please see detailed documentation below or in the following link:

[https://docs.ad4tech.net/sdk-tracker-ios-swift.html](https://docs.ad4tech.net/sdk-tracker-ios-swift.html)

# Tracking Example (demo) app

Go to [SATrackingSDKExample](SATrackingSDKExample/) folder, here in the repo.

# SATrackingSDK iOS (Swift)

Tracking SDK is used to track targeted user actions in the mobile app and further analyze this information.

**Before you start**

You should be aware of the following options required to initialize and use the SDK. Ask the SDK team to give them to you.

- partnerId - Partner ID. For example: `123`
- baseUrl - API URL of tracking system. For example: `"https://my.server.com/"`

## Requirements

- Swift 5 and above
- iOS 12 and above

## Installation

```
pod 'SATrackingSDK'
```

or

```
pod 'SATrackingSDK', :git => 'https://github.com/solutionarchitectstech/ios_tracker_sdk_release.git', :tag => '1.1.8'
```

## Initialization

The library is initialized by the developer when the application is started 
or when the user is authorized by the method call `TechTracker.initialize()`.
When initializing, remember to add your personal ID.
Specify the user ID (GAID, MAID, or other unique identifier).

For example, see [AppDelegate.swift](SATrackingSDKExample/SATrackingSDKExample/AppDelegate.swift):

```Swift
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

## Trackable events

The Tracking SDK provides an API to send a specific events.
To send an event, you must pass the event object to the method `event()` of class `TechTracker`:

Here is an example:

```Swift
TechTracker.sharedTracker.event(event: event)
```

#### AdImp

Displaying an advertising banner to the user.

```Swift
var event = AdImp()
event.placementId = "Banner1"
event.width = 320
event.height = 50
event.href = "https://site.com"
event.category = "category"
event.subcategory = "subcategory"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `placementId` - advertising placement ID
- `width` - ad placement width
- `height` - ad placement height
- `href` - transition link when clicking on the banner
- `category` - product category
- `subcategory` - product subcategory
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### Scroll

Scrolling content (for example, a list of products).

```Swift
var event = Scroll()
event.value = 0.5
event.category = "category"
event.subcategory = "subcategory"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `category` - view object category
- `subcategory` - subcategory of the view object
- `value` - a value between 0 and 1 describing how much content was scrolled as a percentage
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### AdClick

Click on an advertising banner.

```Swift
var event = AdClick()
event.placementId = "Banner1"
event.width = 320
event.height = 50
event.href = "https://site.com"
event.category = "category"
event.subcategory = "subcategory"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `placementId` - advertising placement ID
- `width` - ad placement width
- `height` - ad placement height
- `href` - transition link when clicking on the banner
- `category` - product category
- `subcategory` - product subcategory
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### AddToCart

User click on the "Add to Cart" button.

```Swift
var event = AddToCart()
event.page = "page"
event.add(
    id: "1", 
    name: "Football", 
    price: 5.99, 
    currency: "RUB", 
    category: "sport", 
    subcategory: "boys",
    quantity: 2.0,
    customParams: [
        "custom_param1": "value1",
        "custom_param2": "value2"
    ]
)
event.add(
    id: "2", 
    name: "Bike", 
    price: 4.55, 
    currency: "USD", 
    category: "sport", 
    subcategory: "girls"
)

TechTracker.sharedTracker.event(event: event)
```

- `id` - product identifier
- `name` - product name
- `currency` - currency
- `price` - product price
- `category` - product category
- `subcategory` - product subcategory
- `page` - the name of the screen the user is on
- `quantity` - (optional, default: 1.0) the quantity of the product
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### Purchase

User purchases goods in the system.

```Swift
var event = Purchase()
event.page = "page"
event.add(
    id: "1", 
    name: "Football", 
    price: 5.99, 
    currency: "RUB", 
    category: "sport", 
    subcategory: "boys",
    quantity: 3.0,
    customParams: [
        "custom_param1": "value1",
        "custom_param2": "value2"
    ]
)
event.add(
    id: "2", 
    name: "Bike", 
    price: 4.55, 
    currency: "USD", 
    category: "sport", 
    subcategory: "girls"
)

TechTracker.sharedTracker.event(event: event)
```

- `id` - item identifier
- `name` - product name
- `currency` - currency, USD, EUR, RUB, etc.
- `price` - product price
- `category` - product category
- `subcategory` - product subcategory
- `page` - the name of the screen the user is on
- `quantity` - (optional, default: 1.0) the quantity of the product
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### Search

Performing a search (for example, searching for a product).

```Swift
var event = Search()
event.value = "search something"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `value` - search phrase
- `page` - the name of the screen the user is on

#### StartView

The user starts viewing the product card.

```Swift
var event = StartView()
event.id = "1"
event.name = "name"
event.category = "category"
event.subcategory = "subcategory"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `id` - identifier of the view object
- `name` - view object name
- `category` - view object category
- `subcategory` - subcategory of the view object
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### StopView

End of user viewing content.

```Swift
var event = StopView()
event.id = "1"
event.name = "name"
event.category = "category"
event.subcategory = "subcategory"
event.value = 0.3
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `id` - identifier of the view object
- `name` - view object name
- `category` - view object category
- `subcategory` - subcategory of the view object
- `value` - a value from 0 to 1 describing how much content was viewed in percentage
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### Viewing

The user continues viewing the content.

```Swift
var event = Viewing()
event.id = "1"
event.name = "name"
event.category = "category"
event.subcategory = "subcategory"
event.value = 0.3
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `id` - identifier of the view object
- `name` - view object name
- `category` - view object category
- `subcategory` - subcategory of the view object
- `value` - a value from 0 to 1 describing how much content was viewed in percentage
- `page` - the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event

#### Click

Click on a significant element in the interface (links, buttons, product card in the product list, etc).

```Swift
var event = Click()
event.value = "value"
event.page = "page"
event.customParams = [
    "custom_param1": "value1",
    "custom_param2": "value2"
]

TechTracker.sharedTracker.event(event: event)
```

- `value` - a string with a description of which element was clicked ( url for external links )
- `page`- the name of the screen the user is on
- `customParams` - (optional) `[String: String]` custom parameters to add to tracking event
