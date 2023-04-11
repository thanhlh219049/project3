INSERT INTO APP_ROLE(ID, NAME)
VALUES (1, 'ROLE_ADMIN'),
       (2, 'ROLE_USER');

INSERT INTO APP_USER(ID, USERNAME, PASSWORD, FULL_NAME, EMAIL, PHONE_NUMBER, ADDRESS, ROLL_ID)
VALUES (1, "1", "1", "1", "1", "1", "1", "1"),
       (2, "2", "2", "2", "2", "2", "2", "2");


       INSERT INTO CATEGORY(ID, IMAGE, NAME)
VALUES (1, "bacadi-1.jpg", "Loai 1"),
       (2, "chivas-18-blue-hq-2021-3.jpg", "Loai 2"),
       (3, "ruou-vodka-hanoi-700-ml.jpg", "Loai 3"),
       (4, "malibu_dua.jpg", "Loai 4"),
       (5, "ruou-chivas21-nam-510x480.jpg", "Loai 5");

INSERT INTO TRADE_MARK(ID, IMAGE, NAME)
VALUES (1, "bacadi-1.jpg", "San pham 1"),
       (2, "chivas-18-blue-hq-2021-3.jpg", "San pham 2"),
       (3, "ruou-vodka-hanoi-700-ml.jpg", "San pham 3"),
       (4, "malibu_dua.jpg", "San pham 4"),
       (5, "ruou-chivas21-nam-510x480.jpg", "San pham 5");

INSERT INTO PRODUCTS(ID , DESCRIPTION, IMAGE1,IMAGE2,IMAGE3,IMAGE4, NAME, PRICE, QUANTITY, CATEGORYS_ID, TRADEMARK_ID)
VALUES (1, "ruou loai 1",
        "bacadi-1.jpg",
        "bacardi.jpg",
        "bacardi-carta-range-205x300.jpg",
        "ảnh-.png",
        "ruou loai 1", 100, 100, "1", "1"),
       (2, "ruou loai 2",
        "chivas-18-blue-hq-2021-3.jpg",
        "chivas-18-blue-signature-hop-qua-2021.png",
        "chivas-25.jpg",
        "ruou-chivas-extra-13-nam-american-rye-cask-250x250.png",
         "ruou loai 2", 90, 90, "2", "2"),
       (3, "ruou loai 3",
        "ruou-vodka-hanoi-700-ml.jpg",
        "ruou-vodka-nga-russian-standard-vodka-original.jpg",
        "bacardi-carta-range-205x300.jpg",
        "bacardi-carta-range-205x300.jpg",
         "ruou loai 3", 80, 80, "3", "3"),
       (4, "ruou loai 4",
        "malibu_dua.jpg",
        "Martini-Bianco-100cl.jpg",
        "Martini-Extra-Dry-100cl.jpg",
        "MIGRANT.png",
         "ruou loai 4", 70, 70, "4", "4"),
       (5, "ruou loai 5",
        "ruou-chivas21-nam-510x480.jpg",
        "ruou-chivas-38-nam-min.jpg",
        "ruou-chivas-62-gun-salute.jpg",
        "ruou-chivas-21-hop-qua-tet-2021-v1.png",
         "ruou loai 5", 60, 60, "5", "5");

