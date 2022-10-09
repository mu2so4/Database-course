SELECT
	"Weekday"."День недели",
	"Timetable"."Время начала",
	"Timetable"."Время конца",
	"Аудитория",
	"Subject"."Полное название" AS "Дисциплина",
	"Class_format"."Название" AS "Тип пары",
	"Группа"
FROM "Class"
	INNER JOIN "Weekday"
		ON "Class"."День недели" = "Weekday"."ID"
	INNER JOIN "Timetable"
		ON "Class"."Номер пары" = "Timetable"."Порядок"
	INNER JOIN "Discipline"
		ON "Class"."Предмет" = "Discipline"."ID"
	INNER JOIN "Subject"
		ON "Discipline"."Содержание" = "Subject"."ID"
	INNER JOIN "Class_format"
		ON "Class"."Тип пары" = "Class_format"."ID"
WHERE "Преподаватель" = :Teacher_id
ORDER BY
	"Weekday"."ID" ASC,
	"Номер пары" ASC
