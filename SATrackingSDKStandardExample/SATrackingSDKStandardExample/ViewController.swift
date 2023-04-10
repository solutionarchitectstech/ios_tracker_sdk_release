//
// Copyright © Gusev Andrew, Emelianov Andrew, Spinov Dmitry [collectively referred as the Authors], 2017 - All Rights Reserved.
// [NOTICE: All information contained herein is, and remains the property of the Authors.]
// The intellectual and technical concepts contained herein are proprietary to the Authors
// and may be covered by any existing patents of any country in the world, patents in
// process, and are protected by trade secret or copyright law.
//
// Dissemination of this information or reproduction of this material is strictly forbidden unless prior
// written permission is obtained from the Authors. Access to the source code contained herein is hereby forbidden
// to anyone except persons (natural person, corporate or unincorporated body, whether or not having a separate
// legal personality, and that person’s personal representatives, and successors)
// the Authors have granted permission and who have executed Confidentiality and Non-disclosure agreements
// explicitly covering such access.
//
// The copyright notice above does not provide evidence of any actual or intended publication or disclosure
// of this source code, which in
//

import UIKit
import SATrackingSDKStandard

class ViewController: UIViewController {

    @IBAction func onAddToCart() {
        let event = AddToCart(
            page: "page",
            items: [
                AddToCartItem(
                    id: "id",
                    name: "name",
                    price: 1.0,
                    currency: "USD",
                    category: "category",
                    subcategory: "subcategory",
                    deltaQuantity: 1.0,
                    quantity: 2.5
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onPurchase() {
        let event = Purchase(
            page: "page",
            items: [
                PurchaseItem(
                    id: "id",
                    name: "name",
                    price: 1.0,
                    currency: "USD",
                    category: "category",
                    subcategory: "subcategory",
                    quantity: 3.0
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStartView() {
        let event = StartView(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStopView() {
        let event = StopView(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            value: 1.0,
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onViewing() {
        let event = Viewing(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            value: 1.0,
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onSearch() {
        let event = Search(
            value: "value",
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdImp() {
        let event = AdImp(
            placementId: "placementId",
            width: 100,
            height: 100,
            href: "href",
            category: "category",
            subcategory: "subcategory",
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdClick() {
        let event = AdClick(
            placementId: "placementId",
            width: 100,
            height: 100,
            href: "href",
            category: "category",
            subcategory: "subcategory",
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onScroll() {
        let event = Scroll(
            category: "category",
            subcategory: "subcategory",
            value: 1.0,
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onClick() {
        let event = Click(
            value: "value",
            page: "page"
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAddToCartCustomParams() {
        let event = AddToCart(
            page: "page",
            items: [
                AddToCartItem(
                    id: "id1",
                    name: "name1",
                    price: 1.0,
                    currency: "USD",
                    category: "category1",
                    subcategory: "subcategory1",
                    deltaQuantity: 1.0,
                    quantity: 2.5,
                    customParams: [
                        "custom_param_1_1": "value_1_1",
                        "custom_param_1_2": "value_1_2"
                    ]
                ),
                AddToCartItem(
                    id: "id2",
                    name: "name2",
                    price: 2.0,
                    currency: "USD",
                    category: "category2",
                    subcategory: "subcategory2",
                    deltaQuantity: 1.0,
                    quantity: 1.0,
                    customParams: [
                        "custom_param_2_1": "value_2_1",
                        "custom_param_2_2": "value_2_2"
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onPurchaseCustomParams() {
        let event = Purchase(
            page: "page",
            items: [
                PurchaseItem(
                    id: "id1",
                    name: "name1",
                    price: 1.0,
                    currency: "USD",
                    category: "category",
                    subcategory: "subcategory",
                    quantity: 3.0,
                    customParams: [
                        "custom_param_1_1": "value_1_1",
                        "custom_param_1_2": "value_1_2"
                    ]
                ),
                PurchaseItem(
                    id: "id2",
                    name: "name2",
                    price: 2.0,
                    currency: "USD",
                    category: "category",
                    subcategory: "subcategory",
                    quantity: 1.0,
                    customParams: [
                        "custom_param_2_1": "value_2_1",
                        "custom_param_2_2": "value_2_2"
                    ])
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStartViewCustomParams() {
        let event = StartView(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStopViewCustomParams() {
        let event = StopView(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            value: 1.0,
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onViewingCustomParams() {
        let event = Viewing(
            id: "id",
            name: "name",
            category: "category",
            subcategory: "subcategory",
            value: 1.0,
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onSearchCustomParams() {
        let event = Search(
            value: "value",
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdImpCustomParams() {
        let event = AdImp(
            placementId: "placementId",
            width: 100,
            height: 100,
            href: "href",
            category: "category",
            subcategory: "subcategory",
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdClickCustomParams() {
        let event = AdClick(
            placementId: "placementId",
            width: 100,
            height: 100,
            href: "href",
            category: "category",
            subcategory: "subcategory",
            page: "page",
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
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

        TechTracker.shared.event(event: event)
    }

    @IBAction func onClickCustomParams() {
        var event = Click()
        event.value = "value"
        event.page = "page"
        event.customParams = [
            "custom_param1": "value1",
            "custom_param2": "value2"
        ]

        TechTracker.shared.event(event: event)
    }
}
