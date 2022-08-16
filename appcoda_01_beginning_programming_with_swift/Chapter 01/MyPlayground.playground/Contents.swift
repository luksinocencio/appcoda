import UIKit

var jobTitle: String?
var message = ""

jobTitle = "iOS Developer"

// Forced Unwrapping
if jobTitle != nil {
     message = "My job is " + jobTitle!
}

// Optinal binding
if let jobTitleWithValue = jobTitle {
    message = "My job is " + jobTitleWithValue
}

var emojiDict: [String: String] = ["👻": "Ghost",
                                   "💩": "Poop",
                                   "😤": "Angry",
                                   "😱": "Scream",
                                   "👾": "Ghost"
                                  ]

var wordToLookup = "👻"
var meaning = emojiDict[wordToLookup]

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
containerView.backgroundColor = UIColor.orange



let emojiLabel = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
emojiLabel.text = wordToLookup
emojiLabel.font = UIFont.systemFont(ofSize: 100.0)

containerView.addSubview(emojiLabel)

let meaningLabel = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
meaningLabel.text = meaning
meaningLabel.font = UIFont.systemFont(ofSize: 30.0)
meaningLabel.textColor = UIColor.white

containerView.addSubview(meaningLabel)
