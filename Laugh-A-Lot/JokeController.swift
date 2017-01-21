//
//  JokeController.swift
//  Laugh-A-Lot
//
//  Created by Nathaniel Ruiz on 2017-01-10.
//  Copyright © 2017 Rave. All rights reserved.
//

import UIKit


protocol combinePicture: class
{
	func grabPicture(_ jokeURL: NSURL?) -> UIImage
}

protocol jokeInquiry: class {
	func getjokes(_ typeIndex: Int, _ jokeIndex: Int) -> String?
	
}

extension JokeController: combinePicture
{
	func grabPicture(_ jokeURL: NSURL?) -> UIImage {
		
		var givingImage: UIImage? = nil
		if let url = jokeURL
		{
			if let imageData = NSData(contentsOf: url as URL)
			{
				givingImage = UIImage(data: imageData as Data)!
			}
		}
		
		return givingImage!
	}
}

extension JokeController: jokeInquiry
{
	func getjokes(_ typeIndex: Int, _ jokeIndex: Int) -> String? {
		
		let actualvalue = findJokes(typeIndex, jokeNumber: jokeIndex)!
		return actualvalue
		
	}
}
class JokeController: UIViewController {
	
	var initializePicture = jokePicClass()
	var initializeLabel = JokeLabel()
	var typeOfJoke = Todisplayjoke.FirstLabel(joke: .Knock)
	
	@IBOutlet weak var displayJoke: JokeLabel! //DOES NOT NEED A DIDSET, ITS JUST A NAME AND OUTLET
	//OTHERWISE THE DIDSET IS GETTING CALLED FIRST AND GETS SET AS NIL AND CAUSES CRASH
	
	
	var start = 0
	
	@IBAction func newJoke(_ sender: UIButton) {
		start += 1
		displayJoke.text = initializeLabel.setUpJoke(typeOfJoke.joke.rawValue, start)
	}
	
	@IBOutlet weak var displayPun: PunLabel!
		{
		didSet
		{
			showPun()
		}
	}
	
	var getItDisplayed = ""
	func showPun()
	{
		if displayPun != nil
		{
			switch typeOfJoke.joke
			{
			case .Knock: getItDisplayed = findPun(typeOfJoke.joke.rawValue, punNumber: 0)!
			case .One: getItDisplayed = findPun(typeOfJoke.joke.rawValue, punNumber: 0)!
			case .Anti: getItDisplayed = findPun(typeOfJoke.joke.rawValue, punNumber: 0)!
			case .Pun: getItDisplayed = findPun(typeOfJoke.joke.rawValue, punNumber: 0)!
				
			default: break
			}
		}
		displayPun.text = getItDisplayed
	}
	
	@IBAction func showAnswer(_ sender: UIButton) {
		
		getItDisplayed = findPun(typeOfJoke.joke.rawValue, punNumber: start+1)!
		displayPun.text = getItDisplayed
		
	}
	
	// Above code works! Starting to implement view
	
	var jokePicView = UIImageView()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		initializeLabel.delegate = self
		initializePicture.delegate = self
		view.addSubview(initializePicture.jokePicView)
		initializePicture.setUpPicture(delgate: initializePicture.delegate!, typeOfJoke.joke.rawValue)
		displayJoke.text = initializeLabel.setUpJoke(typeOfJoke.joke.rawValue, 0)
	}
	
}

