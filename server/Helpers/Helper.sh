# =============================
# Helper Functions
# =============================

# @param string $1
maintaining ()
{
	FunctionStarterHelper;
	if [ ${1:-0} != "--skip" ] 
	then
		echo -n "Vérification de vos permissions... "; sleep 0.5; echo -e "✅"; sleep 0.2
		echo -n "Vérification du système... "; sleep 0.5; echo -e "✅"; sleep 0.2
		echo -n "Lancement de l'application... "; sleep 0.5; echo -e "✅"; sleep 0.2
	fi
	while true; do
		MaitainingMenuTemplate;
    	echo -n -e "Indiquer l'option désirée [\033[0;33mnull\033[0m]: "; read option;
    	case $option in
    		1) SystemInformationsCommand; break;;
    		2) EnterShellCommand; break;;
    		3) UpdateApplicationCommand; break;;
    		4) SetupApplicationCommand; break;;
    		5) EnvApplicationCommand; break;;
    		6) PostfixConfig; break;;
        	7) ApacheConfig; break;;
        	8) DatabaseConfig; break;;
        	9) ServicesConfig; break;;
        	10) RestartServerCommand; break;;
            *) ;;	
    	esac
    done;
}

# @param string $1
SelectedOptionHelper ()
{
	echo -e "Option sélectionnée : \033[0;33m$1\033[0m.\n"
}

FunctionStarterHelper ()
{
	clear
}

# @param string $1
ReturnToMenuHelper ()
{
	if [ ${1:-0} == "--force" ] 
	then
		maintaining --skip;
	else
		while true; do
			echo -n -e "\nRetourner à l'accueil (écrire :q) "; read quit;
			case $quit in
				:q) maintaining --skip; break;;
				*) ;;	
			esac
    	done;
	fi
}

RestartServerHelper ()
{
	sudo shutdown -r now;
}

StopExecutionHelper ()
{
	exit;
}

PrintDotsHelper ()
{
	for i in {1..3} 
	do
		sleep 1;
		printf "."; 
	done;
}