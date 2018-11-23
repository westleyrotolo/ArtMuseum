//
//  DetailViewController.swift
//  artmuseum
//
//  Created by Westley Rotolo on 17/06/17.
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//
import AVFoundation
import UIKit
import CoreData
class DetailViewController: UIViewController, AVSpeechSynthesizerDelegate {
    var art : Artwork = Artwork("", "", "", "", "", "")
    var synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    var numberWord : Int = 0

    
    @IBOutlet weak var sliderVoice: UISlider!
    @IBInspectable var cornerRadius: CGFloat = 5
    var myArtWork : Artwork?
    @IBAction func buttonUp(_ sender: Any) {
        UIView.animate(withDuration: 0.5, delay: 0,  animations: {
            self.labelReaction.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.labelReaction.alpha = 0
        },completion: {[weak self] finished in
            self?.labelReaction.text=""
            self?.labelReaction.layer.removeAllAnimations()
            self?.labelReaction.alpha = 1
            self?.viewReaction.isHidden = true
            self?.labelReaction.transform = CGAffineTransform(scaleX: 1, y: 1)
            
        })
        let button = sender as! UIButton
        let b : Bool =  fetchUpdate(r: button.currentTitle!)
        if !b {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let entity =  NSEntityDescription.entity(forEntityName: "Reactions", in: context)
            let transc = NSManagedObject(entity: entity!, insertInto: context)
            transc.setValue(button.currentTitle!, forKey: "reaction")
            transc.setValue(art.id, forKey: "idArtwork")
            transc.setValue(AppDelegate.museum.name, forKey: "museum")
            transc.setValue(art.title, forKey: "name")
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
      
    }
    @IBOutlet weak var viewReaction: UIView!
    @IBOutlet weak var textView: UILabel!
    @IBAction func button_Outside(_ sender: Any) {
        viewReaction.isHidden = true
        labelReaction.text=""
        labelReaction.layer.removeAllAnimations()
        self.labelReaction.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
      //  let mutableAttributedString = NSMutableAttributedString(string: textView.text!)
        
        //let nsrange : NSRange = NSRange.init(location: characterRange.location, length: characterRange.length)
       // mutableAttributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: nsrange)
        //textView.attributedText = mutableAttributedString
      //  print("loc: \(characterRange.location)")
          sliderVoice.value = sliderVoice.value+1 
        
    }
    
    @IBAction func sliderVoice_touchup(_ sender: Any) {
        let text: String = textView.text!
        print(sliderVoice.value)
        let index = text.index(textView.text!.startIndex, offsetBy: Int(sliderVoice.value))
        let newtext: String =  text.substring(from: index)
        myUtterance = AVSpeechUtterance(string: newtext)
        //myUtterance = AVSpeechUtterance(string: textView.text!)
        var voiceToUse: AVSpeechSynthesisVoice?
        for voice in AVSpeechSynthesisVoice.speechVoices() {
            if #available(iOS 9.0, *) {
                if voice.name == "Samantha" {
                    voiceToUse = voice
                }
            }
        }
        myUtterance.voice = voiceToUse
        myUtterance.rate = 0.4
        synth.stopSpeaking(at: .word)
        synth.speak(myUtterance)
    }
    @IBAction func sliderVoice_ValueChanged(_ sender: Any) {

        
    }


  
    @IBAction func button_Down(_ sender: Any) {
        let button = sender as! UIButton
        self.labelReaction.alpha = 1
        labelReaction.transform = CGAffineTransform(scaleX: 1, y: 1)
        labelReaction.text = button.currentTitle!
        viewReaction.isHidden = false
        UIView.animate(withDuration: 0.5, delay: 0, options:  [.repeat, .autoreverse], animations: {
            self.labelReaction.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        },completion: nil)
        
    }
    @IBOutlet weak var labelReaction: UILabel!
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    override func viewWillDisappear(_ animated: Bool) {
        synth.stopSpeaking(at: .immediate)
        AppDelegate.coins = AppDelegate.coins+1
        UserDefaults.standard.set(AppDelegate.coins, forKey: "coins")
        
    }
    @IBAction func playButton_Action(_ sender: Any) {
        print(synth)
        if synth.isPaused {
            synth.continueSpeaking()
            
            playButton =  UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.pause, target: self, action: #selector(DetailViewController.playButton_Action(_:)))
            
        }
        else if synth.isSpeaking{
         
              playButton  =  UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.play, target: self, action: #selector(DetailViewController.playButton_Action(_:)))
            synth.pauseSpeaking(at: .word)
        }
        else {
        let btn =  UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.pause, target: self, action: #selector(DetailViewController.playButton_Action(_:)))
        playButton = btn  
        myUtterance = AVSpeechUtterance(string: textView.text!)
            var voiceToUse: AVSpeechSynthesisVoice?
            for voice in AVSpeechSynthesisVoice.speechVoices() {
                if #available(iOS 9.0, *) {
                    if voice.name == "Samantha" {
                        voiceToUse = voice
                    }
                } 
            }
        myUtterance.voice = voiceToUse
        myUtterance.rate = 0.4
       // myUtterance.rate = 0.5
        synth.delegate = self
        synth.speak(myUtterance)
        }
        
    }
    @IBOutlet weak var playButton: UIBarButtonItem!
    @IBOutlet weak var frameReactions: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: art.id)
        textView.text = art.text
        
        synth = AVSpeechSynthesizer()
        //fetchDelete()
        frameReactions.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetWidth)
        frameReactions.layer.cornerRadius = cornerRadius
        frameReactions.layer.shadowColor = shadowColor?.cgColor
        frameReactions.layer.masksToBounds = false
        frameReactions.layer.shadowOpacity = shadowOpacity
        let components = textView.text!.components(separatedBy: .whitespacesAndNewlines)
        var words = components.filter { !$0.isEmpty }
        var sl: Int = Int(sliderVoice.value)
        for index in 0..<sl {
            words.remove(at: 0)
        }
        
        numberWord = words.count
        sliderVoice.maximumValue = Float(words.count)
        sliderVoice.minimumValue = 0
        sliderVoice.value = 0
      
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        fetchResult()
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
   
        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        
    }
    var reactions : [MyReactions] = [MyReactions]()
    func fetchResult(){
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Reactions")
        do {
            let x = try managedContext.fetch(fetchRequest)
        print("COREDATA: \(x.count)")
            for i in x as [NSManagedObject]{
                let r = i.value(forKey: "reaction") as! String
                let id = i.value(forKey: "idArtwork") as! String
                let museum = i.value(forKey: "museum") as! String
                let name = i.value(forKey: "name") as! String
                let reaction: MyReactions = MyReactions(r: r, i: id, m: museum, n: name)
                reactions.append(reaction)
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
    }
    func fetchUpdate(r: String) -> Bool{
        var returnType = false
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return false
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Reactions")
        do {
            let x = try managedContext.fetch(fetchRequest)
            print("COREDATA: \(x.count)")
            for i in x as [NSManagedObject]{
                let id = i.value(forKey: "idArtwork") as! String
                if (id == art.id){
                    i.setValue(r, forKey: "reaction")
                    returnType = true
                }
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if returnType {
        do {
            try managedContext.save()
            print("saved!")
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        } catch {
            
        }
        }
        return returnType
    }
    func fetchDelete() -> Bool{
        var returnType = false
        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return false
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Reactions")
        do {
            let x = try managedContext.fetch(fetchRequest)
            print("COREDATA: \(x.count)")
            for i in x as [NSManagedObject]{
                managedContext.delete(i)
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        do {
            try managedContext.save()
            print("saved!")
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        } catch {
            
        }
        return returnType
    }
    
    /*NSLayoutConstraint(
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
/*
 
 UIView.animate(withDuration: 0.5, delay:0, option: [.repeat, .autoreverse], animations: {<#T##() -> Void#>
 
 
 
 let blurEffect = UIBlurEffect(style: .dark)
 
 viewReaction.insertSubview(blurredEffectView, at: 0)
 let blurredEffectView = UIVisualEffectView(effect: blurEffect)
 blurredEffectView.frame = viewReaction.frame
 */
