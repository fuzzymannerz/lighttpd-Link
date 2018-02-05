#!/bin/ash

# Removes lighttpd-Link 
# (https://github.com/fuzzymannerz/lighttpd-Link)

#########################################################################################
## IMPORTANT: Running this script as-is will also remove your "http" folder by default.##
#########################################################################################

printf "\033c" #Clears the screen for ease of reading

echo ""
echo -e "###############################################################################################"
echo -e "## This will UNINSTALL lighttpd-Link from your Steam Link.                                   ##"
echo -e "##                                                                                           ##"
echo -e "## If you run this script with \"keephttp\" it will not remove any files in \"/home/steam/http\" ##"
echo -e "## (Otherwise, by default, this folder is removed.)                                          ##"
echo -e "##                                                                                           ##"
echo -e "## If you have any issues then please go to https://github.com/fuzzymannerz/lighttpd-Link    ##"
echo -e "###############################################################################################"
echo ""


# Function to remove the files
uninstall (){

	if [ $1 == true ] # If excluding the http DIR
		then
			printf "\033c" #Clears the screen for ease of reading
			echo -e "\e[1mRemoving installed Lighttpd-Link files...\e[0m"
			echo -e "\e[1m(Not including the \"/home/steam/http\" directory)\e[0m"

			rm /usr/local/lib/mod_access.la /usr/local/lib/mod_access.so /usr/local/lib/mod_accesslog.la /usr/local/lib/mod_accesslog.so /usr/local/lib/mod_alias.la /usr/local/lib/mod_alias.so /usr/local/lib/mod_auth.la /usr/local/lib/mod_auth.so /usr/local/lib/mod_authn_file.la /usr/local/lib/mod_authn_file.so /usr/local/lib/mod_cgi.la /usr/local/lib/mod_cgi.so /usr/local/lib/mod_compress.la /usr/local/lib/mod_compress.so /usr/local/lib/mod_deflate.la /usr/local/lib/mod_deflate.so /usr/local/lib/mod_dirlisting.la /usr/local/lib/mod_dirlisting.so /usr/local/lib/mod_evasive.la /usr/local/lib/mod_evasive.so /usr/local/lib/mod_evhost.la /usr/local/lib/mod_evhost.so /usr/local/lib/mod_expire.la /usr/local/lib/mod_expire.so /usr/local/lib/mod_extforward.la /usr/local/lib/mod_extforward.so /usr/local/lib/mod_fastcgi.la /usr/local/lib/mod_fastcgi.so /usr/local/lib/mod_flv_streaming.la /usr/local/lib/mod_flv_streaming.so /usr/local/lib/mod_indexfile.la /usr/local/lib/mod_indexfile.so /usr/local/lib/mod_proxy.la /usr/local/lib/mod_proxy.so /usr/local/lib/mod_redirect.la /usr/local/lib/mod_redirect.so /usr/local/lib/mod_rewrite.la /usr/local/lib/mod_rewrite.so /usr/local/lib/mod_rrdtool.la /usr/local/lib/mod_rrdtool.so /usr/local/lib/mod_scgi.la /usr/local/lib/mod_scgi.so /usr/local/lib/mod_secdownload.la /usr/local/lib/mod_secdownload.so /usr/local/lib/mod_setenv.la /usr/local/lib/mod_setenv.so /usr/local/lib/mod_simple_vhost.la /usr/local/lib/mod_simple_vhost.so /usr/local/lib/mod_ssi.la /usr/local/lib/mod_ssi.so /usr/local/lib/mod_staticfile.la /usr/local/lib/mod_staticfile.so /usr/local/lib/mod_status.la /usr/local/lib/mod_status.so /usr/local/lib/mod_uploadprogress.la /usr/local/lib/mod_uploadprogress.so /usr/local/lib/mod_userdir.la /usr/local/lib/mod_userdir.so /usr/local/lib/mod_usertrack.la /usr/local/lib/mod_usertrack.so /usr/local/lib/mod_vhostdb.la /usr/local/lib/mod_vhostdb.so /usr/local/lib/mod_webdav.la /usr/local/lib/mod_webdav.so /usr/local/lib/mod_wstunnel.la /usr/local/lib/mod_wstunnel.so /usr/local/sbin/lighttpd /usr/local/sbin/lighttpd-angel /usr/local/share/man/man8/lighttpd-angel.8 /usr/local/share/man/man8/lighttpd.8

			echo ""
			echo -e "\e[40m\e[1m\e[92mUninstall complete!\e[0m"
			echo -e "Goodbye!"
			echo ""
			exit 1
	fi

	if [ $1 == false ] # Delete all files, including http DIR
		then
			printf "\033c" #Clears the screen for ease of reading
			echo -e "\e[1mRemoving all installed Lighttpd-Link files...\e[0m"

			rm /usr/local/lib/mod_access.la /usr/local/lib/mod_access.so /usr/local/lib/mod_accesslog.la /usr/local/lib/mod_accesslog.so /usr/local/lib/mod_alias.la /usr/local/lib/mod_alias.so /usr/local/lib/mod_auth.la /usr/local/lib/mod_auth.so /usr/local/lib/mod_authn_file.la /usr/local/lib/mod_authn_file.so /usr/local/lib/mod_cgi.la /usr/local/lib/mod_cgi.so /usr/local/lib/mod_compress.la /usr/local/lib/mod_compress.so /usr/local/lib/mod_deflate.la /usr/local/lib/mod_deflate.so /usr/local/lib/mod_dirlisting.la /usr/local/lib/mod_dirlisting.so /usr/local/lib/mod_evasive.la /usr/local/lib/mod_evasive.so /usr/local/lib/mod_evhost.la /usr/local/lib/mod_evhost.so /usr/local/lib/mod_expire.la /usr/local/lib/mod_expire.so /usr/local/lib/mod_extforward.la /usr/local/lib/mod_extforward.so /usr/local/lib/mod_fastcgi.la /usr/local/lib/mod_fastcgi.so /usr/local/lib/mod_flv_streaming.la /usr/local/lib/mod_flv_streaming.so /usr/local/lib/mod_indexfile.la /usr/local/lib/mod_indexfile.so /usr/local/lib/mod_proxy.la /usr/local/lib/mod_proxy.so /usr/local/lib/mod_redirect.la /usr/local/lib/mod_redirect.so /usr/local/lib/mod_rewrite.la /usr/local/lib/mod_rewrite.so /usr/local/lib/mod_rrdtool.la /usr/local/lib/mod_rrdtool.so /usr/local/lib/mod_scgi.la /usr/local/lib/mod_scgi.so /usr/local/lib/mod_secdownload.la /usr/local/lib/mod_secdownload.so /usr/local/lib/mod_setenv.la /usr/local/lib/mod_setenv.so /usr/local/lib/mod_simple_vhost.la /usr/local/lib/mod_simple_vhost.so /usr/local/lib/mod_ssi.la /usr/local/lib/mod_ssi.so /usr/local/lib/mod_staticfile.la /usr/local/lib/mod_staticfile.so /usr/local/lib/mod_status.la /usr/local/lib/mod_status.so /usr/local/lib/mod_uploadprogress.la /usr/local/lib/mod_uploadprogress.so /usr/local/lib/mod_userdir.la /usr/local/lib/mod_userdir.so /usr/local/lib/mod_usertrack.la /usr/local/lib/mod_usertrack.so /usr/local/lib/mod_vhostdb.la /usr/local/lib/mod_vhostdb.so /usr/local/lib/mod_webdav.la /usr/local/lib/mod_webdav.so /usr/local/lib/mod_wstunnel.la /usr/local/lib/mod_wstunnel.so /usr/local/sbin/lighttpd /usr/local/sbin/lighttpd-angel /usr/local/share/man/man8/lighttpd-angel.8 /usr/local/share/man/man8/lighttpd.8
			rm -rf /home/steam/http

			echo ""
			echo -e "\e[40m\e[1m\e[92mUninstall complete!\e[0m"
			echo -e "Goodbye!"
			echo ""
			exit 1
	fi
}


# Check for arguments
if [ $# -gt 1 ] # If more than one is set.
	then
		echo -e "Only one argument is valid and that is \"\e[1mkeephttp\e[0m\"."
		echo -e "Please run the script again either with, or without \"\e[1mkeephttp\e[0m\"."
		echo ""
		exit 1
fi

if [ $# -eq 1 ] # If just one is set.
	then
		if [ $1 == "keephttp" ] # If it's the right one...
			then
				echo ""
				echo -e "\e[1m\e[32m\"keephttp\" detected.\e[0m The script will \e[1mNOT\e[0m remove your \"\e[34m/home/steam/http\e[0m\" directory!"
				echo -e "Press \e[1mENTER\e[0m to proceed or \e[1mCTRL+C\e[0m to cancel."
				read r
				echo ""
				uninstall "true" # uninstall and set keephttp to true
			else
				echo -e "Only one argument is valid and that is \"\e[1mkeephttp\e[0m\"."
				echo -e "Please run the script again either with, or without \"\e[1mkeephttp\e[0m\"."
				echo ""
				exit 1
		fi
		
fi

if [ $# -eq 0 ] # If no arguments are set
	then
		echo ""
		echo -e "\e[1m\e[31m\"keephttp\" NOT detected.\e[0m The script \e[1mWILL\e[0m remove your \"\e[34m/home/steam/http\e[0m\" directory!"
		echo -e "Press \e[1mENTER\e[0m to proceed or \e[1mCTRL+C\e[0m to cancel."
		read r
		uninstall "false" # uninstall and set keephttp to false
fi