#This is to get up and running in the LL Nuke the Cuke test platform

# Background Info
# 1. Tests are checked into the respective repos for the projects und the nuke folder OR
#    They can be in a different repo, but should also be under the nuke folder
# 2. Generic LL-generic "pan project" steps or helpers are labeled with LL- as a prefix

To write a test:
While playing catch-up now
- Grab an SS-ticket from the README
- Implement it in that folder (unless it was placed in the wrong folder)
	1. The ticket might be a subset of a larger functional block
	2. Make a decision on if you can expand an existing file with another scenario OR
	   Create a new file
	3. ALL these tickets need to be tagged in the feature files (example: @ss-365 )
	   This will allow us to run a particular feature
	4. Make sure that all the depencies for the scenario are met when running (Given block needs to get you to the point of running)
	5. Make sure that you clear out the variables you are setting when you start (to not have legacy data from previous test)

- Mark the ticket # with "+++" at the beginning so that we know it has been checked off


Mail functionality
So Mailcatcher will allow you to run a local smtp server and verify what was sent. 
You have to configure the VM or instance to send the emails to whatever IP or localhost you are running on
NOTE: There is a universal mailcatcher running at:

