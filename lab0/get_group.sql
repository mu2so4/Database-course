SELECT
	"Фамилия" + SPACE(1) + "Имя" + SPACE(1) + IFNULL("Отчество", '')
		AS "ФИО",
	"Номер зачетки"
FROM "Student"
WHERE "Номер группы" = :Group_number
ORDER BY
	"ФИО" ASC
