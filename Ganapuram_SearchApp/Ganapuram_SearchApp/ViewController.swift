//
//  ViewController.swift
//  Ganapuram_SearchApp
//
//  Created by Sai Kumar Ganapuram on 3/3/22.
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
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["book1","book2","book3","book4","book5"],["animal1","animal2","animal3","animal4","animal5",],["bg","404"]]
    
    var actors = ["actor","actors","hero","tollywood","jrntr","prabhas","maheshbabu","pawankalyan","balakrishna","celebrity","hero","film"]
    
    var books = ["books","book","Hobbit","little prince","harry","harrypotter","tale of two city","red chamber","read","stories","reading"]
    
    var animals = ["animals","animal", "lion","elephant","rhino","buffalo","leopard","dog","cat","rabbit"]
    
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
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
        imageName.text = nil
    }
    
    @IBAction func searchTextField(_ sender: UITextField) {
        searchButtonAction.isEnabled = true
        if(sender.text == ""){
            searchButtonAction.isEnabled = false
            
        }
        else{
//            showPrevImagesBtn.isHidden = false
//            showNextImagesBtn.isHidden = false
            showPrevImagesBtn.isEnabled = false
            showNextImagesBtn.isEnabled = false
            searchButtonAction.isEnabled = true
            resetButton.isHidden = false
        }

    }
    
    
    var actor = [["Jr NTR","Prabhas","Mahesh Babu","Pawan Kalyan","Balakrishna"],["Nandamuri Taraka Rama Rao Jr. (born 20 May 1983), also known as Jr NTR or Tarak, is an Indian actor, singer, and television presenter who works in Telugu cinema. In his film career spanning 20 years, he has worked in over 30 films. Popularly referred as Young Tiger of Tollywood, Rama Rao has received two state Nandi Awards, two Filmfare Awards South and four CineMAA Awards. One of the highest paid Telugu film actors, he was ranked 28th in Forbes India Celebrity 100 list in 2018.","Uppalapati Venkata Suryanarayana Prabhas Raju (born 23 October 1979), known mononymously as Prabhas, is an Indian actor who works predominantly in Telugu cinema. One of the highest-paid actors in Indian cinema, Prabhas has featured in Forbes India's Celebrity 100 list three times since 2015 based on his income and popularity. He has received seven Filmfare Awards South nominations and is a recipient of the Nandi Award and the SIIMA Award.","Ghattamaneni Mahesh Babu (born 9 August 1975) is an Indian actor, producer, media personality, and philanthropist who works mainly in Telugu cinema. He has appeared in more than 25 films, and won several accolades including, eight Nandi Awards, five Filmfare South Awards, four South Indian International Movie Awards, three CineMAA Awards, and one IIFA Utsavam Award. He also owns the production house G. Mahesh Babu Entertainment.","Pawan Kalyan (born Konidela Kalyan Babu, 2 September 1968) is an Indian actor, director, screenwriter, stunt coordinator, philanthropist, and politician. His films are predominantly in Telugu cinema. Kalyan is the younger brother of actor-politician Chiranjeevi, and made his debut in the 1996 film Akkada Ammayi Ikkada Abbayi. He starred in Tholi Prema in 1998, which won the National Film Award for Best Feature Film in Telugu that year.","Nandamuri Balakrishna (born 10 June 1960), mononymously known as Balakrishna or Balayya, is an Indian actor, producer and politician. He appeared in more than 100 Telugu films over forty years in a variety of roles and established himself as one of the leading actors of Telugu cinema. He won three Nandi Awards and one South Indian International Movie Award. He is an elected member of the Andhra Pradesh Legislative Assembly from Hindupur constituency since 2019."]]
    
    var book = [["A Tale of Two Cities","The Hobbit","Harry Potter and the Philosopher's Stone","The Little Prince","Dream of the Red Chamber"],["A Tale of Two Cities is an 1859 historical novel by Charles Dickens, set in London and Paris before and during the French Revolution. The novel tells the story of the French Doctor Manette, his 18-year-long imprisonment in the Bastille in Paris, and his release to live in London with his daughter Lucie whom he had never met. The story is set against the conditions that led up to the French Revolution and the Reign of Terror.","The Hobbit, or There and Back Again is a children's fantasy novel by English author J. R. R. Tolkien. It was published in 1937 to wide critical acclaim, being nominated for the Carnegie Medal and awarded a prize from the New York Herald Tribune for best juvenile fiction. The book remains popular and is recognized as a classic in children's literature.","Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school, and with the help of his friends, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry's parents, but failed to kill Harry when he was just 15 months old.","The Little Prince (French: Le Petit Prince, pronounced [lə p(ə)ti pʁɛ̃s]) is a novella by French aristocrat, writer, and military aviator Antoine de Saint-Exupéry. It was first published in English and French in the United States by Reynal & Hitchcock in April 1943 and was published posthumously in France following liberation; Saint-Exupéry's works had been banned by the Vichy Regime. The story follows a young prince who visits various planets in space, including Earth, and addresses themes of loneliness, friendship, love, and loss. Despite its style as a children's book, The Little Prince makes observations about life, adults and human nature.[9]","Dream of the Red Chamber (Honglou Meng) or The Story of the Stone (Shitou Ji) is a novel composed by Cao Xueqin in the middle of the 18th century. One of the Four Great Classical Novels of Chinese literature, it is known for its psychological scope, and its observation of the world view, aesthetics, life-styles, and social relations of 18th-century China.[1]"]]

    var animal = [["African bush elephant","Black rhinoceros","African buffalo","Lion","Leopard"],["The African bush elephant (Loxodonta africana) is a very large herbivore with thick, almost hairless skin; a long, flexible, prehensile trunk; upper incisors forming long, curved, ivory tusks; and large, fan-shaped ears. Its closest living relative is the African forest elephant (Loxodonta cyclotis).","The black rhinoceros (Diceros bicornis) is a large herbivore with two upright horns on its nasal bridge. Its thick (1.5–5 cm), protective skin is formed from layers of collagen arranged in a lattice structure, and is very hard to puncture. Because it is now critically endangered, hunting is extremely limited.","The African buffalo (Syncerus caffer) is a large horned bovid. It is the only animal among the Big Five that is not on the “endangered” or “threatened” list.[11] The Cape buffalo (Syncerus caffer caffer) is considered by many to be the most dangerous to hunters of any of the Big Five.","The lion (Panthera leo) is a large, carnivorous feline found in Africa and northwest India. It has a short, tawny coat; a tufted tail; and, in the male, a heavy mane around the neck and shoulders. Lions are desirable to hunters because of the very real danger involved in hunting them.","The leopard (Panthera pardus) is a large, carnivorous feline. Its fur may be either black, or tawny with dark rosette-shaped markings. The leopard is considered the most difficult of the Big Five to hunt because of its nocturnal habits (it is most active between sunset and sunrise, although it may hunt during the day in some areas."]]
    
    
    
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
        if(actors.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            imageName.text = actor[0][name1]
            topic = 1
            topicInfoText.text = actor[1][text1]
        }
        else if(books.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            imageName.text = book[0][name2]
            topic = 2
            topicInfoText.text = book[1][text2]
        }
        else if(animals.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            imageName.text = animal[0][name3]
            topic = 3
            topicInfoText.text = animal[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
//            resultImage.image = nil
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
//        resultImage.image = UIImage(named: arr[3][0])
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
        
        
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
            else if(imag1 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = book[0][name2]
                topicInfoText.text = book[1][text2]
            }
            else if(imag2 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = book[0][name2]
                topicInfoText.text = book[1][text2]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = book[0][name2]
                topicInfoText.text = book[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
            }
            else if(imag3 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}

