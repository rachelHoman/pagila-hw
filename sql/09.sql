/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT staff.first_name, staff.last_name, sum(amount) FROM payment JOIN staff USING (staff_id) WHERE payment_date >= '2020-01-01' AND payment_date < '2020-02-01' GROUP BY staff.staff_id;
