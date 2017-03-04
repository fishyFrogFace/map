<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>${name}</title>
    <link rel="stylesheet" href="https://openlayers.org/en/v3.20.1/css/ol.css" type="text/css">
    <style>
    .map {
        height: 400px;
        width: 100%;
    }
    </style>
    <script src="https://openlayers.org/en/v3.20.1/build/ol.js" type="text/javascript"></script>
</head>
<body>
<content tag="nav">
    <li><a href="try">${name}</a></li>
</content>
<h2>${name}</h2>
<div id="map" class="map"></div>
<script type="text/javascript">
    var map = new ol.Map({
        target: 'map',
        layers: [
            new ol.layer.Tile({
                source: new ol.source.OSM()
            })
        ],
        view: new ol.View({
            center: ol.proj.fromLonLat([10.12, 63.43]),
            zoom: 6
        })
    });
</script>
</body>
</html>