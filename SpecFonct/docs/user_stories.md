# User Stories - Anti-fraude

## Règles métier

Règle 1 : quand le montant d'une transaction dépasse 10 000 €, on évalue le risque en regardant le pays. Si le pays est sur la liste noire, la transaction est bloquée.

Règle 2 : un client VIP passe toujours, peu importe le montant et le pays.

## User Story principale

En tant que responsable de la gouvernance financière, je veux que les transactions à risque soient bloquées au moment du paiement afin de protéger l'entreprise contre la fraude.

## Critères d'acceptation

1. Si le montant dépasse 10 000 €, le pays de livraison est évalué selon la liste noire des pays.
2. Si le pays de livraison est sur la liste noire, la transaction est refusée et le client est notifié du refus de transaction pour suspicion de fraude.
3. Si le pays de livraison n'est pas sur la liste noire, la transaction est validée.
4. Si le montant est de 10 000 € ou moins, la transaction est validée sans évaluer le pays.
5. Si le client est VIP, la transaction est toujours validée, même si le montant dépasse 10 000 € et que le pays est sur la liste noire.
