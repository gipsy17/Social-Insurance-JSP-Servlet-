/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function showForm(para)
{
    document.getElementById(para).style.display = 'Block';
    //document.getElementById('alert').style.display = 'None';

}
window.onclick = function (event) {
    if (event.target === document.getElementById('id01')) {
        document.getElementById('id01').style.display = "none";
    }
    else if (event.target === document.getElementById('id03')) {
        document.getElementById('id03').style.display = "none";
    }
    else if (event.target === document.getElementById('id04')) {
        document.getElementById('id04').style.display = "none";
    }
    else if (event.target === document.getElementById('id02')) {
        document.getElementById('id02').style.display = "none";
    }
};
function Loginnow()
{
    document.getElementById('id03').style.display = 'None';
    document.getElementById('id01').style.display = 'Block';
}

