wunderlist-daily-review
=======================

Simple script for Mac OS that emulates [Things](http://culturedcode.com/things/#dailyreview)' "Daily Review" feature in [Wunderlist](http://wunderlist.com). See [this blog post](http://www.theslowhunch.net/2012/12/hacking-todos-…for-wunderlist/) for more info.

Requirements:
-------------

* 	[Wunderlist](http://wunderlist.com) for Mac and a Wunderlist account.

* 	[Quit](http://mattdturner.com/wordpress/2011/05/mac-os-x-quit-application-from-command-line/) for Mac OSX Shell

* 	[Sqlite 3 shell for mac](http://www.sqlite.org/download.html)

To use:
-------

* 	Within Wunderlist, create two lists: "Today" and "Daily Review".

* 	Download these files to your computer and put them somewhere (I use ~/dev).

* 	Install [Quit for Mac](http://mattdturner.com/wordpress/2011/05/mac-os-x-quit-application-from-command-line/)

* 	Open up a terminal, find and access your Wunderlist database.  Your database is located at `/Users/<your-username>/Library/Wunderlist/wunderlist.db`. So, you'd run:

	`$ sqlite3 /Users/<your-username>/Library/Wunderlist/wunderlist.db`
	
* 	Find out the IDs of the lists you'll be manipulating:

	`sqlite> select * from lists;`

* 	You'll see something like:

	`1|32952117|Inbox|1|13|0|1|0`
	
	`2|35968551|Today|3|11|0|0|0`
	
	`3|35968561|Daily Review|6|11|0|0|0`
	
	Where the first number is the list ID.

* 	Now, edit today.sql, and check / update the list IDs for your lists.  (There is probably a way to use sqlite variables here, but I don't know how).  Save it somewhere.

*	Update `today` and make sure the paths to your wunderlist.db and today.sql are correct.

*	Make `today` executable

	`$ chmod +x today`
	
	And move it to `/usr/local/bin`.

*	Put a few sample tasks in the "Today" list.

* 	From the command line, run `$ today`.

	Wunderlist will quit, any tasks that were filed under "Today" will be moved to "Daily Review".
	
**Voila!**




