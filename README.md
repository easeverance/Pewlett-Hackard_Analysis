# Pewlett-Hackard_Analysis

## Overview
----------------------------------------------------------
HR managers at Pewlett-Hackard are concerend with what they call the upcoming 'silver tsunami', a large retiring pool of employees.  They have requested information on the total number of employees that will be eligible for retirement by title.  In an effort to be better prepared for this mass retirement the HR managers have also requested a report that will identify specific employees based on a pre-determined factor ( birth date between 1/1/1965 - 12/31/1965) who could potentially be mentors to up and coming employees.  This is in essence an effort to prevent tribal knowledge loss. 

Deliverable 1: The number of retiring employees by title
Deliverable 2: Employees eligible for the mentorship program


## Results
---------------------------------------------------------
In total there are 90,398 employees that are eligible to retire, based off of a birthdate between 1/1/1962 and 12/31/1965.  The 90,398 is broken down to 29,414 Senior Engineers, 28,254 Senior Staff, 14,222 Engineers, 12,243 Staff, 4,502 Technique Leaders, 1,761 Assistant Engineers, and 2 Managers.  

![image](https://user-images.githubusercontent.com/90973718/140632733-77daf28b-8498-4cbd-938c-16a3abf09e3e.png)

![Count by Title ](https://user-images.githubusercontent.com/90973718/140680737-1a4e95fc-5789-430a-b192-9d08a9113b93.png)

It should be pointed out that out of the 90,398 employees set to retire not all of them are still with the company.  When the data is manipulated to only look at employees whose to_date is '9999-01-01', this brings down the total number of current employees set to retire to 33,118.

![current employees set to retire](https://user-images.githubusercontent.com/90973718/140680794-8a21b3c7-98cf-476c-92ac-3c7636e8ffb0.png)

![current_retiring_titles](https://user-images.githubusercontent.com/90973718/140680820-fb3ad7c8-3c17-4564-b8ba-43b9e2818173.png)

However, using the original data four major points can be concluded. 
1. There indeed is a large number of employees that are set to retire in the coming years.  Many of these employees are of the senior level resulting in a possible loss of tribal knowledge.
2. Looking at the retirement_titles you are able to see the employment from and to date.  This could potentially give managers a sense of how long an employee has been with the company.  If there are significant amounts of employees that have not been with the company long then the risk of losing tribal knowledge dimishes.  
3. There is a significant number of current employees that could potentially be able to be mentors in order to train the next upcoming group of workers. 

![Count of Mentor by Role](https://user-images.githubusercontent.com/90973718/140681454-1a52b17d-8bde-4bc0-ba0d-dfdd8832eba1.png)

4. In addition there seems to be a sufficient spread of possible mentors across the job role spectrum.  

## SUMMARY

-------------------------------------------------------------------------------------------------------------
In conclusion in the next couple of years Pewlett Hackard can expect to see a turnover of 90K employees (using only the employee table) and 30K (using the current employee table) to be retiring in the "silver tsunami", broken up between 7 different job roles (titles).  This has a potential to leave a very big gap in roles but also within departments.  Thankfully the HR management came up with a mentorship program.  As stated above there are quite a few mentors within each role.  In even better data analysis news is that there seems to be enough mentors within each department.  The only draw back is that this analysis didn't dive deeper into locations.  There could potentially be locations were there is no mentor availble, yet a large population of retiring employees. 

![Mentor Eligible by department](https://user-images.githubusercontent.com/90973718/140683511-a186b191-29bc-4c39-8da8-b182d4d876fc.png)








