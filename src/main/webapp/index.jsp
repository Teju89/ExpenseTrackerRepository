
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="icon" href="media/logo.png">
    <title>Expenses Tracker</title>
    <style>
        * {
            box-sizing: border-box;
            padding: 0px;
            margin: 0px;
        }

        body {
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        #container {
            width: 100%;
            height: 80vh;
            display: flex;
            flex-wrap: wrap;
        }

        #a {
            width: 700px;
            padding-left: 8%;
            /* background-color: red; */

        }

        #b {
            width: 700px;
            padding-left: 6%;
            /* background-color: lawngreen; */
        }

        #foo {
            /* position: absolute;
            bottom: 0px; */
            width: 100%;
            height: 80px;
            background-color: black;
            color: white;
            display: flex;
            justify-content: center;
            align-content: center;
            flex-wrap: wrap;
        }

        @-webkit-keyframes wobble {
            0% {
                -webkit-transform: none;
                transform: none;
            }

            15% {
                -webkit-transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
                transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
            }

            30% {
                -webkit-transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
                transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
            }

            45% {
                -webkit-transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
                transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
            }

            60% {
                -webkit-transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
                transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
            }

            75% {
                -webkit-transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
                transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
            }

            100% {
                -webkit-transform: none;
                transform: none;
            }
        }

        @keyframes wobble {
            0% {
                -webkit-transform: none;
                transform: none;
            }

            15% {
                -webkit-transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
                transform: translate3d(-25%, 0, 0) rotate3d(0, 0, 1, -5deg);
            }

            30% {
                -webkit-transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
                transform: translate3d(20%, 0, 0) rotate3d(0, 0, 1, 3deg);
            }

            45% {
                -webkit-transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
                transform: translate3d(-15%, 0, 0) rotate3d(0, 0, 1, -3deg);
            }

            60% {
                -webkit-transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
                transform: translate3d(10%, 0, 0) rotate3d(0, 0, 1, 2deg);
            }

            75% {
                -webkit-transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
                transform: translate3d(-5%, 0, 0) rotate3d(0, 0, 1, -1deg);
            }

            100% {
                -webkit-transform: none;
                transform: none;
            }
        }

        #bgcolor {
            width: 700px;
            height: 300px;
            background-color: white;
            position: absolute;
            z-index: -1;
            left: 45%;
            top: 20%;
            border-radius: 100%;
            animation: animationbgm 3s linear 0s infinite;
            background-image: linear-gradient(75deg, hotpink, yellow, skyblue, lime);
            background-size: 1800px;
            background-position: 1800px;
            filter: blur(100px);
        }


        @keyframes animationbgm {
            10% {
                border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
                background-position: 1800px;
            }

            20% {
                border-radius: 54% 46% 70% 30% / 30% 30% 70% 70%;
            }

            40% {
                border-radius: 54% 46% 70% 30% / 30% 66% 34% 70%;
            }

            50% {
                border-radius: 77% 23% 22% 78% / 52% 66% 34% 48%;
            }

            60% {
                border-radius: 37% 63% 22% 78% / 52% 66% 34% 48%;
            }

            70% {
                border-radius: 37% 63% 22% 78% / 78% 23% 77% 22%;
            }

            80% {
                border-radius: 48% 52% 22% 78% / 39% 50% 50% 61%;
            }

            90% {
                border-radius: 54% 46% 70% 30% / 30% 30% 70% 70%;
            }

            100% {
                border-radius: 30% 70% 70% 30% / 30% 30% 70% 70%;
                background-position: 0px;

            }

        }
    </style>
</head>

<body style="overflow: hidden;">
    <nav class="navbar p-0 mb-0" style="border-bottom: 4px black double;">
        <div class="container-fluid" style="background-color: plum; padding:1%">
            <a class="navbar-brand" href="index.jsp">
                <img src="media/logo.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
                <span class="fs-2 fw-bolder align-text-top"
                    style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Spring
                    Expenses Tracker</span>
            </a>
            <a href="login.jsp" style="color:black;"> <span class="text-xxl-end"><svg
                        xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                        class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                        <path fill-rule="evenodd"
                            d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                    </svg></span></a>
        </div>
    </nav>
    <div id="bgcolor">

    </div>
    <div class="container-fluid" style="position: relative; top:0%;">
        <div class="row align-items-center wrap" id="container">
            <div id="b">
                <span>
                    <img src="media/robo.gif" class="img-thumbnail">
                </span>
            </div>
            <div id="a">
                <p class="fs-4 fst-italic" style="text-align: justify;">
                    Expenses Tracker
                    Simplify your personal reimbursement management.
                </p>
                <p class="fs-4 fst-italic" style="text-align: justify;">
                    Expense Tracker is used by user's to record their daily routine expenses in a
                    digital and hassle-free way as opposed to the conventional manual documentation of expenses
                </p>
            </div>
        </div>
    </div>

    <div id="foo">
        <p>&copy; 2023 JSpiders. All rights reserved.</p>
    </div>

</body>

</html>	
    