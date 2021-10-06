final createTable = '''
 CREATE TABLE contact(
   id INT PRIMARY KEY
   ,nome VARCHAR(200) NOT NULL
   ,telefone CHAR(16) NOT NULL
   ,email VARCHAR(150) NOT NULL
   ,url_avatar VARCHAR(300) NOT NULL
 )
 ''';

final insert1 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Yuno','(85)9 8196-0763','yuno@email.com','https://cdn.pixabay.com/photo/2021/09/07/16/38/man-6604399_960_720.png')
''';

final insert2 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Alicia','(85)9 8142-1582','alicia@email.com','https://cdn.pixabay.com/photo/2021/08/14/07/21/child-6544739_960_720.png')
''';

final insert3 = '''
INSERT INTO contact(nome,telefone,email,url_avatar)
VALUES('Ágata','(85)9 8165-9301','agata@email.com','https://cdn.pixabay.com/photo/2021/08/23/17/58/woman-6568434_960_720.png')
''';