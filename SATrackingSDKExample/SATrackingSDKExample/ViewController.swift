//
//  ViewController.swift
//  SATrackingSDKExample
//
//  Created by Sergey Muravev on 08.12.2022.
//

import UIKit
import SATrackingSDK

class ViewController: UIViewController {

    @IBAction func onAddToCart() {
        var event = AddToCart()
        event.page = "page"
        event.add(
            id: "id",
            name: "name",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 0.5
        )

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onPurchase() {
        var event = Purchase()
        event.page = "page"
        event.add(
            id: "id",
            name: "name",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 3.0
        )

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onStartView() {
        var event = StartView()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onStopView() {
        var event = StopView()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"
        event.value = 1.0

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onViewing() {
        var event = Viewing()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"
        event.value = 1.0

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onSearch() {
        var event = Search()
        event.page = "page"
        event.value = "value"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onAdImp() {
        var event = AdImp()
        event.placement_id = "placement_id"
        event.page = "page"
        event.href = "href"
        event.height = 100
        event.width = 100
        event.category = "category"
        event.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onAdClick() {
        var event = AdClick()
        event.placement_id = "placement_id"
        event.page = "page"
        event.href = "href"
        event.height = 100
        event.width = 100
        event.category = "category"
        event.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onScroll() {
        var event = Scroll()
        event.value = 1.0
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onClick() {
        var event = Click()
        event.value = "value"
        event.page = "page"

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onAddToCartCustomParams() {
        var event = AddToCart()
        event.page = "page"
        event.add(
            id: "id1",
            name: "name1",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 0.5,
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        event.add(
            id: "id2",
            name: "name2",
            price: 2.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onPurchaseCustomParams() {
        var event = Purchase()
        event.page = "page"
        event.add(
            id: "id1",
            name: "name1",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 3.0,
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        event.add(
            id: "id2",
            name: "name2",
            price: 2.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onStartViewCustomParams() {
        var event = StartView()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onStopViewCustomParams() {
        var event = StopView()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"
        event.value = 1.0
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onViewingCustomParams() {
        var event = Viewing()
        event.id = "id"
        event.name = "name"
        event.page = "page"
        event.category = "category"
        event.subcategory = "subcategory"
        event.value = 1.0
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onSearchCustomParams() {
        var event = Search()
        event.page = "page"
        event.value = "value"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onAdImpCustomParams() {
        var event = AdImp()
        event.placement_id = "placement_id"
        event.page = "page"
        event.href = "href"
        event.height = 100
        event.width = 100
        event.category = "category"
        event.subcategory = "subcategory"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }

    @IBAction func onAdClickCustomParams() {
        var event = AdClick()
        event.placement_id = "placement_id"
        event.page = "page"
        event.href = "href"
        event.height = 100
        event.width = 100
        event.category = "category"
        event.subcategory = "subcategory"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }


    @IBAction func onScrollCustomParams() {
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
    }

    @IBAction func onClickCustomParams() {
        var event = Click()
        event.value = "value"
        event.page = "page"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: event)
    }
}
