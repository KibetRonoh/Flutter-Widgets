# widget_app

Flutter widget documentation App with example .

## AnimatedIcon
Affiche une icône animée à une progression d' animation donnée .

#### Propriétés
- color → Color
La couleur à utiliser pour dessiner l'icône. 
final

- icon → AnimatedIconData
L'icône à afficher. Les icônes disponibles sont répertoriées dans AnimatedIcons .
final

- progress → animation < double >
La progression de l'animation pour l'icône animée.
final

- semanticLabel → String
Étiquette sémantique pour l'icône. 
final

- size → double
La taille de l'icône en pixels logiques. 
final
TextDirection → TextDirection
La direction du texte à utiliser pour le rendu de l'icône.

## AnimatedList
Conteneur de défilement qui anime les éléments lorsqu'ils sont insérés ou supprimés.

#### Propriétés
- controller → ScrollController
Un objet pouvant être utilisé pour contrôler la position dans laquelle défile cette vue défilement.
final

- initialItemCount → int
Le nombre d'éléments par lequel commence la liste. 
final

- itemBuilder → AnimatedListItemBuilder
Appelé, si nécessaire, pour créer des widgets d'élément de liste. 
final

padding → EdgeInsetsGeometry
La quantité d'espace par laquelle insérer les enfants.
final

- physics → ScrollPhysics
Comment la vue de défilement doit répondre aux entrées de l'utilisateur.
final

- primary → bool
S'il s'agit de la vue de défilement principale associée au parent PrimaryScrollController . 
final

- reverse → bool
Si la vue de défilement défile dans le sens de la lecture. 
final

- scrollDirection → Axis
L'axe le long duquel défile la vue par défilement. 
final

- shrinkWrap → bool
Si l'étendue de la vue de défilement dans scrollDirection doit être déterminée par le contenu affiché.
final

## AnimatedOpacity
Version animée de l' opacité qui fait automatiquement passer l'opacité de l'enfant sur une durée donnée, chaque fois que l'opacité donnée change.
L'animation d'une opacité est relativement coûteuse car elle nécessite de peindre l'enfant dans un tampon intermédiaire.

#### Propriétés
- child → widget
Le widget situé sous ce widget dans l'arborescence. [...]
final

- opacity → double
L'opacité de la cible.
final

- curve → curve
La courbe à appliquer lors de l'animation des paramètres de ce conteneur.
final, hérité

- duration → duration
La durée pendant laquelle animer les paramètres de ce conteneur.
final, hérité

## AnimatedPadding

Version animée de Padding qui transforme automatiquement l'indentation sur une durée donnée
 à chaque changement d'inset.
 
 #### Propriétés
 - child → widget
 Le widget situé sous ce widget dans l'arborescence. [...]
 final
 
 - opacity → double
 L'opacité de la cible.
 final
 
 - curve → curve
 La courbe à appliquer lors de l'animation des paramètres de ce conteneur.
 final, hérité
 
 - duration → duration
 La durée pendant laquelle animer les paramètres de ce conteneur.
 final, hérité
 
 ## AnimatedPositioned
 Version animée de Positionné qui transforme automatiquement la position de
  l'enfant sur une durée donnée à chaque changement de position.
  
 #### Propriétés
- buttom → double
  Le décalage du bord inférieur de l'enfant par rapport au bas de la pile.
  final
- child → widget
  Le widget situé sous ce widget dans l'arborescence. [...]
  final
- top → double
  La taille de l'enfant. 
  final
- left → double
  Le décalage du bord gauche de l'enfant par rapport à la gauche de la pile.
  final
- right → double
  Le décalage du bord droit de l'enfant par rapport au droit de la pile.
  final
- top → double
  Le décalage du bord supérieur de l'enfant par rapport au sommet de la pile.
  final
- width → double
  La largeur de l'enfant. 
  final
  
## AspectRatio
Un widget qui tente de dimensionner l'enfant à un rapport d'aspect spécifique.

#### Propriétés
- aspectRatio → double
Le ratio d'aspect à essayer d'utiliser.
final
- child → widget
Le widget situé sous ce widget dans l'arborescence. 
final, hérité

## ConstrainedBox
Un widget qui impose des contraintes supplémentaires à son enfant.

#### Propriétés
- constraints → BoxConstraints
Les contraintes supplémentaires à imposer à l'enfant.
final

## Draggable
Un widget qui peut être déplacé

#### Propriétés
- affinity → axe
Contrôle la manière dont ce widget entre en compétition avec d'autres gestes pour déclencher un glisser.
final
- axe → axe
L' axe pour restreindre le mouvement de ce draggable, si spécifié.
final
- child → widget
Le widget situé sous ce widget dans l'arborescence.
final
- childWhenDragging → Widget
Le widget à afficher à la place de l' enfant lorsqu'un ou plusieurs glissements sont en cours.
final
- data → T
Les données qui seront supprimées par ce draggable.
final
- dragAnchor → DragAnchor
Où ce widget devrait être ancré lors d'un glissement.
final
- feedback → Widget
Le widget à afficher sous le pointeur lorsqu'un glisser-déposer est en cours. 
final
- feedbackOffset → Offset
Le feedbackOffset peut être utilisé pour définir le point cible du test d’atteinte dans le but de
 trouver une cible de glissement. Cela est particulièrement utile si le feedback est transformé par rapport à l'enfant.
final
- ignoringFeedbackSemantics → bool
Indique si la sémantique du widget de commentaires est ignorée lors de la construction de l'arbre de sémantique. 
final
- maxSimultaneousDrags → int
Combien de dragues simultanées à supporter. 
final
- onDragCompleted → VoidCallback
Appelé lorsque l'objet déplaçable est supprimé et accepté par un DragTarget .
final
- onDragEnd → DragEndCallback
Appelé lorsque le glissable est abandonné. 
final
- onDraggableCanceled → DraggableCanceledCallback
Appelé lorsque l'objet déplaçable est supprimé sans être accepté par un objet DragTarget . 
final
- onDragStarted → VoidCallback
Appelé lorsque le glissable commence à être glissé.

## IndexedStack
Une pile qui montre un seul enfant parmi une liste d’enfants.

#### Propriétés
- index → int
L'index de l'enfant à montrer.

## InheritedWidget
Classe de base pour les widgets qui propagent efficacement les informations dans l'arborescence.

#### Propriétés
- child → widget
Le widget situé sous ce widget dans l'arborescence. 
final, hérité

## LimitedBox
Une boîte qui limite sa taille uniquement lorsqu'elle n'est pas contrainte.

#### Propriétés
- maxHeight → double
Limite de hauteur maximale à appliquer en l'absence d'une contrainte BoxConstraints.maxHeight .
final
- maxWidth → double
La limite de largeur maximale à appliquer en l'absence d'une contrainte BoxConstraints.maxWidth .
final




## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
