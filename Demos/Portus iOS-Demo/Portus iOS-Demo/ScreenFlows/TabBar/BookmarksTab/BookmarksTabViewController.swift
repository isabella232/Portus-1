//
//  SecondTabViewController.swift
//  Portus iOS-Demo
//
//  Created by Andreas Link on 09.03.19.
//  Copyright © 2019 Jamit Labs. All rights reserved.
//

import Portus
import UIKit

protocol BookmarksTabViewControllerDelegate: AnyObject {}

class BookmarksTabViewController: UIViewController {
    weak var delegate: BookmarksTabViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction
    private func triggerColorDeeplink(_ button: UIButton) {
        Router.routeTo(RoutingTable.Static.colorDetail(withHexString: "#87FDA9"), routingStrategy: .alwaysFromRoot, animated: true)
    }

    @IBAction func modalFlowA() {
        Router.enter(Node(identifier: .a))
    }

    @IBAction func modalFlowB() {
        Router.enter(Node(identifier: .b))
    }

    @IBAction func modalFlowC() {
        Router.enter(Node(identifier: .c))
    }
}
