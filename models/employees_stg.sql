{{ config(materialized='view',
  pre_hook=[
  log_start_time(this)
  ],
  post_hook=[
   log_end_time(this)
  ]

) }}             

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Email,
    JobTitle,
    HireDate,
    ManagerID,
    Address,
    City,
    State,
    ZipCode,
    CONCAT(FirstName, ' ', LastName) AS EmployeeName,
    Updated_at
FROM
{{ source('landing', 'employees') }}
