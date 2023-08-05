<%-- 
    Document   : cart
    Created on : Mar 18, 2023, 2:20:20 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<style>
    .table>tbody>tr>td, .table>tfoot>tr>td{
        vertical-align: middle;
    }
    @media screen and (max-width: 600px) {
        table#cart tbody td .form-control{
            width:20%;
            display: inline !important;
        }
        .actions .btn{
            width:36%;
            margin:1.5em 0;
        }

        .actions .btn-info{
            float:left;
        }
        .actions .btn-danger{
            float:right;
        }

        table#cart thead {
            display: none;
        }
        table#cart tbody td {
            display: block;
            padding: .6rem;
            min-width:320px;
        }
        table#cart tbody tr td:first-child {
            background: #333;
            color: #fff;
        }
        table#cart tbody td:before {
            content: attr(data-th);
            font-weight: bold;
            display: inline-block;
            width: 8rem;
        }



        table#cart tfoot td{
            display:block;
        }
        table#cart tfoot td .btn{
            display:block;
        }

    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <div class="container">
            <table id="cart" class="table table-hover table-condensed">
                <thead>
                    <tr>
                        <th style="width:50%">Product</th>
                        <th style="width:10%">Price</th>
                        <th style="width:8%">Quantity</th>
                        <th style="width:22%">Subtotal</th>
                        <th style="width:10%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="o" value="${cart}"/>
                    <c:forEach items="${o.items}" var="i">
                        <tr>
                            <td data-th="Product">
                                <div class="row">
                                    <div class="col-sm-2 hidden-xs"><img src="${i.product.images}" alt="..." class="img-responsive"/></div>
                                    <div class="col-sm-10">
                                        <h4 class="nomargin">${i.product.name}</h4>
                                        <p>${i.product.description}</p>
                                    </div>
                                </div>
                            </td>
                            <td class="tr">
                                $<fmt:formatNumber pattern="##.#" value="${i.price}"/>
                            </td>
                            <td style="text-align: center">
                                <button><a href="process?num=-1&id=${i.product.product_id}">-</a></button>
                                ${i.quantity}
                                <button><a href="process?num=1&id=${i.product.product_id}">+</a></button>
                            </td>
                            <td class="tr">
                                $<fmt:formatNumber pattern="##.#" value="${(i.price*i.quantity)}"/>
                            </td>
                            <td class="actions" data-th="">
                                <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                               <a  href="deletecart?pid=${i.product.product_id}&deleteproduct=delete">delete</a>								
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>


            </table>
                
                    
                <a href="home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>
                <h3>Total money:$ ${o.totalMoney}</h3>
                <form action="checkout" method="post">
                    <input type="submit" value="Check out"/>
                </form>

                
        </div>
    </body>
</html>
