let load = () => {

    let updateEventBtn = document.querySelectorAll(".btn-primary");
    let updateEvent = function (event) {

        let formData = new FormData();
        formData.append("accion","update")
        formData.append("id_event",event.currentTarget.getAttribute("data-id"))
        fetch("organizador",{
            method: "POST",
            body:formData
        }).then(
            response =>
                response.json()

        ).then(
            response => {
                document.getElementById("update_name").value=response.persona.nombre
                document.getElementById("update_description").value=response.persona.apPaterno
                document.getElementById("update_dropdownMenuLink").value=response.persona.apMaterno
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

}



document.addEventListener("DOMContentLoaded", load)