CREATE DATABASE SCOALA;
USE SCOALA;

CREATE TABLE profesori(
      id_profesor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nume VARCHAR(100) NOT NULL,
      prenume VARCHAR(100) NOT NULL,
      localitate VARCHAR(150) NOT NULL,
      data_angajarii DATE,
      salariu FLOAT     
     );
     
     CREATE TABLE cursuri(
      id_curs INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      denumire VARCHAR(150) NOT NULL,
	  durata INT
     );
     
       
      INSERT INTO profesori VALUES( NULL, 'Ionescu', 'Ion', 'Fagaras', '2007-06-01', 1890),
                                  ( NULL, 'Popescu', 'Simona', 'Brasov', '2005-03-10', 1900 ),
								  ( NULL, 'Negru', 'Radu', 'Bucuresti', '2010-04-01', 1780),
                                  ( NULL, 'Rosu', 'Moise', 'Pitesti', '2010-04-03', 1678),
                                  ( NULL, 'Ilie', 'Catalin', 'Bucuresti','2009-05-01', 1655);
                                  
     INSERT INTO cursuri VALUES(NULL, 'Matematica', '12'), 
							   (NULL, 'Limba romana', '15'),
                               (NULL, 'Geografie', '10'),
                               (NULL, 'Istoria romanilor', '12'),
                               (NULL, 'Educatie fizica', '10');
                               
        UPDATE profesori SET localitate='Blaj' WHERE id_profesor=3;                    
        
        UPDATE profesori SET salariu= salariu * 1.2;
        
        SELECT * FROM profesori WHERE localitate!='Bucuresti';
        
        SELECT DISTINCT localitate FROM profesori;
        
        
        
        