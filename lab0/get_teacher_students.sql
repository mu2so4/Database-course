SELECT
	"Фамилия" + SPACE(1) + "Имя" + SPACE(1) + IFNULL("Отчество", '')
		AS "ФИО преподавателя",
	"Student"."Фамилия" + SPACE( 1 ) + "Student"."Имя" + SPACE( 1 ) +
		IFNULL( "Student"."Отчество", '' ) AS "ФИО студента",
	"Student"."Номер зачетки",
	"Student"."Номер группы"
FROM "Teacher"
	INNER JOIN "Class"
		ON "Teacher"."ID" = "Class"."Преподаватель"
	INNER JOIN "Student"
		ON "Class"."Группа" = "Student"."Номер группы"
WHERE UPPER("ФИО преподавателя") LIKE ('%' + UPPER(:Teacher_name_pattern) + '%')
ORDER BY
	"ФИО преподавателя" ASC,
	"ФИО студента" ASC
