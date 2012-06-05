---
layout: post
title: "prova jekyll (titolo in 'title')"
description: ""
category: 
tags: []
published: false
---
{% include JB/setup %}



Dopo aver provato [calepin](aadm.calepin.co) e [scriptogr.am](http://scriptogr.am/aadm) ho deciso di cambiare un'altra volta e farmi uno static blog tutto mio. 

Esempio di blockquote:

> esempio di qualche stronzata che altri hanno scritto.

> seconda linea blah blah


## header 2 / esempi tabelle ##

Prova di tabella:

| id       | details                       | €    |  where
|--------- | ----------------------------- | -----: | -----------:
| CPU       | Intel Core i5-2500K 3.3GHz    | 185.25 | amazon.it  
| M/board   | Gigabyte GA-H61N-USB3         | 78.36  | stele.it  
| ram       | Corsair 2x4Gb XMS             | 41.24  | stele.it  
| hd        | Corsair ssd 115GB SATAII F115 | 108.50 | stele.it  
| case      | Silverstone SST-SG05B 300W    | 101.30 | stele.it  
| wifi      | TP-Link USB TL-WN727N         | 7.66   | stele.it  
| bluetooth | Belkin Bluetooth USB adapter  | 8.54   | amazon.it  

seconda tabella:

| id       | geekbench  | xbench
|--------- | ----------:| ----------:  
|hack-mini | 8953       | 336  
|mb air    | 2087       | 117  
|macmini   | 3744       | 215  
|mb pro i7 | 9608       | --  


Uso [jekyll](http://jekyllbootstrap.com) e [github](www.github.com); il primo è un motore che serve per convertire un insieme di file (gli articoli scritti in markdown e i vari file di configurazione) in un sito web, praticamente lo stesso principio dietro calepin e scriptogram. Il bello (per un nerd) è l'hosting del sito (generato in locale) presso github, che sarebbe un sistema di version control che i programmatori di tutto il mondo usano per sviluppare codice e condividerlo con altri, tutto in spirito open-source / free software / fiori e margherite[^nota].

### header 3 / liste

Prova **liste numerate**:

1. write fuckin post
2. convert all html files in markdown
3. do some low-tech shell and python to batch convert 


Prova **liste senza numeri**:

* item a
* item b
* item c
* subitem (`shift-fn-return` on macbook air keyboard)
* subitem don't work


### header 3

Prova script:

	#!/bin/sh
	for n in *.html
	do
		rm -f temp.txt
	    echo "==> processing" $n
	    ./html2text.py $n > temp.txt
	    ./tumblr2calepin.py temp.txt
	done



Ho scritto precedentemente che la cosa che mi interessava di più rispetto a un blog convenzionale come [wordpress](aadm.wordpress.com) o [tumblr](aadm.tumblr.com) era il controllo totale dei miei articoli, che adesso risiedono su una directory di dropbox a cui attinge scriptogram per generare il blog al volo (cioè ogni volta che clicco sul pulsantino di sincronizzazione). QUello che migliora adesso, usando jekyll+github è la velocità del tutto, cioè la possibilità di vedere in locale i cambiamenti che faccio al template e come vengono fuori i miei post una volta formattati attraverso jekyll. Perché è vero che posso usare Marked per fare il preview degli articoli scritti in markdown ma è vero anche che molte ci sono delle piccole differenze che per un pignolo come me possono essere devastanti.

[^nota]: esempio di footnote
