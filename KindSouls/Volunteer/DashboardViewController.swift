//
//  DashboardViewController.swift
//  KindSouls
//
//  Created by Kumar, Dhuruw on 3/6/17.
//  Copyright © 2017 Mohit. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController,UICollectionViewDataSource {
    
    var arrayModelDashboardVolunteer = [ModelDashboardVolunteer]()

    @IBOutlet weak var collctnViewDasboard: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collctnViewDasboard.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vc = collctnViewDasboard.dequeueReusableCell(withReuseIdentifier: "volunteerdashboardcell", for: <#T##IndexPath#>) as! CustomCellVolunteerDashboard
        vc.labelVolunteerDashboard.text = arrayModelDashboardVolunteer[indexPath.row]
        
        return vc
    }


}
