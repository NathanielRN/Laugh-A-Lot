//
//  SelectionController.swift
//  Cassini
//
//  Created by Nathaniel Ruiz on 2017-01-10.
//  Copyright © 2017 Rave. All rights reserved.
//

import UIKit

class SelectionController: UIViewController {
	
	@IBOutlet weak var knockIcon: UIImageView!
	@IBOutlet weak var punIcon: UIImageView!
	@IBOutlet weak var oneIcon: UIImageView!
	@IBOutlet weak var antiIcon: UIImageView!
	@IBOutlet weak var lolIcon: UIImageView!
	
	override internal func viewDidLoad() {
		knockIcon.image = UIImage(named: "laugh1")
		punIcon.image = UIImage(named: "roll")
		oneIcon.image = UIImage(named: "blush")
		antiIcon.image = UIImage(named: "grin")
		lolIcon.image = UIImage(named: "funny")

}
	
	private let jokeCategory: Dictionary<String,Todisplayjoke.FirstLabel> = [
		"Knock" : Todisplayjoke.FirstLabel(joke: .Knock),
		"Pun" : Todisplayjoke.FirstLabel(joke: .Pun),
		"Anti" : Todisplayjoke.FirstLabel(joke: .Anti),
		"One" : Todisplayjoke.FirstLabel(joke: .One)
		]
	
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destinationvc = segue.destination
		if let jokedisplayingvc = destinationvc as? JokeController{
			if let identifier = segue.identifier {
				if let joker = jokeCategory[identifier]{
					jokedisplayingvc.typeOfJoke = joker
				}
			}
		}
		
	}

	

}
