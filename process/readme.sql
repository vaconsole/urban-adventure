create view arc_30 as
SELECT
    title,
    key,
    value as component_name
FROM
    readme,
    json_each(readme.list);

create view arc_40 as
SELECT
    title,
    key,
    value as component_link
FROM
    readme,
    json_each(readme.links);

create view arc_50 as
select
    *
from
    arc_30
    inner join arc_40 on arc_30.title = arc_40.title
    AND arc_30.key = arc_40.key;

create view arc_output as
select
    title,
    component_name,
    component_link
from
    arc_50
where
    title <> 'Contributing';