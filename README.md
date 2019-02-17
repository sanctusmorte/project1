**Описание:**

 Создание REST API на базе CRUDBOOSTER
 
       1. Авторизация /public/api/authorization 
       2. Регистрация /public/api/registration 
       3. Создание заказа /public/api/make_an_order 
       4. Получение списка заказов public/api/get_list_of_products 
       5. Получение деталей заказа по ID /public/api/get_product_by_id 
       
Реализация 5-ти REST API с POST/GET запросами и набором необходимых параметров

**Стек**

    1. Laravel 5.6
    2. CRUDBOOSTER
    3. PHP 5.6
    4. CRUDBOOSTER API Generator

**Логика приложения**

При регистрации пользователь в ответ получает уникальный AUTH_KEY, который он может далее использовать для 3-его API 'Создание заказа', передав его в параметрах. Авторизация позволяет узнать уже зарегестрированному пользователю его уникальный ключ.

**Репозиторий состот из:**

Название файла  | Содержание файл
----------------|---------------------
public_html     | Исходник проекта
mysql.sql | База данных
README.md  | Этот файл README
ApiAuthorizationController.php  | Контроллер authorization API
ApiGetListOfProductsController.php  | Контроллер get_list_of_products API
ApiGetProductByIdController.php  | Контроллер get_product_by_id API
ApiMakeAnOrderController.php | Контроллер make_an_order API
ApiRegistrationController.php | Контроллер registration API


**Документация API**

![alt text](https://i.imgur.com/ckQGqNE.png)

