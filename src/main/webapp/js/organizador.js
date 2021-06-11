let load = () => {

    let updateEventBtn = document.querySelectorAll(".btn-primary");
    let updateEvent = function (event) {
        let formData = new FormData();
        formData.append("id_event",event.currentTarget.getAttribute("data-id"))
        fetch("organizador",{
            method: "PUT",
            body:formData
        }).then(
            response =>
                response.json()

        ).then(
            response => {
                document.getElementById("update_name").value=response.event.name
                document.getElementById("update_description").value=response.event.description
                document.getElementById("update_dropdownMenuLink").value=response.event.apMaterno
                document.getElementById("update_price").value=response.persona.feNacimiento
                document.getElementById("update_location").value=response.persona.genero
                document.getElementById("update_date").value=response.cuenta.usuario
                document.getElementById("update_capacity").value=response.persona.IdPersona
                document.getElementById("update_picture").value=response.persona.IdPersona
            }
        ).catch(
            error => console.log(error)
        )
    }

    updateEventBtn.forEach(function (elemento) {
        elemento.addEventListener("click", updateEvent);
    })



    let deleteEvent = function (event) {
        let id_event = event.target.getAttribute("data-id");
        if (id_event == null) {
            id_event = event.currentTarget.getAttribute("data-id")
        }
        if (confirm("Estas seguro de eliminar el evento?")) {
            let formData = new FormData();
            formData.append("id_event", id_event)
            formData.append("request_description", "deleteEvent")
            fetch('organizador', {
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


    let createEvent = document.getElementById("createEvent");
    createEvent.addEventListener("click", () => {
        let name = document.getElementById("validationCustom01").value;
        let description = document.getElementById("validationCustom02").value;
        let category = document.getElementById("validationDefault01").value;
        let price = document.getElementById("validationCustom03").value;
        let location = document.getElementById("validationCustom04").value;
        let date = document.getElementById("validationCustom05").value;
        let capacity = document.getElementById("validationCustom06").value;
        let picture = document.getElementById("validationCustom07").value;

        // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
        let formData = new FormData();
        formData.append("name", name)
        formData.append("description", description)
        formData.append("category", category)
        formData.append("price", price)
        formData.append("location", location)
        formData.append("date", date)
        formData.append("capacity", capacity)
        formData.append("picture", picture)
        formData.append("request_description", "createEvent")

        // SE HACE LA LLAMADA ASINCRONA AL SERVLET
        fetch("organizador", {
            method: 'POST',
            body: formData
        }).then(
            response => response.json()
        ).then(
            response => {
                location.reload();
            }
        ).catch(
            error => console.log(error)
        )
    })

}



document.addEventListener("DOMContentLoaded", load)