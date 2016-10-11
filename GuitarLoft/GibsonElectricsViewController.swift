import UIKit


class GibsonElectricsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var dataStore: Datastore!
    
    init(dataStore: Datastore) {
        self.dataStore = dataStore
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dismissBarButton = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(dismissGibsonElectricsViewController))
        navigationItem.rightBarButtonItem = dismissBarButton
        
        view.backgroundColor = UIColor.blueColor()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .Vertical
        layout.itemSize = CGSize(width: view.frame.width / 1 - 20, height: view.frame.width / 1 - 10)
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(GibsonElectricCell.self, forCellWithReuseIdentifier: "GibsonElectricCell")
        collectionView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionView)
        
    }
    
    func dismissGibsonElectricsViewController() {
        
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataStore.gibsonElectric.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("GibsonElectricCell", forIndexPath: indexPath) as! GibsonElectricCell
        cell.configureWithGibsonGuitar(dataStore.gibsonElectric[indexPath.row])
        cell.configureGuitarBrand(dataStore.gibsonGuitars[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        
        return 4
    }
    
    
    
}
