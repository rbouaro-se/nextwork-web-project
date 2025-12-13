#!/bin/bash
# Stop Tomcat to safely replace the WAR file
sudo systemctl stop tomcat

# Remove the existing WAR file and expanded directory
sudo rm -rf /usr/share/tomcat/webapps/nextwork-web-project.war
sudo rm -rf /usr/share/tomcat/webapps/nextwork-web-project/

# Start Tomcat (will be done by ApplicationStart hook, but ensure it's stopped for now)
# sudo systemctl start tomcat  # Commented out, as ApplicationStart will handle it