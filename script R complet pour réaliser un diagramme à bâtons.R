
# SCRIPT R : CREATION D'UN DIAGRAMME A BATONS


# 1. Creer les donnees a representer
# Les categories peuvent representer, par exemple, des services de sante
services <- c("Medecine", "Pediatrie", "Chirurgie", "Maternite", "Laboratoire")

# Les valeurs representent le nombre de patients par service
effectifs <- c(120, 85, 60, 95, 70)

# 2. Ouvrir une fenetre graphique
# Cette etape est facultative : R ouvre generalement le graphique automatiquement
# dans sa fenetre de visualisation.

# 3. Creer le diagramme a batons
barplot(
  height = effectifs,       # Valeurs ou hauteurs des batons
  names.arg = services,     # Noms des categories sur l'axe horizontal
  main = "Nombre de patients par service", # Titre du graphique
  xlab = "Services de sante", # Titre de l'axe horizontal
  ylab = "Nombre de patients",# Titre de l'axe vertical
  col = "steelblue",        # Couleur des batons
  border = "black",         # Couleur des contours
  las = 2,                  # Afficher les noms verticalement
  ylim = c(0, 140),         # Limites de l'axe vertical
  cex.names = 0.8           # Taille des noms des categories
)

# 4. Ajouter les valeurs au-dessus de chaque baton
# Les nombres facilitent la lecture et l'interpretation du graphique
text(
  x = seq_along(effectifs), # Position de chaque baton
  y = effectifs,            # Hauteur correspondant a chaque valeur
  labels = effectifs,       # Valeur affichee au-dessus du baton
  pos = 3,                  # Placer le texte au-dessus des batons
  cex = 0.9                 # Taille des valeurs affichees
)

# 5. Ajouter une grille horizontale pour faciliter la lecture
# La grille est ajoutee en arriere-plan dans une nouvelle version du graphique
# Pour l'integrer proprement, on peut aussi utiliser grid() avant text()
