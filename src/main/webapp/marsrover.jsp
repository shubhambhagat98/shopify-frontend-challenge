<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content = "IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.0/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Shopify-FrontEnd-Challenge</title>
</head>
<body>
    <div class="top-banner">
        <h2>Shopify Frontend Challenge</h2>
    </div>

    <section class="image-display-section mt-3">
        <div class="container">
            <div class="row mt-4 text-center">
                <h4 class="text-center">Mars Rover Photos</h4>
            </div>
            <div class="row mt-2">
               <c:forEach var="index" begin="0" end="${requestScope.photoObject.length()-1}">
                   <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3 col-6 item mb-3 px-md-4 py-md-4">
                       <div class="card h-100 ">
                           <div class="card-image-wrapper">
                               <img class="card-img-top " src="${requestScope.photoObject.getJSONObject(index).getString('img_src')}" alt="Curiosity Rover Image">
                           </div>
                           <div class="card-body">
                               <h5 class="card-title ">Curiosity Rover - ${requestScope.photoObject.getJSONObject(index).getJSONObject('camera').getString('full_name')}</h5>
                           </div>
                           <div class="card-footer mb-2 ">
                               <div class="card-date" >
                                   <span class = "image-date" >${requestScope.photoObject.getJSONObject(index).getString('earth_date')}</span>
                               </div>
                               <div class="card-button">
                                   <i class="fa fa-share share-button" data-bs-toggle="modal"  data-bs-target="#shareLinkModal" data-bs-image-link="${requestScope.photoObject.getJSONObject(index).getString('img_src')}"></i>
                                   <i class="fa fa-heart-o like-button" aria-hidden="true" onclick="toggleLikeButton(this)"></i>
                               </div>
                           </div>
                       </div>
                   </div>
               </c:forEach>
            </div>
        </div>
    </section>


    <div class="modal fade" id="shareLinkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="shareModalTitle">Share this photo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="modal-image-wrapper">
                        <img id="modal-image" src="" alt="photo"/>
                    </div>
                    <form>
                        <div class=" row mt-2 mb-2 g-2">
                            <label for="img-link" class="col-form-label">Image Link: <div id="response"></div></label>
                            <div class="col-10">
                                <input type="text" class="form-control" id="img-link" >
                            </div>
                            <div class="col-2 d-grid px-1">
                                <button type="button" class="btn btn-light copy-button" onclick="copyLink(this)">Copy</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">OK</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="JavaScript/shopify.js" ></script>
    <script type="application/javascript">
        $('body').append('<div style="z-index: 9999 !important" id="loadingDiv"><div class="loader">Loading...</div></div>');
        $(window).on('load', function(){
            setTimeout(removeLoader, 2000); //wait for page load PLUS two seconds.
        });
        function removeLoader(){
            $( "#loadingDiv" ).fadeOut(200, function() {
                // fadeOut complete. Remove the loading div
                $( "#loadingDiv" ).remove(); //makes page more lightweight
            });
        }
    </script>
</body>
</html>