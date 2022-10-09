SELECT
	"Student"."Фамилия" + SPACE( 1 ) + "Student"."Имя" + SPACE( 1 ) +
		IFNULL( "Student"."Отчество", '' ) AS "ФИО студента",
	"Student"."Номер зачетки",
	"Student"."Номер группы"
FROM "Teacher"
	INNER JOIN "Class"
		ON "Teacher"."ID" = "Class"."Преподаватель"
	INNER JOIN "Student"
		ON "Class"."Группа" = "Student"."Номер группы"
WHERE "ID"=:Teacher_id
ORDER BY
	"ФИО студента" ASC
