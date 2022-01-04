/* Calculate the average time it takes to start an assistance request. */

SELECT avg(created_at-started_at) as average_wait_time
FROM assistance_requests;