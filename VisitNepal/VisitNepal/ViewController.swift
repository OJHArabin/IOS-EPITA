//
//  ViewController.swift
//  VisitNepal
//
//  Created by Rabin on 28/12/2017.
//  Copyright © 2017 Rabin. All  reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var cellTitle:String?
    var cellDesc:String?
    var cellImage:UIImage?
    
    var places = ["Lumbini","Mustang","Ilam","Fewalake","Everest","PatanDurbarSquare","TilichoLake","ChitwanNationalpark"]
    
    var placeDesc=["Lumbinī is a Buddhist pilgrimage site in the Rupandehi District of Nepal. It is the place where, according to Buddhist tradition, Queen Mayadevi gave birth to Siddhartha Gautama in 563 BCE.","Mustang trek requires a minimum of 9 days, starting and ending in Kagbeni. This allows the trek to be completed within the 10-day period that the permit allows. The route generally follows the Kali Gandaki valley but, occasionally climbs high above the valley walls.","Ilam is a district in the Eastern part of Nepal, famous for its beautiful tea gardens, breathtaking landscapes and refreshing mountain air","Phewa Tal (Phewa Lake or Fewa Lake) is a lake in Nepal and is the biggest lake in the Pokhara. It is famous for having a lot of domestic and international tourists who visit and sail, swim and fish on the Phewa lake. The shadow of a nearby white mountain can be seen on the surface of the lake.","Mount Everest, known in Nepali as Sagarmāthā and in Tibetan as Chomolungma, is Earth's highest mountain above sea level, located in the Mahalangur Himal sub-range of the Himalayas.","Patan Durbar Square is situated at the centre of the city of Lalitpur in Nepal. It is one of the three Durbar Squares in the Kathmandu Valley, all of which are UNESCO World Heritage Sites.","Tilicho Lake is a lake located in the Manang district of Nepal, 55 kilometres (34 mi) as the crow flies from the city of Pokhara. It is situated at an altitude of 4,919 metres (16,138 ft) in the Annapurna range of the Himalayas and is known as the highest lake for its size in the world, even though there are lakes at higher altitude even in Nepal.[1] Another source lists the altitude of Lake Tilicho as being 4,949 metres (16,237 ft).","Chitwan National Park is a preserved area in the Terai Lowlands of south-central Nepal, known for its biodiversity. Its dense forests and grassy plains are home to rare mammals like one-horned rhinos and Bengal tigers."]
    
    var myIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customeCell") as! CustomTableViewCell
        
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        
        cell.placelbl.text=places[indexPath.row]
        cell.placeImage.image=UIImage(named: places[indexPath.row])
        
        cell.placeImage.layer.cornerRadius = cell.placeImage.frame.height / 2
        return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate=self
        tableView.dataSource=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        cellTitle = places[indexPath.row]
        cellDesc  = placeDesc[indexPath.row]
        cellImage  = UIImage(named: places[indexPath.row])
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segue"){
            let detailVC:DetailViewController = segue.destination as! DetailViewController
            
            
            detailVC.titleText = cellTitle
            detailVC.descText = cellDesc
            detailVC.imagePlace = cellImage
        }
    }

}

