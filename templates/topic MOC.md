# Inbox
```dataview
list "<br>" + title 
from [[]] and !outgoing([[]]) 
```
# Index: [[]]

## 

# Notes
```dataview
LIST rows.bullets.text 
FLATTEN file.lists as bullets
WHERE contains(file.folder, this.file.folder) and (meta(bullets.section).subpath = "Notes" or meta(bullets.section).subpath = "notes")
SORT file.name desc
GROUP BY file.link
```