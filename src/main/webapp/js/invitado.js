let load = () => {

    let logout = document.getElementById("logout");
    logout.addEventListener("click", () => {
        // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
        let formData = new FormData();
        formData.append("request_description", "logout")

        // SE HACE LA LLAMADA ASINCRONA AL SERVLET
        fetch("invitado", {
            method: 'POST',
            body: formData
        }).then(
            response => response
        ).then(
            response => {
                window.location = "./";
            }
        ).catch(
            error => console.log(error)
        )
    })

    let attendEvent = function (event) {
        let id_event = event.target.getAttribute("data-id");
        if (id_event == null) {
            id_event = event.currentTarget.getAttribute("data-id")
        }
        if (confirm("Estas seguro de asistir al evento?")) {
            let formData = new FormData();
            formData.append("id_event", id_event)
            formData.append("request_description", "attend")
            fetch('invitado', {
                method: 'POST',
                body: formData
            }).then(
                response => {
                    response.json()
                }
            ).then(
                response => {
                    location.reload();
                }
            ).catch(
                error => console.log(error)
            )
        }
    }
    let attendEventBtn = document.querySelectorAll(".btn-primary");
    attendEventBtn.forEach(function (elemento) {
        elemento.addEventListener("click", attendEvent);
    })



    let misEventosBtn = document.getElementById("misEventos");
    misEventosBtn.addEventListener("click", () => {
        fetch('invitado?request_description=1', {
            method: 'GET',
        }).then(
            response => response
        ).then(
            response => {
                window.location = "./invitado?request_description=1";
            }
        ).catch(
            error => console.log(error)
        )
    })

    let carteleraBtn = document.getElementById("cartelera");
    carteleraBtn.addEventListener("click", () => {
        fetch("invitado", {
            method: 'GET',
        }).then(
            response => response
        ).then(
            response => {
                window.location = "./invitado";
            }
        ).catch(
            error => console.log(error)
        )
    })

}



document.addEventListener("DOMContentLoaded", load)