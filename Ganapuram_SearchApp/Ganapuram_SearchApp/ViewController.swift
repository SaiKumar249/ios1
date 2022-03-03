//
//  ViewController.swift
//  Ganapuram_SearchApp
//
//  Created by Sai Kumar Ganapuram on 03/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var imageName: UILabel!
    
    @IBOutlet weak var searchButtonAction: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    var arr = [["Hero1","Hero2","Hero3","Hero4","Hero5"],["Bike1","Bike2","Bike3","Bike4","Bike5"],["Car1","Car2","Car3","Car4","Car5",],["error","bz"]]
    
    var actor_keywords = ["actor","actors","hero","film"]
    
    var bike_keywords = ["bike","bikes","r15","Motor cycle"]
    
    var car_keywords = ["car","cars", "four wheeler","mustang"]
    
    var topic = 0
    var imag1:Int!
    var imag2:Int!
    var imag3:Int!
    var name1:Int!
    var name2:Int!
    var name3:Int!
    var text1:Int!
    var text2:Int!
    var text3:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        searchButtonAction.isEnabled = false
        resetButton.isHidden = true
        resultImage.image = UIImage(named: arr[3][1])
        topicInfoText.text = nil
        imageName.text = nil
        if(searchTextField.text==""){
            searchButtonAction.isEnabled = false
        }
    }
    
    @IBAction func searchTextField(_ sender: UITextField) {
        searchButtonAction.isEnabled = true
        if(sender.text == ""){
            searchButtonAction.isEnabled = false
            
        }
        else{
            showPrevImagesBtn.isEnabled = false
            showNextImagesBtn.isEnabled = false
            searchButtonAction.isEnabled = true
            resetButton.isHidden = false
        }

    }
    
    
    var actor_array = [["Shah Rukh Khan","Naveen","Abbas","Vishnu","Mohan babu"],["Shah Rukh Khan born 2 November 1965), also known by the initialism SRK, is an Indian actor, film producer, and television personality who works in Hindi films. Referred to in the media as the Baadshah of Bollywood (in reference to his 1999 film Baadshah), King of Bollywood and King Khan, he has appeared in more than 80 films, and earned numerous accolades, including 14 Filmfare Awards. The Government of India has awarded him the Padma Shri, and the Government of France has awarded him the Ordre des Arts et des Lettres and the Legion of Honour.","Vadde Naveen is an Indian actor and producer known for his works in Telugu films. His father Vadde Ramesh was a film producer.He started his career in 1997 in a supporting role. Although his first film released was Korukunna Priyudu, his first movie as an actor was Kranthi, which was produced by his father under their home banner. However Kranthi went unreleased, so Korukunna Priyudu became his debut film. He starred in around 30 films as a protagonist.[1] After a hiatus, Vadde Naveen played a negative role in Attack.","Abbas (born 21 May 1975 as Abbas Ali) is a former Indian actor and model from Kolkata, who has predominantly appeared in Tamil and Telugu films, and a few films in Malayalam, Hindi and Kannada. He made his debut with Kadhir's Kadhal Desam in 1996.","Manchu Vishnu Vardhan Babu (born 23 November 1982) is an Indian actor and producer known for his works in Telugu cinema and television. Manchu had a brief stint as a child artist with the 1985 film Ragile Gundelu. Years later, he starred in the 2003 Telugu action film Vishnu, for which he won the Filmfare Best Male Debut.","Manchu Bhakthavatsalam Naidu, credited and also known as Mohan Babu, is an Indian actor and producer known for his works predominantly in Telugu cinema. An alumnus of the Madras Film Institute, Mohan Babu has acted in more than 500 films in lead, supporting and a variety of roles."]]
    
    var bike_array = [["Activa","Vespa","Kenetic","Chetak","XL"],["The Honda Activa is a motor scooter made by Honda Motorcycle and Scooter India (HMSI). It was launched in India in May 1999. Production in Mexico began in 2004.TVS Jupiter scooter of TVS Motors gives a tough competition to Honda Activa in India.[2] It is a 109/125 cc, 7 bhp (5.2 kW) scooter. The vehicle has the option of kick- and self-start.","Vespa (Italian pronunciation: [ˈvɛspa]) is an Italian luxury brand of scooter manufactured by Piaggio. The name means wasp in Italian. The Vespa has evolved from a single model motor scooter manufactured in 1946 by Piaggio & Co. S.p.A. of Pontedera, Italy to a full line of scooters and one of seven companies today owned by Piaggio.","Kinetic Honda was a joint venture between Kinetic Engineering Limited, India and Honda Motor Company, Japan. Kinetic was the first company to have a joint venture with HMSI. The partnership operated from 1984 to 1998, manufacturing two-stroke scooters in India. In 1998, the joint venture was terminated after which Kinetic Engineering continued to sell the models under the brand name Kinetic until 2008 when the interests were sold to Mahindra. Mahindra later wound up their two wheeler business, owing to poor sales.","The Bajaj Chetak is an Indian-made motor scooter produced by the Bajaj Auto company from 1972 to 2006.[2] The Chetak is named after Chetak, the legendary horse of the Indian ruler Maharana Pratap.","TVS XL100 Heavy Duty is a moped bike available at a starting price of Rs. 44,506 in India. It is available in 4 variants and 8 colours with top variant price starting from Rs. 53,586. The TVS XL100. Heavy Duty is powered by 99.7cc BS6 engine which develops a power of 4.3 bhp and a torque of 6.5 Nm."]]

    var car_array = [["Carry","Jeep","Nano","800","Ambassador"],["The Suzuki Carry is a kei truck produced by the Japanese automaker Suzuki. The microvan version was originally called the Carry van until 1982 when the passenger van versions were renamed as the Suzuki.","Jeep is an American automobile marque, now owned by multi-national corporation Stellantis.[3][4] Jeep has been part of Chrysler since 1987, when Chrysler acquired the Jeep brand, along with remaining assets, from its previous owner American Motors Corporation (AMC).","The Tata Nano is a compact city car that was manufactured and marketed by Indian automaker Tata Motors over a single generation, primarily in India, as an inexpensive rear-engined hatchback intended to appeal to current riders of motorcycles and scooters — with a launch price of ₹1,00,000 or US$2,500 on 10 January 2008.","The Maruti Suzuki 800 is a small city car that was manufactured by Maruti Suzuki in India from 1983 to 2014. The first generation (SS80) was based on the 1979 Suzuki Alto and had an 800 cc F8B engine, hence the moniker.","The Hindustan Ambassador was an automobile manufactured by Hindustan Motors of India, with production from 1958 to 2014 with improvements and changes over its production lifetime. The Ambassador was based on the Morris Oxford series III model, first made by Morris Motors Limited at Cowley, Oxford in the United Kingdom from 1956 to 1959."]]
    
    
    
    @IBAction func searchButtonActionAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        showPrevImagesBtn.isHidden = false
        showNextImagesBtn.isHidden = false
        showPrevImagesBtn.isEnabled = false
        showNextImagesBtn.isEnabled = false
        resetButton.isEnabled = true
        if(actor_keywords.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            imageName.text = actor_array[0][name1]
            topic = 1
            topicInfoText.text = actor_array[1][text1]
        }
        else if(bike_keywords.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            imageName.text = bike_array[0][name2]
            topic = 2
            topicInfoText.text = bike_array[1][text2]
        }
        else if(car_keywords.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            imageName.text = car_array[0][name3]
            topic = 3
            topicInfoText.text = car_array[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][0])

            topicInfoText.text = nil
            imageName.text = nil
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
            resetButton.isEnabled = true
        }
        
        
    }
    
    @IBAction func showPrevImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 -= 1
            name1 -= 1
            text1 -= 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 -= 1
            name2 -= 1
            text2 -= 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 -= 1
            name3 -= 1
            text3 -= 1
            dataUpdate(imgNo: imag3)
        }
        
    }
    
    @IBAction func showNextImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 += 1
            name1 += 1
            text1 += 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 += 1
            name2 += 1
            text2 += 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 += 1
            name3 += 1
            text3 += 1
            dataUpdate(imgNo: imag3)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        resultImage.image = UIImage(named: arr[3][1])
        topicInfoText.text = nil
        imageName.text = nil
        searchTextField.text = nil
        resetButton.isHidden = true
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        topic = 0
        if(searchTextField.text==""){
            searchButtonAction.isEnabled = false
        }
        
        
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor_array[0][name1]
                topicInfoText.text = actor_array[1][text1]
            }
            else if(imag1 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor_array[0][name1]
                topicInfoText.text = actor_array[1][text1]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor_array[0][name1]
                topicInfoText.text = actor_array[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = bike_array[0][name2]
                topicInfoText.text = bike_array[1][text2]
            }
            else if(imag2 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = bike_array[0][name2]
                topicInfoText.text = bike_array[1][text2]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = bike_array[0][name2]
                topicInfoText.text = bike_array[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = car_array[0][name3]
                topicInfoText.text = car_array[1][text3]
            }
            else if(imag3 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = car_array[0][name3]
                topicInfoText.text = car_array[1][text3]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = car_array[0][name3]
                topicInfoText.text = car_array[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}
