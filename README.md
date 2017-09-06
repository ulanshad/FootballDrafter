# FootballDrafter

This is a basic football drafting application written for the Moof Fantasy Football League - it's designed to allow for users to browse available players and review picks, and for an admin to draft players to teams in real time. It includes basic research capabilities, in that past and projected player stats can be added.

This was written circa 2012 as a Visual C# / ASP.NET Web Application using MVC (4 I believe). It was based on earlier designs from a Visual C# deskop application. The current iteration is desinged to run on Azure, though its essentially identical to the one that had been run on a local IIS/SQL Server instance. SQL interactions through entity.

If attempting to run your own, you'll need to replicate the database somewhere - a backup file is in the data files directory (ca 2012).