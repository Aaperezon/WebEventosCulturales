let load = () => {
    let deleteEvent = function (event) {
        let id_event = event.target.getAttribute("data-id");
        if (id_event == null) {
            id_event = event.currentTarget.getAttribute("data-id")
        }
        if (confirm("Estas seguro de eliminar el registro?")) {
            let formData = new FormData();
            formData.append("id_event", id_event)
            formData.append("request_description", "deleteEvent")
            fetch('administrador', {
                method: 'DELETE',
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
    let deleteEventBtn = document.querySelectorAll(".btn-danger");
    deleteEventBtn.forEach(function (elemento) {
        elemento.addEventListener("click", deleteEvent);
    })

    let deleteOrganizer = function (event) {
        let id_user = event.target.getAttribute("data-id");
        if (id_user == null) {
            id_user = event.currentTarget.getAttribute("data-id")
        }
        if (confirm("Estas seguro de eliminar el registro?")) {
            let formData = new FormData();
            formData.append("id_user", id_user)
            formData.append("request_description", "deleteOrganizer")
            fetch('administrador', {
                method: 'DELETE',
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
    let deleteOrganizerBtn = document.querySelectorAll(".btn-outline-danger");
    deleteOrganizerBtn.forEach(function (elemento) {
        elemento.addEventListener("click", deleteOrganizer);
    })




    let createOrganizer = document.getElementById("createOrganizer");
    createOrganizer.addEventListener("click", () => {
        let user = document.getElementById("validationCustom03").value;
        let password = document.getElementById("validationCustom04").value;
        let name = document.getElementById("validationCustom06").value;
        let last_name = document.getElementById("validationCustom07").value;

        // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
        let formData = new FormData();
        formData.append("user", user)
        formData.append("password", password)
        formData.append("name", name)
        formData.append("last_name", last_name)
        formData.append("request_type", "create")

        // SE HACE LA LLAMADA ASINCRONA AL SERVLET
        fetch("administrador", {
            method: 'POST',
            body: formData
        }).then(
            response => response.json()
        ).then(
            response => {
                if(response.mensaje != undefined) {
                    alert(response.mensaje)
                }else if(response.persona.IdPersona == 0 || response.persona.IdPersona == undefined){
                    alert("Ops! algo pasó!");
                }else{
                    alert(mensaje);
                }
                document.getElementById("createAccountForm").reset();
            }
        ).catch(
            error => console.log(error)
        )
    })

    let logout = document.getElementById("logout");
    logout.addEventListener("click", () => {
        // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
        let formData = new FormData();
        formData.append("request_type", "logout")

        // SE HACE LA LLAMADA ASINCRONA AL SERVLET
        fetch("administrador", {
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

}



document.addEventListener("DOMContentLoaded", load)