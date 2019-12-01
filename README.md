# Team 3's Website

**Notice**: dblogin.ini was removed due to a bug with file handling causing credentials leaking. The code was removed in a hotfix as well.

### Pages

Pages are kept under the `pages` directory. Here you'll find the static web pages in pure HTML.

### Scripts

Backend scripts are stored under the `scripts` directory. Inside is a helper function `db_open.php` for handling database connection operations.

### Datasets

All datasets used for populating the database in MySQL/MariaDB can be found here. In addition, two additional SQL scripts, `scrap.sql` and `InsertScript.sql` are in the root directory for creating the database itself.