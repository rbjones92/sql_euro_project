# Write a SQL query to find the country where the most assistant referees come from,
# and the count of the assistant referees

SELECT SUM(COUNT(ass_ref_id)), sc.country_name, count(arm.country_id) as ass_refs_per_country

FROM (
SELECT sc.country_name, count(arm.country_id) as ass_refs_per_country
FROM asst_referee_mast as arm
INNER JOIN
soccer_country as sc
ON arm.country_id = sc.country_id
GROUP BY sc.country_name
ORDER BY ass_refs_per_country DESC
) sub

# cannot count distinct ass refs from asst_referee_mast

/*
England	4
Russia	3
Czech Republic	2
France	2
Germany	2
Hungary	2
Italy	2
Netherlands	2
Norway	2
Poland	2
Romania	2
Serbia	2
Slovenia	2
Spain	2
Sweden	2
Turkey	2
Republic of Ireland	1
Scotland	1
Slovakia	1
*/