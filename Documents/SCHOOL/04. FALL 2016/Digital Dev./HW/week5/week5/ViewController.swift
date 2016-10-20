//
//  ViewController.swift
//  week5
//
//  Created by Kaitlyn Lippe on 10/7/16.
//  Copyright © 2016 Kait Lippe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return wordEmoji.count
        } else if section == 1 {
            return catEmoji.count
        } else if section == 2 {
            return handEmoji.count
        } else if section == 3 {
            return plantEmoji.count
        } else if section == 4 {
            return pinkEmoji.count
        } else if section == 5 {
            return foodEmoji.count
        } else if section == 6 {
            return zodiacEmoji.count
        } else {
            return mysteryEmoji.count
//            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell1")
            myCell?.textLabel?.text = wordEmoji[indexPath.row]
            return myCell!
        } else if indexPath.section == 1 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = catEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else if indexPath.section == 2 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = handEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else if indexPath.section == 3 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = plantEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else if indexPath.section == 4 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = pinkEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else if indexPath.section == 5 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = foodEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else if indexPath.section == 6 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            myCell?.textLabel?.text = zodiacEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = emojiCount[indexPath.row]
            return myCell!
        } else {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "cell3")
            myCell?.textLabel?.text = mysteryEmoji[indexPath.row]
            myCell?.detailTextLabel?.text = idkEmoji[indexPath.row]
            return myCell!
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        let myCGFloat = CGFloat(40)
        return myCGFloat
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Word Emojis"
        } else if section == 1 {
            return "Cat Face Emojis"
        } else if section == 2 {
            return "Hand Emojis"
        } else if section == 3 {
            return "Plant Emojis"
        } else if section == 4 {
            return "Pink Emojis"
        } else if section == 5 {
            return "Food Emojis"
        } else if section == 6 {
            return "Zodiac Emoji"
        } else {
            return "??????????????"
        }
    }
    
    
    let emojiCount = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
    
    let catEmoji = ["😸","😹","😺","😻","😼","😽","😾","😿","🙀"]
//    let catEmojiCount = ["happy", "joy", "heart eyes", "smirk", "kiss", "mad", "sad", "scared"]
    
    let handEmoji = ["🙌","👏","💅","👋","👍","👎","👌","👊","✊","✋","💪","🙏"]
    
    let plantEmoji = ["🌱","🌲","🌳","🌴","🌵","🌷","🌻","🌼","💐","🌾","🌿","🍃"]
    
    let pinkEmoji = ["❤️","💔","💕","💞","💓","💗","💖","💘","💝","💟","🌸","🌹","🌺"]
    
    let foodEmoji = ["🌽","🍋","🍌","🍍","🍔","🍕","🍜","🍝","🍞","🍟","🍦","🍮","🍯","🍳"]
    
    let wordEmoji = ["🆒","🆓","🆕","🆖","🆗","🆙"]
    
    let zodiacEmoji = ["♈️","♉️","♊️","♋️","♌️","♍️","♎️","♏️","♐️","♑️"]
    
    let mysteryEmoji = ["💯","🐔","💉","🚽","🔪","🗿","🌚","🚮"]
    let idkEmoji = ["100", "chicken", "syringe", "toilet", "knife", "stone face", "moon face", "trash"]


}

