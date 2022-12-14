# =============================
# Template Helper
# =============================

MaitainingMenuTemplate ()
{
	FunctionStarterHelper;
	echo -n "Vérification de vos permissions... "; echo -e "✅";
	echo -n "Vérification du système... "; echo -e "✅";
	echo -n "Lancement de l'application... "; echo -e "✅";
	echo -e "\nSystème: \033[1;35m$SERVER_SYSTEM\033[0m";
	echo -e "Nom de l'hôte: \033[1;35m$SERVER_NAME\033[0m"
	echo -e "Nom de l'utilisateur: \033[1;35m$USER\033[0m"
	echo -e "\n***********************************************************"
	echo -e "****** Application de maintenance du serveur - \033[0;33m$APP_VERSION\033[0m ******";
	echo -e "***********************************************************\n"
	echo -e "1) Informations systèmes	  6) Paramètres de Postfix";
	echo -e "2) Entrer dans le terminal	  7) Paramètres d'Apache";
	echo -e "3) Mettre à jour un site	  8) Paramètres de MariaDB";
	echo -e "4) Réinitialiser un site	  9) Redémarrer un service";
	echo -e "5) Gérer un site           	 10) Gérer le serveur\n\n";
}

ServicesConfigTemplate ()
{
	SelectedOptionHelper "Redémarrer un service";
	echo -e "\nQuel service souhaitez-vous redémarrer ?"
	echo -e "----------------------------------------\n"
	echo -e "a) Apache";
	echo -e "b) MariaDB";
	echo -e "c) Postfix\n";
}

ApacheConfigTemplate () 
{
	SelectedOptionHelper "Configuration d'Apache";
	echo -e "\nQuel action souhaitez vous effectuer ?"
	echo -e "----------------------------------------\n"
	echo -e "a) Liste des Virtual-Hosts";
	echo -e "b) Voir le statut du service";
	echo -e "c) Redémarrer correctement le service";
	echo -e "d) Forcer le redémarrage du service\n";
}

PostfixConfigTemplate () 
{
	SelectedOptionHelper "Configuration de Postfix";
	echo -e "\nQuel action souhaitez vous effectuer ?"
	echo -e "----------------------------------------\n"
	echo -e "a) Envoyer un email de test";
	echo -e "b) Voir le statut du service";
	echo -e "c) Redémarrer correctement le service";
	echo -e "d) Forcer le redémarrage du service\n";
}

DatabaseConfigTemplate ()
{
	SelectedOptionHelper "Configuration de MariaDB";
	echo -e "\nQuel action souhaitez vous effectuer ?"
	echo -e "----------------------------------------\n"
	echo -e "a) Faire une export de la base de données [$DB_DATABASE]";
	echo -e "b) Voir le statut du service";
	echo -e "c) Redémarrer correctement le service";
	echo -e "d) Forcer le redémarrage du service\n";
}

ServerConfigTemplate ()
{
	SelectedOptionHelper "Gérer le serveur";
	echo -e "\nQuel action souhaitez vous effectuer ?"
	echo -e "----------------------------------------\n"
	echo -e "a) Mettre à jour le serveur";
	echo -e "b) Redémarrer le serveur\n";
}