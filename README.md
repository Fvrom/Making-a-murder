# Making-a-murder
Assignment in SQL 

TO DO: 
There's been a crime! It is up to you to solve it. 
The detectives Daniel and Ida seems to have lost their notes but managed to create a database for you to look into. 
They remember it was a cybercrime and the location was at Yrgo. The date of the crime took place 20201022. 


CRIME: 
Deleted the whole database. 


Clues: 

Incheckning Utcheckning
Finans 



Interview: Witness:

Marie Kalmnäs - "All I know is that the database was fine the day before. (Datum här?) When I arrived to work next day everything
was gone. " 

Viktor Puke - " I was there when I heard the database was gone! I didn't see anything. " 

Elina Åberg - " I think Marie knows more than I. " 



Guilty: 
Elina did it! 
Vincent pröjsade. 

WHY? 
Elina was big in debt. 
Vincent just wanted the database gone and thought to put the blame on Elina. 

Se vilka som checkat in på yrgo 20201022. 
SELECT person.id, person.name, yrgo_check_in.check_in_date 
FROM person 
INNER JOIN yrgo_check_in 
ON person.id = yrgo_check_in.person_id
WHERE check_in_date = 20201022; 



Marie says I rememeber a suspect car on parking spot 27.. But I don't know who's spot that is. 

Vi får kika på car - parking_spot. Det leder till ett plate_namer. Plate_number leder till att man kan checka yrgo_check_in (eller person) . Då kan man connecta plate_number till person_id. 

Då får vi fram Elina. Vi behöverfå fram Elinas vittnesmål här som säger " I confess ! But I did not delete the database, I was the one who paid someone to do it. I don't
remember the person though, only their card number. The thing is I pay a lot of people to do my work load. But I paid this person three times." 


då kör vi en en group by på Elinas card_number i transactions för 3 gångers transaction. Då får vi fram Vincents card number. 

Vincents statement "Yes I am sorry! I did not realise I deleted the whole thing until it was too late. I only thought I helped Elina with some work stuff. " 
