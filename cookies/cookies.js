function setBgColor()
{
    var i
    list = document.cookie.split('; ')
    for(i = 0; i < list.length; i++)
    {
        if(list[i].split('=')[0] == 'color')
        {
            document.body.style.backgroundColor = list[i].split('=')[1]
            document.getElementById("page_color").value = list[i].split('=')[1]
        }
    }
}
function addCookie()
{
    document.cookie="username = Sudheer";
    document.cookie="location = bangalore"

    if (document.cookie.length != 0)
    {
       
        alert("cookie added")
    }
    else
    {
        alert("Form Incomplete")
    }

}

function readCookie()
{
   
    if(document.cookie.length!=0)
    {
        alert(document.cookie)
    }
    else
    {
        alert("no cookies")
    }
}

function removeCookie()
{
    localStorage.removeItem('name')
    localStorage.removeItem('location')
    localStorage.removeItem('color')
    sessionStorage.removeItem('name')
    sessionStorage.removeItem('location')
    sessionStorage.removeItem('color')
    document.cookie = "name=;expires=Sun, 30 Jan 2021 00:00:00 UTC;"
    document.cookie = "location=;expires=Sun, 30 Jan 2021 00:00:00 UTC;"
    document.cookie = "color=;expires=Sun, 30 Jan 2021 00:00:00 UTC;"
    alert("cookies cleared")
    window.location.reload()
}

function changeColor()
{
    var color = document.getElementById("page_color").value
    document.cookie = "color=" + color + ";expires=Sun, 30 Jan 2022 00:00:00 UTC;"
    localStorage.setItem('color', color)
    sessionStorage.setItem('color', color)
    document.body.style.backgroundColor = color
}
