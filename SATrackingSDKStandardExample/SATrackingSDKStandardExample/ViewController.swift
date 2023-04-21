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
            items: [
                AddToCartItem(
                    sku: SKU(
                        skuId: "1",
                        skuName: "Lego",
                        price: 35.0,
                        currency: "RUB"
                    ),
                    deltaQuantity: 1.0,
                    quantity: 2.0,
                    category: [
                        Category(
                            categoryId: "1",
                            categoryName: "Category Name",
                            children: [
                                Category(
                                    categoryId: "11",
                                    categoryName: "SubCategory Name"
                                )
                            ]
                        )
                    ]
                ),
                AddToCartItem(
                    sku: SKU(
                        skuId: "2",
                        skuName: "Ozone"
                    ),
                    deltaQuantity: 1.0,
                    quantity: 2.0
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onPurchase() {
        let event = Purchase(
            items: [
                PurchaseItem(
                    sku: SKU(
                        skuId: "1",
                        skuName: "Lego",
                        price: 35.0,
                        currency: "RUB"
                    ),
                    quantity: 2.0,
                    category: [
                        Category(
                            categoryId: "1",
                            categoryName: "Category Name",
                            children: [
                                Category(
                                    categoryId: "11",
                                    categoryName: "SubCategory Name"
                                )
                            ]
                        )
                    ]
                ),
                PurchaseItem(
                    sku: SKU(
                        skuId: "2",
                        skuName: "Ozone"
                    ),
                    quantity: 2.0
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStartView() {
        let event = StartView(
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStopView() {
        let event = StopView(
            contentId: "1",
            contentName: "Lego",
            value: 0.5,
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onSearch() {
        let event = Search(
            value: "Pampers",
            filter: [
                "age": ["0-1", "1-3"],
                "sex": ["m"]
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdImp() {
        let event = AdImp(
            placementId: "1",
            width: 240,
            height: 300,
            clickURL: "https://test.com",
            adType: .banner,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdClick() {
        let event = AdClick(
            placementId: "1",
            width: 240,
            height: 300,
            clickURL: "https://test.com",
            adType: .banner,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onScroll() {
        let event = Scroll(
            value: 0.6,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onClick() {
        let event = Click(
            value: "start registration",
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAddToCartCustomParams() {
        let event = AddToCart(
            items: [
                AddToCartItem(
                    sku: SKU(
                        skuId: "1",
                        skuName: "Lego",
                        price: 35.0,
                        currency: "RUB"
                    ),
                    deltaQuantity: 1.0,
                    quantity: 2.0,
                    category: [
                        Category(
                            categoryId: "1",
                            categoryName: "Category Name",
                            children: [
                                Category(
                                    categoryId: "11",
                                    categoryName: "SubCategory Name"
                                )
                            ]
                        )
                    ],
                    customParams: [
                        "custom_param1": "value1",
                        "custom_param2": "value2"
                    ]
                ),
                AddToCartItem(
                    sku: SKU(
                        skuId: "2",
                        skuName: "Ozone"
                    ),
                    deltaQuantity: 1.0,
                    quantity: 2.0
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onPurchaseCustomParams() {
        let event = Purchase(
            items: [
                PurchaseItem(
                    sku: SKU(
                        skuId: "1",
                        skuName: "Lego",
                        price: 35.0,
                        currency: "RUB"
                    ),
                    quantity: 2.0,
                    category: [
                        Category(
                            categoryId: "1",
                            categoryName: "Category Name",
                            children: [
                                Category(
                                    categoryId: "11",
                                    categoryName: "SubCategory Name"
                                )
                            ]
                        )
                    ],
                    customParams: [
                        "custom_param1": "value1",
                        "custom_param2": "value2"
                    ]
                ),
                PurchaseItem(
                    sku: SKU(
                        skuId: "2",
                        skuName: "Ozone"
                    ),
                    quantity: 2.0
                )
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStartViewCustomParams() {
        let event = StartView(
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onStopViewCustomParams() {
        let event = StopView(
            contentId: "1",
            contentName: "Lego",
            value: 0.5,
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onSearchCustomParams() {
        let event = Search(
            value: "Pampers",
            filter: [
                "age": ["0-1", "1-3"],
                "sex": ["m"]
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdImpCustomParams() {
        let event = AdImp(
            placementId: "1",
            width: 240,
            height: 300,
            clickURL: "https://test.com",
            adType: .banner,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onAdClickCustomParams() {
        let event = AdClick(
            placementId: "1",
            width: 240,
            height: 300,
            clickURL: "https://test.com",
            adType: .banner,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onScrollCustomParams() {
        let event = Scroll(
            value: 0.6,
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }

    @IBAction func onClickCustomParams() {
        let event = Click(
            value: "start registration",
            contentId: "1",
            contentName: "Lego",
            sku: SKU(
                skuId: "1",
                skuName: "Lego",
                price: 35.0,
                currency: "RUB"
            ),
            category: [
                Category(
                    categoryId: "1",
                    categoryName: "Category Name",
                    children: [
                        Category(
                            categoryId: "11",
                            categoryName: "SubCategory Name"
                        )
                    ]
                )
            ],
            customParams: [
                "custom_param1": "value1",
                "custom_param2": "value2"
            ]
        )
        TechTracker.shared.event(event: event)
    }
}
