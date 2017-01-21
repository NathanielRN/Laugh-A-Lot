//
//  PunBankModel.swift
//  Laugh-A-Lot
//
//  Created by Nathaniel Ruiz on 2017-01-11.
//  Copyright © 2017 Rave. All rights reserved.
//

import Foundation

func findPun(_ punIndicatior: Int, punNumber: Int) -> String?
{
	if (punIndicatior == 0)
	{
		switch punNumber
		{
		case 0: return "*Incoming Hilarty*"
		case 1: return "Irish you a Merry Christmas!"
		case 2: return "Robin you! Give me all your money!"
		case 3: return "No more jokes!"
		default: break
		}
		return "I guess you you REALLY like knock knock jokes"
	}
	if (punIndicatior == 1)
	{
		switch punNumber
		{
		case 0: return "*I guess this will be funny*"
		case 1: return "'I have read and agree to the Terms and Conditions'"
		case 2: return "A brick."
		case 3: return "No more jokes!"
		default: break
		}
		return "I guess you REALLY like anti jokes"
	}
	if (punIndicatior == 2)
	{
		switch punNumber
		{
		case 0: return "*Incoming Punarilty*"
		case 1: return "All I did was take a day off."
		case 2: return "It's impossible to put down."
		case 3: return "No more jokes!"
		default: break
		}
		return "I guess you REALLY like pun jokes"
	}
	if (punIndicatior == 3)
	{
		switch punNumber
		{
		case 0: return "*This will not not be funny*"
		case 1: return "for me to end emails without sounding pretentious."
		case 2: return "he only did numbers one, three, five and seven."
		case 3: return "No more jokes!"
		default: break
		}
		return "No more jokes!"
	}
	return "I guess you REALLY like short jokes"
	
}
