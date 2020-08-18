SELECT avg(total_duration)  average_total_duration
FROM (
SELECT sum(completed_at - started_at)  total_duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
)  total_cohort_assistance_duration