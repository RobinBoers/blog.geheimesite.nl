---
title: 'Een virus maken! (Part 2)'
date: 2019-12-13T07:03:00.000-08:00
draft: false
url: /2019/12/een-virus-maken-part-2.html
---

Hi,  
Ik heb recent een blogpost gemaakt over het maken van een simpel virus. Vandaag gaan we iets verder. Ik ga je leren een iets moeilijker, maar nog steeds ongevaarlijk virus te maken. Laten we maar snel aan de slag gaan.  
  
Ik ga ervan uit dat je een code-editor hebt, en bestandsnaam extensies aanstaan.  
  
Het idee is dat als de gebruiker op het 'Mijn Computer' icoontje op zijn bureaublad klikt, het eruit ziet alsof Windows een virus heeft gedetecteerd.  
  
**Stap 1: de code**  
Maak een bestand aan in brackets, met de volgende inhoud:  
  
```
  
X=MsgBox("Error while opening Computer. Do you want to Fix this Error?",4+64,"Computer")  
X=MsgBox("Unable to Fix this Error. Do you want to scan this Computer",3+48,"Computer")  
X=MsgBox("Alert ! Virus Detected. Delete Virus? ",3+16,"Alert!")  
X=MsgBox("Unable to delete this Virus",1+64,"Critical Error")  
X=MsgBox("Virus Is activated",2+16,"Alert")  
X=MsgBox("Deleling System Files.....",2+16,"File Deletion")  
X=MsgBox("Virus is copying your password.....",2+48,"Virus Alert")  
X=MsgBox("Please Wait, Uploading your data to Server. Do you want to Stop it",4+64,"File Transfer")  
X=MsgBox("Could not stop. File Transfer Completed",1+16,"Completed")  
X=MsgBox("Your Computer is Hacked",0+64,"Alert")  
X=MsgBox("LOL+LOL=HIHI dit was een Prank",0+64,"Gepranked!")  

```[![](https://1.bp.blogspot.com/-DlH62zZmkSs/XfOlAMHOwXI/AAAAAAAAB0M/IdSxM9rhqtM7Ff_fywLJSJFw0BRm2GQfQCLcBGAsYHQ/s1600/Capture.PNG)](https://1.bp.blogspot.com/-DlH62zZmkSs/XfOlAMHOwXI/AAAAAAAAB0M/IdSxM9rhqtM7Ff_fywLJSJFw0BRm2GQfQCLcBGAsYHQ/s1600/Capture.PNG)  
Sla het op als _mijn computer.vbs_  
  
**Stap 2: het icoontje**  
Zet  het bestand op je bureaublad. Het ziet er niet heel overtuigend uit...  
  
Plaats het bestand op een plek waar de gebruiker het niet kan vinden, en klik er met de rechtermuisknop op.  
  
Klik op "Verzenden naar" en dan op "Bureaublad (snelkoppeling)"  
  
Verander de naam terug indien nodig.  
  
Klik met de rechtermuisknop op de snelkoppeling, en klik op "Eigenschappen"  
Je zou dit venster moeten zien:  

  

[![](https://1.bp.blogspot.com/-l2BpaMl3UUw/XfOmrwyS7iI/AAAAAAAAB0c/nv7acTReOIgvIypYMWOOhoOz1Wu0rWmSQCEwYBhgL/s640/Capture.PNG)](https://1.bp.blogspot.com/-l2BpaMl3UUw/XfOmrwyS7iI/AAAAAAAAB0c/nv7acTReOIgvIypYMWOOhoOz1Wu0rWmSQCEwYBhgL/s1600/Capture.PNG)  

  

Klik op "Change Icon..."  
  

[![](https://1.bp.blogspot.com/-ZYaZTJf2Q-8/XfOnWiW3VjI/AAAAAAAAB0g/gKJFpL-PenI_A8DBgvx6yYLU_2nhfnenACLcBGAsYHQ/s640/Capture.PNG)](https://1.bp.blogspot.com/-ZYaZTJf2Q-8/XfOnWiW3VjI/AAAAAAAAB0g/gKJFpL-PenI_A8DBgvx6yYLU_2nhfnenACLcBGAsYHQ/s1600/Capture.PNG)

  

Kies het icoontje met de computer, en klik op OK, en dan op APPLY en OK.

Als het goed is zou je nu dit moeten zien:

  

[![](https://1.bp.blogspot.com/-FwNDx-4eDus/XfOoDAaO0oI/AAAAAAAAB0o/7hqZsfZfhpQN4QIOptukLWHlAqL36HE_wCLcBGAsYHQ/s1600/Capture.PNG)](https://1.bp.blogspot.com/-FwNDx-4eDus/XfOoDAaO0oI/AAAAAAAAB0o/7hqZsfZfhpQN4QIOptukLWHlAqL36HE_wCLcBGAsYHQ/s1600/Capture.PNG)

Goed gedaan! 

Je hebt nu je tweede virus af!

  

Blijf coderen, en tot de volgende keer!

  

**Robin**