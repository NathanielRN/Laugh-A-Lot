//
//  Jokes.swift
//  Laugh-A-Lot
//
//  Created by Nathaniel Ruiz on 2017-01-10.
//  Copyright © 2017 Rave. All rights reserved.
//

import UIKit

class JokeLabel: UILabel
{	
	weak var delegate: jokeInquiry?

	func setUpJoke(_ firstInt: Int, _ secondInt: Int) -> String?
	{
		let stringHolder = delegate?.getjokes(firstInt, secondInt)
		return stringHolder!
	}
	
}

