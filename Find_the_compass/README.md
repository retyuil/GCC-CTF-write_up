
# Find the compass 

Dans ce défi web, on a accès au code source du site. On se rend vite compte que la manière de générer la clé de session est suspecte.

En générant 1 000 000 de clés différentes, on remarque rapidement que les clés se répètent. On utilise ces 1 000 000 de clés pour effectuer une attaque de brute force sur la signature du cookie de session à l'aide de l'outil Flask-Unsign (https://github.com/Paradoxis/Flask-Unsign).

Une fois cette étape terminée, on peut forger un cookie nous identifiant comme administrateur.

La dernière étape consiste à exploiter une vulnérabilité de type "format string bug" en Python :

```
class Renderer(object):
    """
    Proof of Concept to one day get rid of Jinja2. Who needs Jinja2 ?
    """
    def __init__(self, coordinates: str):
        # Only a wise administrator can retrieve the coordinates of the compass.
        self.coordinates = coordinates

    def render(self, author, content):
        author = escape(author)
        content = escape(content)
        htmlTemplate = f"<p><strong>{author}</strong>: {content}</p>"
        try:
            #Use escape for XSS protection
            return (htmlTemplate.format(self=self))
        except Exception as e:
            print(e)
            return "An error occured while rendering the reminder."
```



