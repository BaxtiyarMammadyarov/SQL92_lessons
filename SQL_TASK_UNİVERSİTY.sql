USE University ;

-------------------------------------------SUALLAR--------------------------------------------

--1)	Tələbə cədvəlindəki bütün sətirləri sorğulayın

SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
----------------------------------------------------------------------------------------
--2)	Tələbə cədvəlindəki tələbənin adını və soyadını və sinifini sorğulayın
SELECT 
	S.name,
	S.surname,
	S.class
FROM
	DBO.Students S
--WHERE
-------------------------------------------------------------------------------------
--3)	Tələbə cədvəlindəki oğlan tələbələri sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.gender='K';
-------------------------------------------------------------------------------------
--4)	Tələbə cədvəlindəki siniflərin adını hər sinif bir dəfə görüləcək şəkildə sorğulayın

SELECT 
	DISTINCT
	S.class
FROM
	DBO.Students S
--WHERE
--------------------------------------------------------------------------
--5)	Tələbə cədvəlindəki qız tələbələrdən sinifi 10A olanları sorğulayın

SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.gender='Q' AND 
	S.class='10A';
--------------------------------------------------------------------------------------
--6)	Tələbə cədvəlindəki 10A və ya 10B sinifindəki tələbələrin adını, soyadını və sinifini sorğulayın
SELECT 
	S.name,
	S.surname,
	S.class
FROM
	DBO.Students S
WHERE
	S.class IN ('10A','10B');
--	S.class='10A' OR S.class='10B'

-----------------------------------------------------------------
--7)Tələbə cədvəlindəki tələbələrin adını (name), soyadını (surname) və tələbə nömrəsini (id) “AS” ifadəsini istifadə edərək sorğulayın
SELECT 
	S.id AS TELEBE_NO,
	S.name AS AD,
	S.surname AS SOYAD
FROM
	DBO.Students S
--WHERE
-----------------------------------------------------------------------------------------------------------
--8)	Tələbə cədvəlindəki tələbələrin adını və soyadını birləşdirərək “Adsoyad” olaraq sorğulayın
SELECT 
	S.name +' '+S.surname AS Ad_Soyad
FROM
	DBO.Students S
--WHERE

--------------------------------------------------------------------------------------------------
--9)	Tələbə cədvəlindəki adı “A” hərfi ilə başlayan tələbələri sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
		S.name LIKE'A%';

---------------------------------------------------------------------------------------
--10)	 Tələbə cədvəlindəki tələbələrdən tələbə nömrəsi 2 və 8 arasında olan tələbələri sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
		S.id BETWEEN 2 AND 8;
--- S.id>=2 AND S.id<=8

------------------------------------------------------------------------------------------------------------------
--11)	Tələbə cədvəlində adları Fatimə, Orxan və Esmira olan tələbələri sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.name IN('Fatimə', 'Orxan' ,'Esmira');
----------------------------------------------------------------------------------------------

--12)	Tələbə cədvəlindəki tələbələrdən adı A, D və K ilə başlayan tələbələri sorğulayın

SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.name LIKE'[ADK]%';
-------------------------------------------------------------------------------------------------------------------------------------
--13)	Tələbə cədvəlindəki sinifi 9A olan oğlan tələbələri və ya sinifi 9B olan qız tələbələrin adını, soyadını, cinsiyyətini və sinifini sorğulayın.
SELECT 
	S.name,
	S.surname,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
    (S.gender='K' AND S.class='9A') 
	OR   
	(S.gender='Q' AND S.class='9B');
------------------------------------------------------------------------------------------------------------------
---14)	Tələbə cədvəlindəki oğlanlardan sinifi 10A və ya 10B olanları sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.gender='K' AND
	S.class IN('10A','10B');
------------------------------------------------------------------------------------------------------
--15)	Tələbə cədvəlindəki tələbələrdən doğum ili 1991 olan tələbələri sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.birth_year=1991;

-------------------------------------------------------------------------------------------------------
--16)	Tələbə cədvəlindən tələbə nömrəsi 1 ilə 6 arasında olan qız tələbələri sorğulayın

SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.gender='Q' AND
	S.id BETWEEN 1 AND 6;
---------------------------------------------------------------------------------------------------------------------------
--17)	Tələbə cədvəlindəki tələbələri adlarına görə sıralayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY S.name;
-------------------------------------------------------------------------------------------------
--18)	Tələbə cədvəlindəki tələbələri adına, adı eyni olanlarında soyadlarına görə sıralayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY S.name,S.surname;
-------------------------------------------------------------------------------------------------------------------------
--19)	Tələbə cədvəlindəki tələbələri adına, adı eyni olanlarında soyadlarına görə sıralayın və həmin tələbələrdən ilk 10 nəfərini gətirin
SELECT 
	TOP(10)
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY S.name,S.surname;

-------------------------------------------------------------------------------------------------------------------------------
--20)	Tələbə cədvəlində 10A sinifindəki tələbələri tələbə nömrəsinə görə azalan şəkildə sıralayın.
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	S.class='10A'
ORDER BY S.id DESC;
-------------------------------------------------------------------------------------
--21)	Tələbə cədvəlindəki ilk 10 sətiri sorğulayın
SELECT 
	TOP(10)
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE 
------------------------------------------------------------------------------
--22)	Tələbə cədvəlindəki ilk 10 sətirin ad, soyad və doğum ilini sorğulayın
SELECT 
	TOP(10)
	S.name,
	S.surname,
	S.birth_year
FROM
	DBO.Students S
--WHERE 
-----------------------------------------------------------------------------------
--23)	Tələbə cədvəlindəki ən gənc tələbəni tapın
SELECT 
	TOP (1) WITH TIES
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE 
ORDER BY S.birth_year DESC;
-----------------------------------------------------------------------------------------
--24)	Tələbə cədvəlindəki ən yaşlı oğlan tələbəni tapın
SELECT 
	TOP (1) WITH TIES
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE
	S.gender='K' 
ORDER BY S.birth_year ;
-------------------------------------------------------------------------------------------------
--25)	Tələbə cədvəlindəki sinifi 10A olan tələbələrdən ən yaşlı olanını tapın
SELECT 
	TOP (1) WITH TIES
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	S.class='10A'
ORDER BY S.birth_year ;
----------------------------------------------------------------------------------------
--26)	Tələbə cədvəlindəki tələbələrdən adının ikinci hərfi “S” olan tələbəni sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	S.name LIKE'_S%';
----------
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	LOWER(S.name) LIKE'_S%';
----------
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	UPPER(S.name) LIKE'_s%';

-------------------------------------------------------------------------------------------------------
--27)	Tələbə cədvəlindəki tələbələri hər sorğulamada sıralaması fərqli olacaq şəkildə rastgələ (təsadüfü) sorğulayın.
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY NEWID();
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY RAND(CHECKSUM(*) * RAND()) ;
---------------------------------------------------------------
--28)	Tələbə cədvəlindəki tələbələrdən hər sorğulama zamanı təsadüfi bir tələbəni seçin.
SELECT
   TOP(1)
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
--WHERE
ORDER BY NEWID();
-----------------------------------------------------------------------------
--29)	Tələbə cədvəlindəki 10A sinifində olan tələbələrdən təsadüfi olaraq bir tələbənin adını, soyadını, tələbə nömrəsini və sinifini gətirin.
SELECT 
    TOP(1)
	S.id,
	S.name,
	S.surname,
	S.class
FROM
	DBO.Students S
WHERE 
	S.class='10A'
ORDER BY NEWID();
-----------------------------------------------------------------------------------------------------------------------
 
--30)	Tələbə cədvəlindəki tələbələrdən doğum ili 1991, 1992, 1993 olan tələbələri IN operatoru istifadə edərək sorğulayın
SELECT 
	S.id,
	S.name,
	S.surname,
	S.birth_year,
	S.class,
	S.gender
FROM
	DBO.Students S
WHERE 
	S.birth_year IN( 1991, 1992, 1993);

------------------------------------------------SON---------------------------------------------------------------