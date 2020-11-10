
SELECT * FROM crime_scene_report WHERE date = 20201022 AND location = 'YRGO'
<br>
Marie Kalmnäs - "All I know is that the database was fine the day before. When I arrived to work next day everything was gone. I remember a suspicious car in the yrgo garage the 20201022, but I can only remember that the plate number was something with NT 5.. But I don't know who's plate number that is." 

SELECT person.id, person.name, yrgo_check_in.check_in_date, yrgo_check_in.plate_number, car.parking_spot, interview.transcript
FROM person 
JOIN yrgo_check_in 
JOIN car
JOIN interview
ON person.id = yrgo_check_in.person_id 
AND yrgo_check_in.plate_number = car.plate_number
AND interview.person_id = person.id
WHERE check_in_date = 20201022 AND car.plate_number LIKE '%NT 5%'

<br><br>
Vi får kika på car - plate_number. Plate_number leder till att man kan checka yrgo_check_in (eller person) . Då kan man connecta plate_number till person_id. 
<br><br>
Då får vi fram Elina. Vi behöverfå fram Elinas vittnesmål här som säger " I confess ! But I did not delete the database, I was the one who paid someone to do it. I don't
remember the person though, only their card number. The thing is I pay a lot of people to do my work load. But I paid this person three times." 
<br><br><br>
Då kör vi en en group by på Elinas card_number i transactions för 3 gångers transaction. Då får vi fram Vincents card number. 
<br>
SELECT comment, COUNT(to_card_number) AS suspect_card, to_card_number
FROM payments WHERE from_card_number = 4929035735989913
GROUP BY to_card_number
HAVING(suspect_card) = 3
<br>
SELECT car.card_number, person.plate_number, person.name
FROM car
JOIN person
ON car.plate_number = person.plate_number
WHERE car.card_number = 4929072437851742
<br><br>
Vincents statement "Yes I am sorry! I did not realise I deleted the whole thing until it was too late. I only thought I helped Elina with some work stuff. " 
<br><br>
Then you go to https://making-murder.netlify.app/ 