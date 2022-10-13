<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paginador</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet">


</head>

<body>

    <div class="container" style="display: flex; flex-direction: column; align-items: center;">
        <div id="container__users">

        </div>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><input type="button" class="page-link" value="Previous" id="previous" disabled></li>
                <li class="page-item"><input type="button" class="page-link page-number" value="1"></li>
                <li class="page-item"><input type="button" class="page-link page-number" value="2"></li>
                <li class="page-item"><input type="button" class="page-link page-number" value="3"></li>
                <li class="page-item"><input type="button" class="page-link" value="Next" id="next"></li>
            </ul>
        </nav>
    </div>

    <script>
        var page = 1;
        var users;
        var amt_page_total;
        loadUsers();
        $('.page-link').click(function() {

            // Actualizo valor de variable page
            if (this.value == "Next") {
                page++;
            } else if (this.value == "Previous") {
                page--;
            } else {
                page = this.value;
            }

            // Desabilitar boton next si esta en la ultima pagina y activarlo si no lo está
            if (page == amt_page_total) {
                $('#next').attr('disabled', true)
            } else {
                $('#next').attr('disabled', false)
            }
            // Desabilitar boton previous si esta en la primera pagina y activarlo si no lo está
            if (page > 1) {
                $('#previous').attr('disabled', false)
            } else {
                $('#previous').attr('disabled', true)
            }

            // Cambio valores de botones segun la pagina en la que este
            if (page > 2 && page < amt_page_total - 1) {
                var buttons = [...$('.page-number')];
                var aux = page - 1;
                buttons.forEach((page_number, key) => {
                    page_number.value = aux;
                    aux++;
                });
            } else if (page > amt_page_total - 2) {
                var buttons = [...$('.page-number')];
                var aux = amt_page_total - 2;
                buttons.forEach((page_number, key) => {
                    page_number.value = aux;
                    aux++;
                });
            } else {
                var buttons = [...$('.page-number')];
                var aux = 1;
                buttons.forEach((page_number, key) => {
                    page_number.value = aux;
                    aux++;
                });
            }

            loadUsers();

        })

        // Funcion para cargar los usuarios usando ajax
        function loadUsers() {
            $.ajax({
                url: `server.php?page=${page}`,
                dataType: 'JSON',
                success: function(data) {
                    users = data;
                    var claves = Object.keys(users);
                    amt_page_total = users['amt_page_total']
                    var contentHTML = `
                        <table border="1">
                            <tr >
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Biografia</th>
                                <th>Genero</th>
                            </tr>`;
                    for (let i = 0; i < claves.length - 1; i++) {
                        //console.log(users[claves[i]])
                        contentHTML += `
                            <tr>
                                <td style="padding: 0 25px 0 0;">${users[claves[i]]['id']}</td>
                                <td style="padding: 0 25px 0 0;">${users[claves[i]]['name']}</td>
                                <td style="padding: 0 25px 0 0;">${users[claves[i]]['username']}</td>
                                <td style="padding: 0 25px 0 0;">${users[claves[i]]['email']}</td>
                                <td style="padding: 0 25px 0 0;">${(!users[claves[i]]['biography'])? "" : users[claves[i]]['biography']}</td>
                                <td style="padding: 0 25px 0 0;">${users[claves[i]]['gender']}</td>
                            </tr>`;
                    }
                    contentHTML += `
                    </table>`;

                    document.getElementById('container__users').innerHTML = contentHTML;
                }
            });
        }
    </script>
</body>