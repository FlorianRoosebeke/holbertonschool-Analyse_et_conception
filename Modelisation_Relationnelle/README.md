## Analyse de legacy_data.csv

Le fichier contient des données de commandes, mais chaque ligne mélange
des informations sur la commande, le client, l'adresse et le produit.

## Règles de gestion

- Un client peut passer plusieurs commandes.
- Une commande appartient à un seul client.
- Un client possède un nom et un contact.
- Une commande possède un identifiant unique, une date d'achat, un statut et une adresse de livraison.
- Une commande contient au moins une ligne de commande.
- Une ligne de commande concerne un seul produit et possède une quantité.
- Un produit peut apparaître dans plusieurs lignes de commande.
- Un produit peut exister même s'il n'a jamais été commandé.
- Un produit possède un code unique, une désignation et un prix unitaire hors taxes.

## Cardinalités

### CLIENT / COMMANDE

- Un client peut passer 0 à N commandes : `0,N`.
- Une commande est passée par exactement 1 client : `1,1`.

### COMMANDE / LIGNE_COMMANDE

- Une commande contient au moins 1 ligne de commande : `1,N`.
- Une ligne de commande appartient à exactement 1 commande : `1,1`.

### PRODUIT / LIGNE_COMMANDE

- Un produit peut apparaître dans 0 à N lignes de commande : `0,N`.
- Une ligne de commande concerne exactement 1 produit : `1,1`.

## Conclusion

Le fichier `legacy_data.csv` mélange des informations sur les clients,
les commandes, les adresses de livraison et les produits.

Comme une même information est répétée sur plusieurs lignes, cela peut
créer des erreurs.

Il faut donc séparer les données dans plusieurs entités :
`CLIENT`, `COMMANDE`, `PRODUIT` et `LIGNE_COMMANDE`.