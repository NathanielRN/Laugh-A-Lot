//
//  JokeBankModel.swift
//  Laugh-A-Lot
//
//  Created by Nathaniel Ruiz on 2017-01-10.
//  Copyright © 2017 Rave. All rights reserved.
//

import Foundation

// DOESNT NEED TO BE IN A CLASS, it's not an object that gets acted on, it's literraly just a bank of information

func findJokes(_ jokeIndicator: Int, jokeNumber: Int) -> String?
{
	if (jokeIndicator == 0)
	{
		switch jokeNumber
		{
		case 0: return "Knock! Knock!\n Who’s there?\n Irish.\n Irish who?"
		case 1: return "Knock! Knock!\nWho’s there?\nRobin.\nRobin who?"
		case 2: return "No more jokes!"
		default: break
		}
		return "I guess you like knock knock jokes"
	}
	else if (jokeIndicator == 1)
	{
		switch jokeNumber
		{
		case 0: return "What's the biggest lie in the universe?"
		case 1: return "What's red and bad for your teeth?"
		case 2: return "No more jokes!"
		default: break
		}
		return "I guess you like anti jokes"
	}
	else if (jokeIndicator == 2)
	{
		switch jokeNumber
		{
		case 0: return "I can't believe I got fired from the calendar factory."
		case 1: return "I'm reading a book about anti-gravity."
		case 2: return "No more jokes!"
		default: break
		}
		return "I guess you like pun jokes"
	}
		else if (jokeIndicator == 3)
	{
		switch jokeNumber
		{
		case 0: return "My name is Fin, which means it's very hard "
		case 1: return "I got an odd-job man in. He was useless. Gave him a list of eight things to do and "
		case 2: return "No more jokes!"
		default: break
		}
		return "No more jokes!"
	}
	return "I guess you like short jokes"
	
}
