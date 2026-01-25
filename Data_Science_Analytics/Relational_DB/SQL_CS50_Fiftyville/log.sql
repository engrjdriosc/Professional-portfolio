-- Keep a log of any SQL queries you execute as you solve the mystery.
/*
STOLEN OBJECT: duck.
DATE: 2023-07-16
STREET: Humphrey.
Took a flight with someone.
*/

--Query for get description about the event.
SElECT description
FROM crime_scene_reports
WHERE year = 2023
    AND month = 07
    AND day = 28
    AND street = 'Humphrey Street'
    AND description LIKE '%duck%';


--Taking on account the last info, it's needed to search more clues relate to the thie.,ft.
SElECT name, transcript
FROM interviews
WHERE year = 2023
    AND month = 07
    AND day = 28
    AND transcript LIKE '%bakery%';

--About Ruth's report, it's adecuate to look into the security log; searching for duration around to 10 min (between 8 min to 12m, on the same day).
    SElECT people.name, bk1.lp AS license_plate_found, bk1.minute_exit AS minute_exit
      FROM (SElECT minute - 10 AS minute_exit, license_plate AS lp
              FROM bakery_security_logs
             WHERE year = 2023
               AND month = 07
               AND day = 28
               AND hour = 10
               AND minute > 15
               AND minute < 26
               AND activity = "exit") AS bk1
      JOIN people
        ON people.license_plate = license_plate_found;

--About Eugene's report:
    SELECT people.name
      FROM (SElECT account_number
              FROM atm_transactions
             WHERE year = 2023
               AND month = 07
               AND day = 28
               AND atm_location LIKE '%Legget%') AS atm
INNER JOIN bank_accounts as ba
        ON atm.account_number = ba.account_number
INNER JOIN people ON ba.person_id = people.id
INNER JOIN (SElECT people.name AS name, bk1.lp AS license_plate_found, bk1.minute_exit AS minute_exit
      FROM (SElECT minute - 10 AS minute_exit, license_plate AS lp
              FROM bakery_security_logs
             WHERE year = 2023
               AND month = 07
               AND day = 28
               AND hour = 10
               AND minute > 15
               AND minute < 26
               AND activity = "exit") AS bk1
      JOIN people
        ON people.license_plate = license_plate_found) AS parkinglot
ON parkinglot.name = people.name;


--About Raymond's report:
SElECT flg.id AS flight_id, airports.city AS destination_city
  FROM airports
  JOIN (SELECT *
          FROM flights
          JOIN airports
            ON flights.origin_airport_id = airports.id
         WHERE flights.year = 2023
           AND flights.month = 07
           AND flights.day = 29
           AND airports.city = "Fiftyville"
      ORDER BY hour ASC
         LIMIT 1) AS flg
    ON flg.destination_airport_id = airports.id;

    SELECT *
    FROM airports
    WHERE id = 4;


--Searching for passengers in this flight who were called about it:
SELECT peoplecar.name AS accomplice
  FROM (SELECT people.name AS name1
          FROM passengers
    INNER JOIN people
            ON passengers.passport_number = people.passport_number
         WHERE passengers.flight_id = 36) AS NewYorkflight
  JOIN (SELECT people.name AS name
          FROM (SElECT account_number
                  FROM atm_transactions
                 WHERE year = 2023
                   AND month = 07
                   AND day = 28
                   AND atm_location LIKE '%Legget%') AS atm
         INNER JOIN bank_accounts as ba
                 ON atm.account_number = ba.account_number
         INNER JOIN people
                 ON ba.person_id = people.id
         INNER JOIN (SElECT people.name AS name, bk1.lp AS license_plate_found, bk1.minute_exit AS minute_exit
                       FROM (SElECT minute - 10 AS minute_exit, license_plate AS lp
                               FROM bakery_security_logs
                              WHERE year = 2023
                                AND month = 07
                                AND day = 28
                                AND hour = 10
                                AND minute > 15
                                AND minute < 26
                                AND activity = "exit") AS bk1
                       JOIN people
                         ON people.license_plate = license_plate_found) AS parkinglot
                ON parkinglot.name = people.name) AS peoplecar
    ON NewYorkflight.name1 = peoplecar.name;


--About Raymond's report: trying with luca and Bruce, then found out that bruce had this call to robin
SElECT people.name
  FROM (SElECT pc.receiver AS phonenumber
          FROM phone_calls AS pc
          JOIN people
            ON people.phone_number = pc.caller
         WHERE pc.year = 2023
           AND pc.month = 07
           AND pc.day = 28
           AND pc.duration < 60
          AND people.name = 'Bruce')
    AS callerfound
  JOIN people
    ON people.phone_number = callerfound.phonenumber;
