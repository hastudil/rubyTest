#STORES
INSERT INTO "stores" ("name", "street", "number", "zip_code", "city", "country","created_at", "updated_at") VALUES ('Eta Fashion','9 de Octubre',7504,2879,'Guayaquil','Ecuador','2021-06-29 06:54:42.443849','2021-07-01 07:30:55.023995');
INSERT INTO "stores" ("name", "street", "number", "zip_code", "city", "country","created_at", "updated_at") VALUES ('Marathon','Shopping Durán',2530,593,'Durán','Ecuador','2021-06-28 04:34:21.373818','2021-07-01 09:16:10.978472');
INSERT INTO "stores" ("name", "street", "number", "zip_code", "city", "country","created_at", "updated_at") VALUES ('DePrati','Luque y Boyacá',1238,7852,'Guayaquil','Ecuador','2021-07-01 06:15:13.147232','2021-07-01 15:43:33.186143');
INSERT INTO "stores" ("name", "street", "number", "zip_code", "city", "country","created_at", "updated_at") VALUES ('Computron','Francisco de Orellada',123,1254,'Guayaquil','Ecuador','2021-07-01 16:53:11.628539','2021-07-01 16:53:11.628539');

#PRODUCTS
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Bermuda de niño','Blanco',35,15,'2021-06-27 09:55:47.544115','2021-07-01 07:19:48.819625',4);
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Camiseta NB','Azúl',10,27.5,'2021-06-30 15:25:25.720185','2021-07-01 07:33:17.287608',5);
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Corbatas','Varios',1,15,'2021-07-01 06:44:06.159672','2021-07-01 08:30:56.23985',5);
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Camiseta','negro',40,15,'2021-06-27 10:48:03.794728','2021-07-01 08:34:12.495739',3);
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Bermuda camuflada','Otro',12,15,'2021-06-30 15:31:13.986984','2021-07-01 08:51:11.501413',5);
INSERT INTO "products" ("name", "color", "size", "price", "created_at", "updated_at", "category_id") VALUES ('Cadena Oro','Dorado',18,100,'2021-07-01 16:50:52.096212','2021-07-01 16:50:52.096212',5);

#CATEGORIES
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Ropa Casual niño','2021-06-28 18:25:43.555481','2021-06-29 19:10:26.709595');
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Ropa','2021-06-30 02:39:52.835808','2021-06-30 02:39:52.835808');
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Bisutería','2021-06-30 16:35:37.339686','2021-06-30 16:35:37.339686');
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Zapatos Deportivos 1','2021-06-30 02:24:43.886702','2021-07-01 07:47:50.787371');
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Accesorios','2021-07-01 07:48:23.292083','2021-07-01 07:48:23.292083');
INSERT INTO "categories" ("name", "created_at", "updated_at") VALUES ('Playera','2021-07-01 07:48:51.396495','2021-07-01 07:48:51.396495');

#KEYWORDS
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Correr','2021-06-30 02:24:57.624448','2021-06-30 02:24:57.624448',4);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Gym','2021-06-30 02:25:17.396366','2021-06-30 02:25:17.396366',4);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Marathon','2021-06-30 02:25:53.066785','2021-06-30 02:25:53.066785',4);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Plata','2021-06-30 16:55:17.361029','2021-06-30 16:55:17.361029',7);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Delicada','2021-07-01 01:49:28.130781','2021-07-01 01:49:28.130781',3);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Deporte','2021-07-01 04:47:30.18533','2021-07-01 04:47:30.18533',4);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Sol','2021-07-01 07:49:03.83512','2021-07-01 07:49:03.83512',9);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Arena','2021-07-01 07:49:08.275518','2021-07-01 07:49:08.275518',9);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Mar','2021-07-01 07:49:11.61671','2021-07-01 07:49:11.61671',9);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Pulsera','2021-07-01 10:04:42.106629','2021-07-01 10:04:42.106629',7);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Cadena','2021-07-01 10:04:55.966193','2021-07-01 10:04:55.966193',7);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Sonido','2021-07-01 17:17:47.937719','2021-07-01 17:17:47.937719',10);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Lira','2021-07-01 17:18:55.682134','2021-07-01 17:18:55.682134',10);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Batería','2021-07-01 17:19:01.020782','2021-07-01 17:19:01.020782',10);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Guitarra','2021-07-01 17:19:07.369908','2021-07-01 17:19:07.369908',10);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Chelo','2021-07-01 17:19:11.999351','2021-07-01 17:19:11.999351',10);
INSERT INTO "keywords" ("name", "created_at", "updated_at", "category_id") VALUES ('Piano','2021-07-01 17:19:21.335508','2021-07-01 17:19:21.335508',10);
