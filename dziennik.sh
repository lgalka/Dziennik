#!/bin/bash
echo 'Dziennik treningowy:' 
echo "Data:">> dziennik.txt
date >> dziennik.txt
echo 'Podaj:' 
echo '-Godzina rozpoczecia:'
	read hpoczatek
	echo "Poczatek treningu $hpoczatek" >> dziennik.txt
echo 'Godzina zakonczenia:'
	read hkoniec
	echo "Koniec treningu $hpoczatek" >> dziennik.txt
echo '-Rodzaj przebytego treningu:'
	echo 'Biegowy -  b'
	echo 'Silowy - s'
	echo 'Mieszany - m'
read typ
case "$typ" in

"b")
	echo "Rodzaj : Trening Biegowy" >> dziennik.txt
	echo '-Czas rozgrzewki'
		read hroz
	echo '-Ilosc kilometrow w rozgrzewce'
		read rozb
	echo "Czas rozgrzewki $hroz Dlugosc: $rozb km" >> dziennik.txt
	echo '-Dalszy trening'
	echo 'Ciagly -  c'
	echo 'Interwal- i'
	echo 'Tempo - t'
	read typt
	if [ $typt = "c" ]; then 
		echo "Ciagly:">>dziennik.txt
		echo 'Ilosc kilometow:'
			read ciaglyd
		echo 'Czas calkowity'
			read czasb;
		echo "Dystans:  $ciaglyd Czas: czasb;">>dziennik.txt	
	elif [ $typt = "i" ]; then 
		echo "Interwal:">>dziennik.txt
		echo 'Ilosc odcinkow'
			read ileinterw
		echo "Dlugosc odcinka:"
			read odcinek
			
		x=1;
		while [ $x -le $ileinterw ]; do
		
		echo "Czas w ktorym zostal przebyty"
			read czas
		echo "Odcinek: $odcinek Czas: $czas ">>dziennik.txt
		x=$x+1
		done;
	elif [ $typt = "t" ]; then 
		echo "Tempo:">>dziennik.txt
		echo 'Ilosc odcinkow w sumie:'
		read ilodcinkow
		x=1;
		while [ $x -le $ilodcinkow ]; do
		echo " odcinek nr: $i dystans"
			read odcinek
		echo "Czas w ktorym zostal przebyty"
			read czas
		echo "Odcinek nr $i:">>dziennik.txt
		echo "Dlugosc: $odcinek km Czas: $czas">>dziennik.txt
		x=$x+1
		done;
	else
		echo 'Rozbieganie'
		echo 'Dystans'
		read dystans
		echo "Czas w ktorym zostal przebyty"
		read czas
		echo "Rozbieganie: dystans: $dystans czas: 
$czas">>dziennik.txt;
	fi	;;
	
"m")
  	echo "Rodzaj : Mieszany" >> dziennik.txt
	echo '-Czas rozgrzewki'
	read hroz
	echo "Czas rozgrzewki $hroz km" >> dziennik.txt
	echo '-Ilosc kilometrow w rozgrzewce'
	read rozb
	echo "Dlugosc: $rozb" >> dziennik.txt
	echo 'Sila:'
	echo '-Pilki t/n'
	read odpp
	if [ $odpp = "t" ]; then
		echo 'Przod'
		echo "Pilki:">>dziennik.txt
		echo '-Ilosc serii'
			read seria
		echo '-Ilosc powtorzen w serii'
			read powt
		echo "Przod: ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt;
		echo 'Grzbiety'
		echo '-Ilosc serii'
			read seria
		echo '-Ilosc powtorzen w serii'
			read powt
		echo "Grzbiety: ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt;
	fi
	echo '-Plotki t/n'
	read odppl
	if [ $odppl = "t" ]; then
		echo "Plotki:">>dziennik.txt
		echo '-Ilosc serii'
			read seria
		echo '-Ilosc powtorzen w serii'
			read powt
		echo "  ilosc serii $seria powtorzen 
$powt">>dziennik.txt;
	fi
	echo '-Skipy t/n'
	read odps
	if [ $odps = "t" ]; then
		echo "Skipy:">>dziennik.txt
		echo '-Ilosc serii'
			read seria
		echo '-Ilosc powtorzen w serii'
			read powt
		echo "ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt;
	fi	;;
"s")
	echo "Rodzaj : Silowy" >> dziennik.txt
	echo '-Pilki t/n'
	read odpp
	if [ $odpp = "t" ]; then
		echo 'Przod'
		echo "Pilki:">>dziennik.txt
		echo '-Ilosc serii'
		read seria
		echo '-Ilosc powtorzen w serii'
		read powt
		echo "Przod: ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt
		echo 'Grzbiety'
		echo '-Ilosc serii'
		read seria
		echo '-Ilosc powtorzen w serii'
		read powt
		echo "Grzbiety: ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt;
	
	fi
	echo '-Plotki t/n'
	read odppl
	if [ $odppl = "t" ]; then
		echo "Plotki:">>dziennik.txt
		echo '-Ilosc serii'
		read seria
		echo '-Ilosc powtorzen w serii'
		read powt
		echo "  ilosc serii $seria powtorzen 
$powt">>dziennik.txt;
	fi
	echo '-Skipy t/n'
	read odps
	if [ $odps = "t" ]; then
		echo "Skipy:">>dziennik.txt
		echo '-Ilosc serii'
			read seria
		echo '-Ilosc powtorzen w serii'
			read powt
		echo "ilosc serii: $seria powtorzen: 
$powt">>dziennik.txt;
	fi
	echo '-Silownia t/n'
		echo "Silownia:">>dziennik.txt
		read odpsi
		if [ $odpsi = "t" ]; then
			echo 'Nogi t/n'
			read odpn
				if [ $odpn = "t" ]; then
					echo "-Nogi">>dziennik.txt;
				fi
			echo 'Plecy t/n'
				read odpp
				if [ $odpp = "t" ]; then
					echo "-Plecy">>dziennik.txt;
				fi
			echo 'Barki t/n'
				read odpb
				if [ $odpb = "t" ]; then
					echo "-Barki">>dziennik.txt;
				fi
			echo 'Klatka t/n'
				read odpk
				if [ $odpk = "t" ]; then
					echo "-Klatka">>dziennik.txt;
				fi;
		fi	;;	
esac
echo "------------------------------------------------">>dziennik.txt


