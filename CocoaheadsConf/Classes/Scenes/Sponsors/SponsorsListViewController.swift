//
//  SponsorsListViewController.swift
//  CocoaheadsConf
//
//  Created by Bruno Bilescky on 22/11/16.
//  Copyright © 2016 Cocoaheads. All rights reserved.
//

import UIKit

class SponsorsListViewController: UIViewController {

    var cache: Cache
    
    var listView: SponsorsListView? {
        return self.view as? SponsorsListView
    }
    
    init(with cache: Cache) {
        self.cache = cache
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.cache = Cache.default
        super.init(coder: aDecoder)
    }
    
    override func loadView() {
        super.loadView()
        self.view = SponsorsListView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor(hexString: "004D40")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Patrocinadores"
        self.listView?.state.sponsors = cache.sponsors
        
    }

}