let load = () => {

    let updateEventBtn = document.querySelectorAll(".btn-primary");
    let updateEvent = function (event) {
        let formData = new FormData();
        formData.append("id_event",event.currentTarget.getAttribute("data-id"))
        formData.append("request_description","update")
        fetch("organizador",{
            method: 'POST',
            body:formData
        }).then(
            response =>
                response.json()

        ).then(
            response => {
                document.getElementById("validationCustom07").value=response.event.name
                document.getElementById("validationCustom08").value=response.event.description
                document.getElementById("validationCustom09").value=response.event.price
                document.getElementById("validationCustom10").value=response.event.location
                document.getElementById("validationCustom11").value=response.event.date
                document.getElementById("validationCustom12").value=response.event.capacity
                document.getElementById("id_event").value=response.event.id_event
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
                    window.location = "./organizador";
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
        if(name != "" && description != "" && category != "" && price != "" && location != "" && date != "" && capacity != "" ){
            // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
            let formData = new FormData();
            formData.append("name", name)
            formData.append("description", description)
            formData.append("category", category)
            formData.append("price", price)
            formData.append("location", location)
            formData.append("date", date)
            formData.append("capacity", capacity)
            formData.append("request_description", "createEvent")

            // SE HACE LA LLAMADA ASINCRONA AL SERVLET
            fetch("organizador", {
                method: 'POST',
                body: formData
            }).then(
                response => response
            ).then(
                response => {
                    window.location = "./organizador";
                }
            ).catch(
                error => console.log(error)
            )
        }

    })
    let logout = document.getElementById("logout");
    logout.addEventListener("click", () => {
        // SE GENERA EL FORM DATA CON LA INFORMACION OBTENIDA
        let formData = new FormData();
        formData.append("request_type", "logout")

        // SE HACE LA LLAMADA ASINCRONA AL SERVLET
        fetch("organizador", {
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


    let update_save = document.getElementById("update_save");
    update_save.addEventListener("click", () => {
        let name = document.getElementById("validationCustom07").value;
        let description = document.getElementById("validationCustom08").value;
        let category = document.getElementById("validationDefault02").value;
        let price = document.getElementById("validationCustom09").value;
        let location = document.getElementById("validationCustom10").value;
        let date = document.getElementById("validationCustom11").value;
        let capacity = document.getElementById("validationCustom12").value;
        let id_event = document.getElementById("id_event").value;
        if(name != "" && description != "" && category != "" && price != "" && location != "" && date != "" && capacity != "" && id_event != ""){
            let formData = new FormData();
            formData.append("name", name)
            formData.append("description", description)
            formData.append("category", category)
            formData.append("price", price)
            formData.append("location", location)
            formData.append("date", date)
            formData.append("capacity", capacity)
            formData.append("id_event", id_event)

            fetch("organizador", {
                method: 'PUT',
                body: formData
            }).then(
                response => response
            ).then(
                response => {
                    window.location = "./organizador";
                }
            ).catch(
                error => console.log(error)
            )
        }

    })


}



document.addEventListener("DOMContentLoaded", load)