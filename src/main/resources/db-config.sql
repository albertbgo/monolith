ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'vrajupaj';

CREATE DATABASE bands_inventory;

USE bands_inventory;

CREATE TABLE bands(
    id_band int primary key auto_increment,
    name_band varchar(255),
    genre_band varchar(255),
    year_release_band date,
    description_band text,
    logo_band varchar(255)
);

INSERT INTO bands(
    name_band,
    genre_band,
    year_release_band,
    description_band,
    logo_band 
) VALUES(
    "AC/DC",
    "hard-rock",
    "1973-01-01",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur nemo doloremque sed quis sequi. Voluptas perferendis aliquam voluptatum debitis saepe, mollitia molestias delectus nisi, dolorem voluptate aspernatur sunt voluptatem voluptates.",
    "https://seeklogo.com/images/A/ac-dc-logo-4DD0EC2621-seeklogo.com.png"
);
INSERT INTO bands(
    name_band,
    genre_band,
    year_release_band,
    description_band,
    logo_band 
) VALUES(
    "Pink Floyd",
    "Psychedelic Rock",
    "1965-01-01",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur nemo doloremque sed quis sequi. Voluptas perferendis aliquam voluptatum debitis saepe, mollitia molestias delectus nisi, dolorem voluptate aspernatur sunt voluptatem voluptates.",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Pink_Floyd_logo.svg/1280px-Pink_Floyd_logo.svg.png"
);

INSERT INTO bands(
    name_band,
    genre_band,
    year_release_band,
    description_band,
    logo_band 
) VALUES(
    "The Beatles",
    "Rock And Roll",
    "1963-01-01",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur nemo doloremque sed quis sequi. Voluptas perferendis aliquam voluptatum debitis saepe, mollitia molestias delectus nisi, dolorem voluptate aspernatur sunt voluptatem voluptates.",
    "https://upload.wikimedia.org/wikipedia/commons/b/b0/Beatles_logo.svg"
);

INSERT INTO bands(
    name_band,
    genre_band,
    year_release_band,
    description_band,
    logo_band 
) VALUES(
    "Slipknot",
    "Nu Metal",
    "1995-01-01",
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur nemo doloremque sed quis sequi. Voluptas perferendis aliquam voluptatum debitis saepe, mollitia molestias delectus nisi, dolorem voluptate aspernatur sunt voluptatem voluptates.",
    "https://upload.wikimedia.org/wikipedia/commons/f/fc/Slipknot_%28Logo%29.png"
);
