<style type="text/css">
        body {
            padding-top: 10rem;
        }

        .starter-template {
            padding: 3rem 1.5rem;
            text-align: center;
        }

    </style>
    <style>
        /*text overlay on image */

        body {
            padding: 20px;
            font-family: "Roboto Slab", "Helvetica Neue", Helvetica, Arial, sans-serif;

        }

        div.wrapper {
            float: left;
            /* important */
            position: relative;
            /* important(so we can absolutely position the description div */
        }

        div.description {
            position: absolute;
            /* absolute position (so we can position it where we want)*/
            bottom: 0px;
            /* position will be on bottom */
            left: 0px;
            width: 100%;
            /* styling bellow */
            background-color: black;
            color: white;
            opacity: 0.6;
            /* transparency */
            filter: alpha(opacity=60);
            /* IE transparency */
        }

        p.description_content {
            padding: 10px;
            margin: 0px;
            font-size: 10px;
        }

        /* overlay text on image at different position */

        .container {
            position: relative;
            text-align: center;
            color: white;
        }

        .bottom-left {
            position: absolute;
            bottom: 8px;
            left: 16px;
        }

        .top-left {
            position: absolute;
            top: 8px;
            left: 16px;
        }

        .top-right {
            position: absolute;
            top: 8px;
            right: 16px;
        }

        .bottom-right {
            position: absolute;
            bottom: 8px;
            right: 16px;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

    </style>