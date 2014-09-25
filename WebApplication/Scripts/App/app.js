window.model = window.model || {};

window.model.comrades = window.model.comrades || {};

var out = $("#out"),
    list = $("#list"),
    clist = $("#clist"),
    opInput = $(".op-input"),
    opList = $(".op-list"),
    opCList = $(".op-clist");

getComrades();

getOperations();

$("#save_op").click(saveButtonClick);

out.click(showOutPage);
list.click(showListPage);
clist.click(showCListPage);

function getComrades() {

    $.getJSON("/api/comrades", null, function (data, status) {

        switch (status) {
            case "success":
                window.model.comrades = data;
                bindComrades("#from");
                bindComrades("#to");
                break;
            default:
                console.log("Strange status: " + status);
        }
    });
}

function getOperations() {

    $.getJSON("/api/operations", null, function (data, status) {

        switch (status) {
            case "success":
                model.operations = data;
                bindOperations("#operations");
                break;
            default:
                console.log("Strange status: " + status);
        }
    });
}

function addOperation(op) {

    $.ajax({
        type: 'POST',
        url: '/api/operations',
        data: JSON.stringify({
            from: op.from,
            to: op.to,
            quantity: op.quantity,
            issueNumber: op.issueNumber,
            comment: op.comment
        }),
        success: function (data) { alert("Готово"); },
        contentType: "application/json",
        dataType: 'json'
    });
}

function deleteOperation(id) {

    $.ajax({
        type: 'DELETE',
        url: '/api/operations/' + id,
        contentType: "application/json",
        dataType: 'json'
    });
}

function bindComradesStatus(selector, data) {

    function comradeNameFormatter(first, second, last) {
        return last + " " + first;
    }

    data = data || model.comrades;

    var select = $(selector);

    for (var i in data) {
        $("<option value='" + data[i].Id + "' />")
            .text(
                comradeNameFormatter(data[i].FirstName, data[i].SecondName, data[i].LastName)
            )
            .appendTo(select);
    }
}

function bindComrades(selector, data) {

    function comradeNameFormatter(first, second, last) {
        return last + " " + first;
    }

    data = data || model.comrades;

    var table = $(selector).empty();

    th = $("<tr />").appendTo(table);
    for (var h in data[0]) {
        $("<th />").text(h).appendTo(th);
    }
    for (var i in data) {
        tr = $("<tr />").appendTo(table);
        for (var j in data[i]) {
            $("<td />").text(data[i][j]).appendTo(tr);
        }
    }
}

function bindOperations(selector, data) {

    data = data || model.operations;

    var table = $(selector).empty();

    var th, tr;

    if (Object.prototype.toString.call(data) !== '[object Array]') {

        th = $("<tr />").appendTo(table);
        tr = $("<tr />").appendTo(table);
        for (var i in data) {
            $("<th />").text(i).appendTo(th);
            $("<td />").text(data[i]).appendTo(tr);
        }
        $("<td><button class='op-delete'>Удалить</button></td>")
            .click(data.Id, function (event) {
                if (confirm("Удалить операцию?")) {
                    deleteOperation(event.data);
                    getOperations();
                }
            })
            .appendTo(tr);

    } else {

        th = $("<tr />").appendTo(table);
        for (var h in data[0]) {
            $("<th />").text(h).appendTo(th);
        }
        for (var i in data) {
            tr = $("<tr />").appendTo(table);
            for (var j in data[i]) {
                $("<td />").text(data[i][j]).appendTo(tr);
            }
            $("<td><button class='op-delete'>Удалить</button></td>")
                .click(data[i].Id, function(event) {
                    if (confirm("Удалить операцию?")) {
                        deleteOperation(event.data);
                        getOperations();
                    }
                })
                .appendTo(tr);
        }

    }
}

function saveButtonClick() {

    var op = {
        from: $("#from").val(),
        to: $("#to").val(),
        quantity: $("#quantity").val(),
        issueNumber: $("#issueNumber").val(),
        comment: $("#comment").val()
    };

    addOperation(op);
}

function showOutPage() {
    $(".selected").removeClass("selected");
    out.addClass("selected");

    opList.hide();
    opInput.show();
    opCList.hide();

}

function showListPage() {
    $(".selected").removeClass("selected");
    list.addClass("selected");

    opInput.hide();
    opList.show();
    opCList.hide();

    getOperations();
}

function showCListPage() {
    $(".selected").removeClass("selected");
    list.addClass("selected");

    opInput.hide();
    opList.hide();
    opCList.show();
}