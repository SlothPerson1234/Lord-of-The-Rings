#Machine Requirements: Have a Mac or an installed ruby version > 2.0run this in your terminal (for mac it's Terminal.app in your applications folder)
class Volume2
	def initialize
		hud
		puts "You climb the ladder. It turns out the walls are connected. You see ladders attempting to latch on. Do you push them off, or go back down the ladder?"
		puts "Push"
		puts "Climb"
			
		print "[{2}]:"
		c1 = gets.chomp

		if c1 == "climb" or c1 == "Climb"
			clear 
			townsquare
		elsif c1 == "push" or c1 == "Push"
			clear
			ladder1
		else
			clear
			puts "You die, the moment an arrow hits you in the heart."
			v1d
		end
	end

	def v1d
		timer(2)
		clear
		puts "The Shadow of θaʊron soon covers all of Middle-Earth. The dark ages begin."

		abort

	end

	def ladder1
		clear
		hud
		puts "You run to shove the ladder. An ork jumps off, attempting to hit you with a saber."
		h = rand(20)
		if rand + 5 >= $defense + $ac
			puts "It hits!"
			d = rand(10) + 1
			$currenthp -= d
			if  $currenthp <= 0
				puts "You die"
				v1d

			end
		else
			
			puts "It misses!"
		end
		timer(5)
		clear
		puts "You quickly shove the servent of evil off then run over to a wonded guard."
		puts "The guard nearbye thanks you, gifting you with 100₨"
		$cash += 100
		tower
	end

	def townsquare
			clear
			hud
			puts "You enter the town square"
			puts "A tavern is to your right, a shop also sits to your left, an in rignt beside it. The White Tree of Gondor lies ahead. You may also go back up the ladder, or down to the front gates."
			puts "Tavern"
			puts "Shop"
			puts "Inn"
			puts "Back"
			puts "Gates"

			print "[{2}]:"
			choice = gets.chomp
			if choice == "tavern" or choice == "Taven"
				clear
				tavern1("The Greasy Balrog")
				clear
				townsquare
			elsif choice == "inn" or choice == "Inn"
				clear
				inn1("The Unholy Porpoise")
				clear
				townsquare
			elsif choice == "Climb The Tree" or choice == "climb the tree"
				clear
				$cash += 5000000000000000000000000000000000000000000000000000000000
				puts "You find an insane amount of cash."
				townsquare
			elsif choice == "shop" or choice == "Shop"
				clear
				shop1("The Demented Uruk-Hai")
				clear
				townsquare
			elsif choice == "gates" or choice == "Gates"
				clear
				gates
			else	
				clear
				townsquare		
			end
	end

	def gate
		hud
		puts "You run to the gate. An Uruk apears. A soldier is laying injured nearbye. Do you attack with your melee or bow?"
		print "[{2}]:"
		gets
		clear
		hud
		puts "You hit the Uruk. It falls dead. It has a bow of Ulthmath."
		puts "Now, do you take the weapon, or keep your old weapon?"
		puts "options:"
		puts "Take"
		puts "Keep"
		print "[{2}]:"
		choice2 = gets.chomp
		clear

		if choice1 == "Take" or choice1 == "take"
			hud

			puts "You take the weapon"
			$rangedatc = 5
			$randgedatcspeed = 3
			$bow = "bow of Ulthmath"
		
		else
			hud
			puts "Too bad🙁."
			puts "I hope you don't regret your choice in the future."
		end
		tower
	end

	def tower
		puts "You see fire scorching the the tower. Ruble flies off, exposing the top of the staircase. A dragon shoves the Ruble off, ignoring the countless arrows. The dragon blinks, then it opens a third yellow blood shot eye eye on its forehead. You run up to the tower, the dragon knocks you off. You faint, and are scooped up by the dragon."
	end
end



class Volume3
	def initialize
		puts "You wake up, in a small room, with a halway stretching out from it. 3 goblins attack. Do you attempt to run past them, or do you attack them?"
		print "<]<]^3^[>[>:"
		gets
		clear
		battle1
	end

	def v2d
		timer(2)
		clear
		puts "Your finaly screams of agany can be heard through out the anciant caverns. Many beings come to feast upon the body that you once were in controll of. A high-pitched screech echos through the caverns. Almost triumphant, the voice appears to echo, saying one word:"
		puts ".▄▄ · ▄▄▄·▄• ▄▄▄▄       ▐ ▄ 
▐█ ▀.▐█ ▀██▪██▀▄ █▪    •█▌▐█
▄▀▀▀█▄█▀▀██▌▐█▐▀▀▄ ▄█▀▄▐█▐▐▌
▐█▄▪▐▐█ ▪▐▐█▄█▐█•█▐█▌.▐██▐█▌
 ▀▀▀▀ ▀  ▀ ▀▀▀.▀  ▀▀█▄▀▀▀ █▪"
	end

	def battle1
		hud
		puts "################################
 ___________ ####### ___________
|           |_______|   ______  |
|  Arival  * _______   (      ) |
|___________|#######|           |
_________________###|           |
<-----  Exit     |##|   [] []   |
|_____________   |##|           |
##############|  |__|   [] []   /
##############|________________/#"
		
		puts "You get roped into the battle. Do you attack or defend?"
		print "<]<]^3^[>[>:"
		fight = gets.chomp.to_s

		if fight == "attack" or fight == "Attack"
			clear
			battlehud("Goblins")
			puts "You lunge, cleaving the heads of the goblins from their shoulders. You reign victorious."
			timer(5)
			room1
		elsif fight == "defend" or fight == "Defend"
			clear 
			battlehud("Goblins")
			puts "You dodge their blows, then imidiatly attack, removing the arms of the Goblins. They die."
			timer(5)
			room1
		else
			puts "▓██   ██▓▒█████  █    ██    ▓█████▄ ██▓█████▓█████▄ 
 ▒██  ██▒██▒  ██▒██  ▓██▒   ▒██▀ ██▓██▓█   ▀▒██▀ ██▌
  ▒██ ██▒██░  ██▓██  ▒██░   ░██   █▒██▒███  ░██   █▌
  ░ ▐██▓▒██   ██▓▓█  ░██░   ░▓█▄   ░██▒▓█  ▄░▓█▄   ▌
  ░ ██▒▓░ ████▓▒▒▒█████▓    ░▒████▓░██░▒████░▒████▓ 
   ██▒▒▒░ ▒░▒░▒░░▒▓▒ ▒ ▒     ▒▒▓  ▒░▓ ░░ ▒░ ░▒▒▓  ▒ 
 ▓██ ░▒░  ░ ▒ ▒░░░▒░ ░ ░     ░ ▒  ▒ ▒ ░░ ░  ░░ ▒  ▒ 
 ▒ ▒ ░░ ░ ░ ░ ▒  ░░░ ░ ░     ░ ░  ░ ▒ ░  ░   ░ ░  ░ 
 ░ ░        ░ ░    ░           ░    ░    ░  ░  ░    
 ░ ░                         ░               ░      "
			puts "You must think quick in battle."
			v2d
			abort

		end

		

	end

	def room1
		clear
		hud
		puts "################################
 ___________ ####### ___________
|           |_______|   ______  |
|  Arival  * _______   (      ) |
|___________|#######|           |
_________________###|           |
<-----  Exit     |##|   [] []   |
|_____________   |##|           |
##############|  |__|   [] []   /
##############|________________/#"

		puts "The remains of the goblins still litter the floor. A Small loop hangs on the crudley carved wall of the cavern. Looking up, the cealing streaches for many meters above you, wooden bridges crossing the chamber, with many lanterns hanging above. Abridge in front of you spans the cavern. Do you walk across, or jump off?"
		puts "Walk"
		puts "Jump"
		print "<]<]^3^[>[>:"
		room1crucial = gets.chomp.to_s
		if room1crucial == "Jump" or room1crucial == "jump"
			puts "You jump off. You die. Good job..."
			timer(10)
			clear
			puts "JK, as you fall into the abyss, a dragon scoops you up and drops you back on the bridge. You walk back into the room you came from."
			timer(5)
			clear 
			room1
		elsif room1crucial == "Walk" or room1crucial == "walk"
			clear
			room2

		else
			
			room1

		end
	
	end

	def room2
		clear 
		hud
		puts "################################
 ___________ ####### ___________
|           |_______|   ______  |
|  Arival    _______   (      ) |
|___________|#######|     *     |
_________________###|           |
<-----  Exit     |##|   [] []   |
|_____________   |##|           |
##############|  |__|   [] []   /
##############|________________/#"
		puts "You walk acrros the bridge, entering a large room. Collumns line it, a chest sitting on an altar near the passage you entered from. Another passage als leads out of the room. Do you open the chest, go back, or go to the next room?"
		puts "Open"
		puts "Back"
		puts "Forward"
		print "<]<]^3^[>[>:"
		room2crucial = gets.chomp.to_s

		if room2crucial == "Open" or room2crucial == "open"
			puts "The chest lays on the altar. You pry its lid open. A majesticaly carved dagger lies before you. Its sheen shows you that it is valued highly. Do you take it?"
			puts "Yes"
			puts "No"
			print "<]<]^3^[>[>:"
			choicetoreciveultimatepoweratearlylevel = gets.chomp.to_s

			if choicetoreciveultimatepoweratearlylevel == "Yes" or choicetoreciveultimatepoweratearlylevel == "yes"
				clear
				$
			elsif 
			else
			end	
			
			
		end




	end



end

#stats
$ac = 0
$atcspeed = 0
$attack = 0
$baseatc = 0
$defense = 0
$hp = 10
$specialabilityset = 0
$currenthp = $hp
$player_name= ""
$randgedatc = 5
$randgedatcspeed = 0
$sheilddef = 0
$speed = 0
$stamina = 0

#advanced stats
$armorname = ""
$arrows = 20
$bow = "Commoner's shortbow"
$cash = 0
$race = ""
$weapon = ""
$rank = 0

#runes
$totalrunes = 0
$dr = 0
$hr = 0
$pr = 0

#stats so advanced you won't use often them until volume 20
$magedamadge = 0
$mageacuracy = 0
$magedef = 0

def clear
	puts "\e[H\e[2J"
end

def timer(time)
	sleep(time)
end

def hints(hint)
	print "Hint: "
	case hint
	when 0
		puts "The difficulty depends on how much freedom you have and the estimated rate of death."
	when 1
		puts "On your HUD, on a non-tutorial volume, you can see your cash (₨), "
	when 2
		puts "Some times, you can do a unsaid action and reap bonus rewards. Often these actions are references to LOTR or the Hobbit."
	when 3
		puts "Often, at the begining of a volume, you can find ways to restore your current hp."
	when 4
		puts "Some times, you can take a different rout than was instructed and encounter less or more enemys."
	when 5
		puts "Sometimes, take a different approach, rather than your usual one."
	when 6
		puts "If you run low on arrows, you can buy them at a store (in areas before you continue on your curent quest) along with sheilds, armor, and very expensive runes, that raise your base stats."
	when 7
		puts "Some enemys will die imeadiatly if you hit them with fire."
	when 8
		puts "Some enemys will die imeadiatly if you hit them with ice."
	when 9
		puts "All enemys will be stunned if you hit them with a magical attack."
	when 10
		puts "Some places have secret areas which you can reap for loot if you notice a suspicious thing, you can investigate, but warning, if you fail any thing, you will die."
	else
		puts "Missing a hint number?"
	end
end	
				
def hud
		
		puts "|HP: " + $hp.to_s + "/" + $currenthp.to_s + "  " + "Money: " + $cash.to_s + "₨ Armor: " + $armorname + " Weapon: " + $weapon + " 																	" + "Runes: " + $totalrunes.to_s + "|
		_____________________________________________________________________________________________________________________________________"
		
end	
	


def shop2(shopname)
	puts "Money: ₨" + $cash.to_s

	puts "Wares:"
	puts "Arrow: ₨1"
	puts "Arrows, 10: ₨9"
	puts "Rune of Health: ₨10,000"
	puts "Rune of Power: ₨10,000"
	puts "Rune of Defense: ₨10,000"
	puts "Rune Bundle: ₨50,000"

	puts "Training:"
	puts "Basic Mage Training: ₨666,666"
	puts "Attack Mage Training: ₨666,666"
	puts "Acurate Mage Training: ₨666,666"
	puts "Defense Mage Training: ₨666,666"
	puts "Godly Mage Training: ₨666,666,666"
	puts "You may also leave the shop (Leave)."
	print "}~" + shopname + "~{:"
	purchase = gets.chomp

	if (purchase == "Arrow" and $cash >= 1) or (purchase == "arrow" and $cash >= 1)
		$cash -= 1
		$arrows += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 arrow. You now have " + $arrows + " arrows."
		shop2(shopname)
		
	elsif (purchase == "Arrows" and $cash >= 9) or (purchase == "arrows" and $cash >= 9) or (purchase == "arrows, 10" and $cash >= 9) or (purchase == "Arrows, 10" and $cash >= 9) or (purchase == "10 arrows" and $cash >= 9) or (purchase == "10 Arrows" and $cash >= 9)
		$cash -= 9
		$arrows += 10
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 10 arrows. You now have " + $arrows + " arrows."
		shop2(shopname)

	elsif (purchase == "Rune of Health" and $cash >= 10000) or (purchase == "rune of health" and $cash >= 10000)
		$cash -= 10000
		$hp += 10
		$currenthp = $hp
		$totalrunes += 1
		$hr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of health. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune of Power" and $cash >= 10000) or (purchase == "rune of power" and $cash >= 10000)
		$cash -= 10000
		$baseatc += 10
		$totalrunes += 1
		$pr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of power. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune of Defense" and $cash >= 10000) or (purchase == "rune of defense" and $cash >= 10000)
		$cash -= 10000
		$basedef += 10
		$totalrunes += 1
		$dr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of defense. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune Bundle" and $cash >= 50000) or (purchase == "rune bundle" and $cash >= 50000)
		$cash -= 50000
		$basedef += 20
		$totalrunes += 6
		$dr += 2
		$baseatc += 20
		$pr += 2
		$hr += 2
		$hp += 10
		$currenthp = $hp
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune bundle. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Basic Mage Training" and $cash >= 666666) or (purchase == "basic mage Training" and $cash >= 666666)
		$magedamadge += 10
		$mageacuracy += 10
		$magedef += 10
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a basic mage."
		shop2(shopname)

	elsif (purchase == "Attack Mage Training" and $cash >= 666666) or (purchase == "attack mage Training" and $cash >= 666666)
		$magedamadge += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a proficient attack mage."
		shop2(shopname)

	elsif (purchase == "Acurate Mage Training" and $cash >= 666666) or (purchase == "acurate mage Training" and $cash >= 666666)
		$mageacuracy += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now an acurate mage."

		shop2(shopname)

	elsif (purchase == "Defense Mage Training" and $cash >= 666666) or (purchase == "basic mage Training" and $cash >= 666666)
		$magedef += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a proficiently defensive mage."
		shop2(shopname)

	elsif (purchase == "Advanced Mage Training" and $cash >= 666666666) or (purchase == "advanced mage Training" and $cash >= 666666666)
		$magedamadge += 100
		$cash -= 666666666
		$mageacuracy += 100
		$magedef += 100
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now an advanced mage."
		shop2(shopname)
	elsif  purchase == "leave" or purchase == "Leave"
		
	else
		clear 
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are unable to purchase that."
		shop2(shopname)

	end
end

def shop1(shopname)
	puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
	puts "Money: ₨" + $cash.to_s

	puts "Wares:"
	puts "Arrow: ₨1"
	puts "Arrows, 10: ₨9"
	puts "Rune of Health: ₨10,000"
	puts "Rune of Power: ₨10,000"
	puts "Rune of Defense: ₨10,000"
	puts "Rune Bundle: ₨50,000"

	puts "Training:"
	puts "Basic Mage Training: ₨666,666"
	puts "Attack Mage Training: ₨666,666"
	puts "Acurate Mage Training: ₨666,666"
	puts "Defense Mage Training: ₨666,666"
	puts "Godly Mage Training: ₨666,666,666"
	puts "You may also leave the shop (Leave)."
	print "}~" + shopname + "~{:"
	purchase = gets.chomp

	if (purchase == "Arrow" and $cash >= 1) or (purchase == "arrow" and $cash >= 1)
		$cash -= 1
		$arrows += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 arrow. You now have " + $arrows + " arrows."
		shop2(shopname)
		
	elsif (purchase == "Arrows" and $cash >= 9) or (purchase == "arrows" and $cash >= 9) or (purchase == "arrows, 10" and $cash >= 9) or (purchase == "Arrows, 10" and $cash >= 9) or (purchase == "10 arrows" and $cash >= 9) or (purchase == "10 Arrows" and $cash >= 9)
		$cash -= 9
		$arrows += 10
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 10 arrows. You now have " + $arrows + " arrows."
		shop2(shopname)

	elsif (purchase == "Rune of Health" and $cash >= 10000) or (purchase == "rune of health" and $cash >= 10000)
		$cash -= 10000
		$hp += 10
		$currenthp = $hp
		$totalrunes += 1
		$hr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of health. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune of Power" and $cash >= 10000) or (purchase == "rune of power" and $cash >= 10000)
		$cash -= 10000
		$baseatc += 10
		$totalrunes += 1
		$pr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of power. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune of Defense" and $cash >= 10000) or (purchase == "rune of defense" and $cash >= 10000)
		$cash -= 10000
		$basedef += 10
		$totalrunes += 1
		$dr += 1
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune of defense. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Rune Bundle" and $cash >= 50000) or (purchase == "rune bundle" and $cash >= 50000)
		$cash -= 50000
		$basedef += 20
		$totalrunes += 6
		$dr += 2
		$baseatc += 20
		$pr += 2
		$hr += 2
		$hp += 10
		$currenthp = $hp
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You bought 1 rune bundle. You now have " + $totalrunes + " runes."
		shop2(shopname)

	elsif (purchase == "Basic Mage Training" and $cash >= 666666) or (purchase == "basic mage Training" and $cash >= 666666)
		$magedamadge += 10
		$mageacuracy += 10
		$magedef += 10
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a basic mage."
		shop2(shopname)

	elsif (purchase == "Attack Mage Training" and $cash >= 666666) or (purchase == "attack mage Training" and $cash >= 666666)
		$magedamadge += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a proficient attack mage."
		shop2(shopname)

	elsif (purchase == "Acurate Mage Training" and $cash >= 666666) or (purchase == "acurate mage Training" and $cash >= 666666)
		$mageacuracy += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now an acurate mage."

		shop2(shopname)

	elsif (purchase == "Defense Mage Training" and $cash >= 666666) or (purchase == "basic mage Training" and $cash >= 666666)
		$magedef += 30
		$cash -= 666666
		clear
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now a proficiently defensive mage."
		shop2(shopname)

	elsif (purchase == "Advanced Mage Training" and $cash >= 666666666) or (purchase == "advanced mage Training" and $cash >= 666666666)
		$magedamadge += 100
		$cash -= 666666666
		$mageacuracy += 100
		$magedef += 100
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are now an advanced mage."
		shop2(shopname)
	elsif  purchase == "leave" or purchase == "Leave"
		
	else
		clear 
		puts "~~~~~~~~" + shopname.to_s + "~~~~~~~~"
		puts "You are unable to purchase that."
		shop2(shopname)

	end
end	

def tavern1(tavernname)
	puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
	puts "Money: ₨" + $cash.to_s
	puts "Beverages: "
	puts "Mead: ₨10"
	puts "Elvish Wine: ₨200"
	puts "Water: ₨1"

	puts "You may also leave"
	print "}~" + tavernname + "~{:"
	purchase = gets.chomp

	if (purchase == "Mead" && $cash >= 10) or (purchase == "mead" && $cash >= 10)
		clear
		$cash -= 10
		$currenthp += 9
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the mead."
		tavern2(tavernname)
	elsif (purchase == "elvish wine" && $cash >= 200) or (purchase == "Elvish Wine" && $cash >= 200)
		clear
		$cash -= 200
		$currenthp += 100
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the wine."
		tavern2(tavernname)
	elsif (purchase == "Water" && $cash >= 1) or (purchase == "water" && $cash >= 1)
		clear
		$cash -= 1
		$currenthp += 1
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the water."
		tavern2(tavernname)
	elsif  purchase == "leave" or purchase == "Leave"
		
	else 
		clear 
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You are unable to purchase that."
		tavern2(tavernname)



	end
end

def tavern2(tavernname)
	puts "Money: ₨" + $cash.to_s
	puts "Beverages: "
	puts "Mead: ₨10"
	puts "Elvish Wine: ₨200"
	puts "Water: ₨1"

	puts "You may also leave"
	print "}~" + tavernname + "~{:"
	purchase = gets.chomp

	if (purchase == "Mead" && $cash >= 10) or (purchase == "mead" && $cash >= 10)
		clear
		$cash -= 10
		$currenthp += 9
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the mead."
		tavern2(tavernname)
	elsif (purchase == "elvish wine" && $cash >= 200) or (purchase == "Elvish Wine" && $cash >= 200)
		clear
		$cash -= 200
		$currenthp += 100
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the wine."
		tavern2(tavernname)
	elsif (purchase == "Water" && $cash >= 1) or (purchase == "water" && $cash >= 1)
		clear
		$cash -= 1
		$currenthp += 1
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You down the water."
		tavern2(tavernname)
	elsif  purchase == "leave" or purchase == "Leave"
		
	else 
		clear 
		puts "~~~~~~~~" + tavernname.to_s + "~~~~~~~~"
		puts "You are unable to purchase that."
		tavern2(tavernname)



	end
end

def inn(name)
  puts "\e[H\e[2J"
  heal_by = 10
  room_cost = 5
  luxury_room_cost = 10
  leave = false
  until leave == true
    puts <<~Welcome

      ~~~~~~~ #{name} ~~~~~~~
      1. Luxury Room: #{luxury_room_cost}₨
      2. Room: #{room_cost}₨
      3. You may also leave

      }~ #{name} ~{:
    Welcome
    choice = gets.chomp
    puts "\e[H\e[2J"
    case choice.downcase
    when "1", "luxury", "luxury room"
      unless $cash < luxury_room_cost 
        $currenthp += heal_by
        $cash -= luxury_room_cost
        puts "You slept well"
      else
        puts "Not enough money!"
      end
    when "2", "room"
      unless $cash < room_cost 
        $currenthp += heal_by  
        $cash -= room_cost
        puts "You slept well"
      else
        puts "Not enough money!"
      end
    when "3", "leave"
      puts "See ya"
      leave = true
    else
      puts "Please try again"
    end
  end
end

def dungeonhealer1(healername)
	clear
	hud
	puts '__________|  Exit  |___________
	|         __________           |
	|       []   ___    []         |
	|       []  /   \   []         |
	|       [] /_____\  []         |
	|       []__________[]         |
	|________           ___________|
	#########| Arival  |############'
	puts 'You walk into a chamber that has a pool on a pedistul in the middle and an exit on the other side of it. Do you walk up to the pool or go through the exit?'
	puts 'Pool'
	puts 'Exit'
	print '[{💙}]: '
    healer1 = gets.chomp

    if healer1 == 'Pool' or healer1 == 'pool'
    	clear
    	puts '
				     / /   ___      ___\__\
		           /_/___/___ }__/__  \____\
		          /__/__//____|///  //|  \  \
		         .__/ _//____|///__//_|___\__\_/\
		       /__//_/__/||||/ / !|___|_____\_| L
		      / _// _/|// |/_-.   -7//|__|_____| (
		     `  /|_|_|   /7nT/     |=_  V|__||__|\|
		         /|_|   |~^)|       /~j\ |___L_|
		          || \   `"`       ^ _,/ /____/|j
		          || l|        `     `"  //j/ __\
		          |"_`]                ^/j?|_____\
		         |__|_|\       _       ///\_|_____\
		         |_|__|__\            / J/ __|_|___|
		        ,_i__|_|| \          / J/___||_|____\
     		  `_|i__|_||_ |` __-  `|/ ___/ /| |_\___|
    		  ___/!|_| |_|__j _ -- `  _/= `=|__|_\___\
    		 /_/ |_|_|=|=|=|=///|_/_//       \__|_\___\
    		|_|  || !| ||__|/   //:"/         ,__!:\___|
    		|_|   !/ |/-__7/   /_/||           `__||___\_
    		|_|    ! |____/    | /||             \_______\_
    		|_|    !^||_!/   " /__| \              \_______\      
		---------------------------------------------------'
		puts 'An elvish maiden rises out of the pool. It apears that her blue dress is what you thought was water. She says, "My name is ' + healername + '💙. I am a healer. I can help you recover from your wounds. She strides forward and her hand comes to rest on your heart. She whispers elvish incantations too complex to  translate into common, but here is a breif translation: "May the grace and spirit of Eru Ilúvatar mend thy wonds that have falen upon this brave hero."'
		puts 'You leave the side of the pool. Behind you you see the healer lay down, her body becoming invisable among the folds of the dress that you had thought to be water.'
		dungeonhealer2(healername)
    elsif healer1 == 'exit' or healer1 == 'Exit'
    	clear
    else
    	dungeonhealer1(healername)
	end	
end

def dungeonhealer2(healername)
	puts 'Do you walk up to the pool or go through the exit?'
	puts 'Pool'
	puts 'Exit'
	print '[{💙}]: '
    healer1 = gets.chomp

    if healer1 == 'Pool' or healer1 == 'pool'
    	clear
    	puts '
				    / /   ___      ___\__\
		           /_/___/___ }__/__  \____\
		          /__/__//____|///  //|  \  \
		         .__/ _//____|///__//_|___\__\_/\
		       /__//_/__/||||/ / !|___|_____\_| L
		      / _// _/|// |/_-.   -7//|__|_____| (
		     `  /|_|_|   /7nT/     |=_  V|__||__|\|
		         /|_|   |~^)|       /~j\ |___L_|
		          || \   `"`       ^ _,/ /____/|j
		          || l|        `     `"  //j/ __\
		          |"_`]                ^/j?|_____\
		         |__|_|\       _       ///\_|_____\
		         |_|__|__\            / J/ __|_|___|
		        ,_i__|_|| \          / J/___||_|____\
     		  `_|i__|_||_ |` __-  `|/ ___/ /| |_\___|
    		  ___/!|_| |_|__j _ -- `  _/= `=|__|_\___\
    		 /_/ |_|_|=|=|=|=///|_/_//       \__|_\___\
    		|_|  || !| ||__|/  /_/:"/         ,__!:\___|
    		|_|   !/ |/-__7/  /__/||           `__||___\_
    		|_|    ! |____/    | /||             \_______\_
    		|_|    !^||_!/   " /__||               \_______\      
		---------------------------------------------------'
		puts 'An elvish maiden rises out of the pool. It apears that her blue dress is what you thought was water. She says, "My name is ' + healername + '💙. I am a healer. I can help you recover from your wounds. She strides forward and her hand comes to rest on your heart. She whispers elvish incantations too complex to  translate into common, but here is a breif translation: "May the grace and spirit of Eru Ilúvatar mend thy wonds that have falen upon this brave hero."'
		puts 'You leave the side of the pool. Behind you you see the healer lay down, her body becoming invisable among the folds of the dress that you had thought to be water.'
		dungeonhealer2(healername)
    elsif healer1 == 'exit' or healer1 == 'Exit' 
    	clear
    else
    	dungeonhealer1(healername)
	end	
end   

def battlehud(enemiename)
	puts $player_name +	" HP: " + $currenthp + '/' + hp + "-----VS.-----" + enemiename 
end

def specialidentifier
	if $specialabilityset == 0

	elsif $specialabilityset == 1
		assasin
	elsif $specialabilityset == 2
		brawler
	elsif $specialabilityset == 3
		knight
	elsif $specialabilityset == 4
		demonicwarrior
	elsif $specialabilityset == 5
		angelicwarrior
	elsif $specialabilityset == 6
		swordsman
	elsif $specialabilityset == 7
		ninja
	elsif $specialabilityset == 8
		moneymaker
	elsif $specialabilityset == 9
		mage
	else
	end	
end

clear
timer(3)
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███       ███    ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                                                          
                                                                                                                          "
timer(0.5)
clear
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███        █     ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████                                       
                                ███    ███                                      
                                ███    █▀                              
                                ███                                       
                              ▀███████████                                      
                                       ███                                   
                                 ▄█    ███                                 
                               ▄████████▀                                   
"
timer(0.5)
clear
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███        █     ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███                                      
                                ███    ███ ▀█████████▄                                
                                ███    █▀     ▀███▀▀██                                    
                                ███            ███   ▀                                     
                              ▀███████████     ███                                      
                                       ███     ███                   
                                 ▄█    ███     ███                                      
                               ▄████████▀     ▄████▀                                       
"
timer(0.5)
clear
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███        █     ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███     ███    █▄                                       
                                ███    ███ ▀█████████▄ ███    ███                                       
                                ███    █▀     ▀███▀▀██ ███    ███                                   
                                ███            ███   ▀ ███    ███                                   
                              ▀███████████     ███     ███    ███                                    
                                       ███     ███     ███    ███                                     
                                 ▄█    ███     ███     ███    ███                                      
                               ▄████████▀     ▄████▀   ████████▀                                       
"
timer(0.5)
clear
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███        █     ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███     ███    █▄  ████████▄                                        
                                ███    ███ ▀█████████▄ ███    ███ ███   ▀███                                     
                                ███    █▀     ▀███▀▀██ ███    ███ ███    ███                                    
                                ███            ███   ▀ ███    ███ ███    ███                                
                              ▀███████████     ███     ███    ███ ███    ███                                 
                                       ███     ███     ███    ███ ███    ███                           
                                 ▄█    ███     ███     ███    ███ ███   ▄███                                 
                               ▄████████▀     ▄████▀   ████████▀  ████████▀                                     
"
timer(0.5)
clear
puts "  
  ▄███████   ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███     ██ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███     ▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███        █     ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███     ███    █▄  ████████▄   ▄█                                   
                                ███    ███ ▀█████████▄ ███    ███ ███   ▀███ ███                                   
                                ███    █▀     ▀███▀▀██ ███    ███ ███    ███ ███▌                                     
                                ███            ███   ▀ ███    ███ ███    ███ ███▌                                 
                              ▀███████████     ███     ███    ███ ███    ███ ███▌                                
                                       ███     ███     ███    ███ ███    ███ ███                             
                                 ▄█    ███     ███     ███    ███ ███   ▄███ ███                            
                               ▄████████▀     ▄████▀   ████████▀  ████████▀  █▀                                     
"
timer(0.5)
clear
puts "  
  ▄████████  ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███    ███ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███    █▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███       ███    ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███     ███    █▄  ████████▄   ▄█   ▄██████▄                                        
                                ███    ███ ▀█████████▄ ███    ███ ███   ▀███ ███  ███    ███                                     
                                ███    █▀     ▀███▀▀██ ███    ███ ███    ███ ███▌ ███    ███                                     
                                ███            ███   ▀ ███    ███ ███    ███ ███▌ ███    ███                                            
                              ▀███████████     ███     ███    ███ ███    ███ ███▌ ███    ███                                       
                                       ███     ███     ███    ███ ███    ███ ███  ███    ███                                          
                                 ▄█    ███     ███     ███    ███ ███   ▄███ ███  ███    ███                                       
                               ▄████████▀     ▄████▀   ████████▀  ████████▀  █▀    ▀██████▀                                     
"
timer(0.5)
clear
puts "  
  ▄████████  ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███    ███ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███    █▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███       ███    ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
             ▀                   ▄████████     ███     ███    █▄  ████████▄   ▄█   ▄██████▄   ██▄████████                                       
                                ███    ███ ▀█████████▄ ███    ███ ███   ▀███ ███  ███    ███   ███    ███                                       
                                ███    █▀     ▀███▀▀██ ███    ███ ███    ███ ███▌ ███    ███   ███    █▀                                        
                                ███            ███   ▀ ███    ███ ███    ███ ███▌ ███    ███   ███                                              
                              ▀███████████     ███     ███    ███ ███    ███ ███▌ ███    ███ ▀███████████                                       
                                       ███     ███     ███    ███ ███    ███ ███  ███    ███          ███                                       
                                 ▄█    ███     ███     ███    ███ ███   ▄███ ███  ███    ███    ▄█    ███                                       
                               ▄████████▀     ▄████▀   ████████▀  ████████▀  █▀    ▀██████▀   ▄████████▀                                        
"
timer(0.5)
clear
puts "  
  ▄████████  ▄█        ▄██████▄      ███        ▄█    █▄            ▄███████▄    ▄████████    ▄████████    ▄████████  ▄██████▄  ███▄▄▄▄        
  ███    ███ ███       ███    ███ ▀█████████▄   ███    ███          ███    ███   ███    ███   ███    ███   ███    ███ ███    ███ ███▀▀▀██▄      
  ███    █▀  ███       ███    ███    ▀███▀▀██   ███    ███          ███    ███   ███    █▀    ███    ███   ███    █▀  ███    ███ ███   ███      
  ███        ███       ███    ███     ███   ▀  ▄███▄▄▄▄███▄▄        ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀   ███        ███    ███ ███   ███      
▀███████████ ███       ███    ███     ███     ▀▀███▀▀▀▀███▀       ▀█████████▀  ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ▀███████████ ███    ███ ███   ███      
         ███ ███       ███    ███     ███       ███    ███          ███          ███    █▄  ▀███████████          ███ ███    ███ ███   ███      
   ▄█    ███ ███▌    ▄ ███    ███     ███       ███    ███          ███          ███    ███   ███    ███    ▄█    ███ ███    ███ ███   ███      
 ▄████████▀  █████▄▄██  ▀██████▀     ▄████▀     ███    █▀          ▄████▀        ██████████   ███    ███  ▄████████▀   ▀██████▀   ▀█   █▀       
              ▀    ██  ██         ▄████████     ███     ███    █▄  ████████▄   ▄█   ▄██████▄   ██▄████████        ██  ██                                               
                 ██  ██          ███    ███ ▀█████████▄ ███    ███ ███   ▀███ ███  ███    ███   ███    ███          ██  ██                     
               ██  ██  ██        ███    █▀     ▀███▀▀██ ███    ███ ███    ███ ███▌ ███    ███   ███    █▀         ██  ██  ██                   
             ██  ██  ██████      ███            ███   ▀ ███    ███ ███    ███ ███▌ ███    ███   ███             ██████  ██  ██                 
           ██  ██      ██      ▀███████████     ███     ███    ███ ███    ███ ███▌ ███    ███ ▀███████████        ██      ██  ██               
         ██  ██                         ███     ███     ███    ███ ███    ███ ███  ███    ███          ███                  ██  ██                 
       ██  ██                     ▄█    ███     ███     ███    ███ ███   ▄███ ███  ███    ███    ▄█    ███                    ██  ██               
     ██  ██                     ▄████████▀     ▄████▀   ████████▀  ████████▀  █▀    ▀██████▀   ▄████████▀                       ██  ██             
"
timer(5)
clear




puts ' 
       + +    *    *     + +     
       / \    )\__/(     / \       
      /   \  (__()__)   /   \      
 ____/_____\__\0  0/___/_____\____ 
|             |\../|              |
|              \__/               |
|      <<<Before The Rings>>>     |
|_________________________________|
 |    /\ /      ((       \ /\    | 
 |  /   V        ))       V   \  | 
 |/     +       ((        +     \| 
 +               V               + 
                 *                   '
puts "Please type names and commands exactly as said."
puts "For the best expirience, play in full screen."
puts "Click control =. Do so again 9 times"
puts "Do you wish to play?"

puts <<~intro
Please type names and commands exactly as said.
For the best expirience, play in full screen.
Click control =. Do so again 9 times
Do you wish to play?
intro

print "🌾: "
play = gets.chomp.to_s
if play == "yes" or play == "Yes"
if play.start_with? "y"
	clear

else
	clear
	puts "Then why the heck did you run this file???"
	puts "Plz actualy play."
	abort
end
puts "Welcome to the land of Middle Earth. What is your name young one?"
print "[{1}]:"
#gets player input
$player_name = gets
#removes new line after name
$player_name = $player_name.chomp
clear
def segment1
	puts "Now, "+ $player_name + ", what is your race?"
	puts <<~PlayerSelect
	
	1. Human:
	defense = 5
	speed = 8
	stamina = 12
	2. 🗡 Elf:
	defense = 3
	speed = 11
	stamina = 10
	Elvish bow mastery: you gain a ranged attack speed  of 2
	3. 💎 Dwarf:
	defense = 11
	speed = 3
	stamina = 10
	Dwarvish strength: you gain at base attack of 2
	4. 🎲 Hobbit:
	defense = 11
	speed = 11
	stamina = 3
	Hobbit health: your hp goes up by 2
	
	
	PlayerSelect
	print "[{1}]:"
	$race = gets.chomp

	#Race select
	case $race.downcase
	when "1", "human"
		$race = "Human"
		$defense = 5
		$speed = 8
		$stamina = 12
	when "2", "elf"
		$race = "Elf"
		$defense = 3
		$speed = 12
		$stamina = 10
		$randgedatcspeed = 2
	when "3", "dwarf"
		$race = "Dwarf"
		$defense = 12
		$speed = 3
		$stamina = 10
		$baseatc = 2
	when "4", "hobbit"
		$race = "Hobbit"
		$defense = 11
		$speed = 10
		$stamina = 3
		$hp += 2
		$currenthp = $hp
	else
		clear
		segment1
	end
end


segment1
clear
def segment2

	puts "Now, " + $player_name + " The " + $race + ", what melee weapon do you prefer. If it is not there, do not worry, you will find weapons later in your adventures. In addition to this weapon, you will gain a Commoner's bow (ranged attack: 5), and 20 normal arrows"

	puts <<~WeaponSelect
	1. Commoner's longsword:
	attack: 5
	attack speed: 2
	2. Commoner's daggers:
	attack: 2
	attack speed: 5
	3. Commoner's claymore: 
	attack: 10
	attack speed: 1
	4. Commoner's lance: 
	attack: 3
	attack speed: 3
	5. Commoner's shortsword:
	attack: 4
	attack speed: 2.5
	WeaponSelect
	print "[{1}]:"
	$weapon = gets.chomp

	# Weapon Select
	case $weapon.downcase
	when "1", "commoner's longsword", "longsword"
		$weapon = "Commoner's longsword"
		$attack = 2
		$atcspeed = 5
	when "2", "commoner's daggers", "dagger"
		$weapon = "Commoner's daggers"
		$attack = 5.1
		$atcspeed = 2
	when "3", "commoner's claymore", "claymore"
		$weapon = "Commoner's claymore"
		$attack = 10
		$atcspeed = 1
	when "4", "commoner's lance", "lance"
		$weapon = "Commoner's lance"
		$attack = 3
		$atcspeed = 3
	when "5", "commoner's shortsword", "shortsword"
		$weapon = "Commoner's shortsword"
		$attack = 4
		$atcspeed = 2.5
	else
		clear
		segment2
	end
end

segment2
clear

puts "So you wish to use the " + $weapon + "? Interesting choice. Now to begin...."
timer(2)
clear


#open this for seizure	
if true && $player_name.downcase != "skip"
	sentence1 = "A long time ago a poor town lived near a Dragon's lair."
	sentence2 = "One day a powerful wizard took pity on the town."
	sentence3 = "He put the Dragon to sleep, but not without a price; the Heart of Anundûr, the biggest gem in the Dragon's hoard."
	sentence4 = "On the day the Wizard was supposed to leave the town with the gem, citizens attempted to stop him."
	sentence5 = "Outraged, he removed the sleeping charm on the Dragon, and rode away."
	sentence6 = "The Dragon ravaged the town."
	sentence7 = "Meanwhile, the Wizard, who's name is Fairûman the white, sat, ploting, in the tower, Bara-Dûr..."

	#Combine all sentences into single array
	intro = [sentence1, sentence2, sentence3, sentence4, sentence5, sentence6, sentence7] 

	#For each sentence...
	intro.each do |sentence|
		#...split each char into an array indecie, and then run loop on every indecie.
		sentence.split(%r{}).each do |char| 
			print char
			timer(0.20)
		end
		#After last char, pause and clear screen, the move to next sentence
		timer(2)
		clear
	end
end
puts "Volume 1:"
puts "The Journy to Minas Tirith"
puts "Difficulty: Tutorial"

puts "	You are traveling as an escort to Minas Tirith, protecting a wealthy dwarf merchant. This party is following an old trail just south of the main rode.
The merchant belives that it will be safer, with less risk of bandits."
puts "	Suddenly, 2 orcs jump out of the bushes. They are unarmed. The merchent flees. What do you do?"
puts "Defend"
puts "Attack"
print "[{1}]:"
battle1 = gets.chomp
clear
case battle1.downcase
	when "defend"
	puts "Your defense causes you to find an opening. You slice the orc's heads off with one blow."
when "attack"
	puts "You unleash a flurry of attacks which leave the orcs laying unconscious on the ground. You quickly finish the job."
else
	puts "☠️You stand their mumbiling to your self. The orcs murder you. They carve an eye on your forehead and begin to loot your body. Come back when 
	you know how to play this game.☠️"
	abort
end

puts "Behind you is a single Oruk-Hai riding a horse. You mount the rich man's steed and begin to run. Do you turn around and fire an arrow at the oncoming Oruk-Hai, or do you ride away?"
puts "Ride"
puts "Attack"
print "[{1}]:"
battle2 = gets.chomp
battle2 = battle2
clear
case battle2.downcase
when "ride"
	puts "You ride vigorously until you see the blooming tree of Gondor. The Oruk-Hai whistles. 29 more appear."
when "attack"
	$arrows -= 1
	puts "The Oruk-Hai falls to the ground, dead. Dropping an Oruk-Hai scimitar (6 attack, 4.75 attack speed) and some Eye of Sauron Oruk-Hai armor (ac 9) do you grab the armour?"

	puts "current ac: " + $ac.to_s

	puts "current ac: " + $armour.to_s

	puts "armour's ac: 9"
	puts "current armor name: " + $armorname
	puts "options:"
	puts "Take"
	puts "Keep"
	print "[{1}]:"
	choice1 = gets.chomp
	clear
	if choice1 == "Take" or choice1 == "take"
		puts "You dawn the armor"
		$ac = 9
		$armourname = "Eye of Sauron Oruk-Hai armor"
		
	else
		puts "Too bad🙁."
		puts "I hope you don't regret your choice in the future."
	
	end

	puts "Now, do you take the Oruk-Hai scymitar, or keep your old weapon?"
	puts "options:"
	puts "Take"
	puts "Keep"
	print "[{1}]:"
	choice2 = gets.chomp

	if choice1 == "Take" or choice1 == "take"
		puts "You take the scimitar"
		$attack = 6
		$attackspeed = 4.75
		$weapon = "Oruk-Hai scimitar"
		
	else
		puts "Too bad🙁."
		puts "I hope you don't regret your choice in the future."
	end
	puts "soon, 30 more Oruk-Hai appear. You begin to ride."
	
else
	puts "You die, because you just sit there with your head lulled back."
	abort
end

puts "Soon, you arrive at the gates of Minas Tirith, barely making it through, for they are begining to close the gates, for the once 30 figures riding behind you had turned to a few thousand, some larger than others."

puts ""
puts "Volume 2:"
puts "The Seige of Minas Tirith"
puts "Difficulty: Absulute Beginner"
puts ""
hint1 = rand(10)
hints(hint1)
puts 'As you enter the gates, a figure quickly runs up to you and requests, "Help man the walls, I do not care if thy is no soldier, we need all avalable persona to help defend our city from ocupation by these servents of θaʊron." The elvish name rolled off his throat like a foul breath. After he whisperd it, the elvish name seemed to stir power, as if it invoked the anger of the deity its self. You run to the center of Gondor.'
v2 = Volume2.new
puts ""
puts "Volume 3:"
puts "The Castle of the Warlord"
puts "Difficulty: Beginner"
puts "Warning: this level is a dungeon, that means it is the final level before a boss"
hint1 = rand(10)
v3 = Volume3.new

