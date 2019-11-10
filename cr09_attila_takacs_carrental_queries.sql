SELECT employee.first_name, employee.last_name, branch_details.email
FROM employee
JOIN branch ON branch.employee_id = employee.id
JOIN branch_details ON branch.branch_details_id = branch_details.id;

-- you like to send an email to the customer about the car 

SELECT customer_details.first_name, customer_details.last_name, customer_details.email, car_details.make, car_details.model
FROM customer_details
JOIN customer ON customer.customer_details_id = customer_details.id
JOIN contract ON contract.customer_id = customer.id
JOIN car ON contract.car_id = car.id
JOIN car_details ON car_details.id = car.car_details_id
ORDER BY email;

-- migth want to check all the seven seaters

SELECT * FROM car_details WHERE seats = 7;

-- and here we can check the available, diesel 7 seaters in every single branch 


SELECT car_details.availability, car_details.seats, car_details.fuel, branch.id
FROM car_details
JOIN car ON car.car_details_id = car_details.id
JOIN branch ON branch.id = car.branch_id
WHERE fuel = 'Diesel' AND availability = 'Yes' AND seats = 7
ORDER BY branch.id;