//
//  ViewController.swift
//  SATrackingSDKExample
//
//  Created by Sergey Muravev on 08.12.2022.
//

import UIKit
import SATrackingSDK

class ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onAddToCart() {
        var addtocart = AddToCart()
        addtocart.page = "page"
        addtocart.add(
            id: "id",
            name: "name",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 0.5
        )

        TechTracker.sharedTracker.event(event: addtocart)
    }

    @IBAction func onPurchase() {
        var purchase = Purchase()
        purchase.page = "page"
        purchase.add(
            id: "id",
            name: "name",
            price: 1.0,
            currency: "USD",
            category: "category",
            subcategory: "subcategory",
            quantity: 3.0
        )

        TechTracker.sharedTracker.event(event: purchase)
    }

    @IBAction func onStartView() {
        var startView = StartView()
        startView.id = "id"
        startView.name = "name"
        startView.page = "page"
        startView.category = "category"
        startView.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: startView)
    }

    @IBAction func onStopView() {
        var stopView = StopView()
        stopView.id = "id"
        stopView.name = "name"
        stopView.page = "page"
        stopView.category = "category"
        stopView.subcategory = "subcategory"
        stopView.value = 1.0

        TechTracker.sharedTracker.event(event: stopView)
    }

    @IBAction func onViewing() {
        var viewing = Viewing()
        viewing.id = "id"
        viewing.name = "name"
        viewing.page = "page"
        viewing.category = "category"
        viewing.subcategory = "subcategory"
        viewing.value = 1.0

        TechTracker.sharedTracker.event(event: viewing)
    }

    @IBAction func onSearch() {
        var search = Search()
        search.page = "page"
        search.value = "value"

        TechTracker.sharedTracker.event(event: search)
    }

    @IBAction func onAdImp() {
        var adImp = AdImp()
        adImp.placement_id = "placement_id"
        adImp.page = "page"
        adImp.href = "href"
        adImp.height = 100
        adImp.width = 100
        adImp.category = "category"
        adImp.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: adImp)
    }

    @IBAction func onAdClick() {
        var adClick = AdClick()
        adClick.placement_id = "placement_id"
        adClick.page = "page"
        adClick.href = "href"
        adClick.height = 100
        adClick.width = 100
        adClick.category = "category"
        adClick.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: adClick)
    }


    @IBAction func onScroll() {
        var scroll = Scroll()
        scroll.value = 1.0
        scroll.page = "page"
        scroll.category = "category"
        scroll.subcategory = "subcategory"

        TechTracker.sharedTracker.event(event: scroll)
    }

    @IBAction func onClick() {
        var click = Click()
        click.value = "value"
        click.page = "page"

        TechTracker.sharedTracker.event(event: click)
    }

    @IBAction func onAddToCartCustomParams() {
        var addtocart = AddToCart()
        addtocart.page = "page"
        addtocart.add(
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
        addtocart.add(
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

        TechTracker.sharedTracker.event(event: addtocart)
    }

    @IBAction func onPurchaseCustomParams() {
        var purchase = Purchase()
        purchase.page = "page"
        purchase.add(
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
        purchase.add(
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

        TechTracker.sharedTracker.event(event: purchase)
    }

    @IBAction func onStartViewCustomParams() {
        var startView = StartView()
        startView.id = "id"
        startView.name = "name"
        startView.page = "page"
        startView.category = "category"
        startView.subcategory = "subcategory"
        startView.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: startView)
    }

    @IBAction func onStopViewCustomParams() {
        var stopView = StopView()
        stopView.id = "id"
        stopView.name = "name"
        stopView.page = "page"
        stopView.category = "category"
        stopView.subcategory = "subcategory"
        stopView.value = 1.0
        stopView.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: stopView)
    }

    @IBAction func onViewingCustomParams() {
        var viewing = Viewing()
        viewing.id = "id"
        viewing.name = "name"
        viewing.page = "page"
        viewing.category = "category"
        viewing.subcategory = "subcategory"
        viewing.value = 1.0
        viewing.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: viewing)
    }

    @IBAction func onSearchCustomParams() {
        var search = Search()
        search.page = "page"
        search.value = "value"
        search.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: search)
    }

    @IBAction func onAdImpCustomParams() {
        var adImp = AdImp()
        adImp.placement_id = "placement_id"
        adImp.page = "page"
        adImp.href = "href"
        adImp.height = 100
        adImp.width = 100
        adImp.category = "category"
        adImp.subcategory = "subcategory"
        adImp.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: adImp)
    }

    @IBAction func onAdClickCustomParams() {
        var adClick = AdClick()
        adClick.placement_id = "placement_id"
        adClick.page = "page"
        adClick.href = "href"
        adClick.height = 100
        adClick.width = 100
        adClick.category = "category"
        adClick.subcategory = "subcategory"
        adClick.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: adClick)
    }


    @IBAction func onScrollCustomParams() {
        var scroll = Scroll()
        scroll.value = 1.0
        scroll.page = "page"
        scroll.category = "category"
        scroll.subcategory = "subcategory"
        scroll.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: scroll)
    }

    @IBAction func onClickCustomParams() {
        var click = Click()
        click.value = "value"
        click.page = "page"
        click.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.sharedTracker.event(event: click)
    }
}
