<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="site_interface.Service"%>
<%@ page import ="site_interface.Utilisateur"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Artilib | Home</title><!-- modifier le titre-->

      <!--  CSS  -->
      
      <link href="./css/ProfilArtstyle.css" rel="stylesheet">
      
      <!--  Font awesome CSS  -->
     <link rel="stylesheet" href="./css/font-awesome/css/all.min.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     

      <!--  Jquery CDN -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  
	  <!-- IMPORT THE HLS.JS LIBRARY --> 
      <script src="https://cdn.jsdelivr.net/npm/hls.js@0.13.2/dist/hls.min.js"></script>
	  <!-- IMPORT THE PLAYER.JS WEBCOMPONENT --> 
	  <script src="./js/player.js"></script>
	  
      <script> 
        $(function(){
            $("header").load("./header.jsp"); 
            $("footer").load("./footer.jsp"); 
        });
    </script>
</head>
<body>
  <% 
    Utilisateur arti = (Utilisateur) session.getAttribute("ArtiClick");

    List<Service> listeServiceArti = new ArrayList<Service>();  
    listeServiceArti = (ArrayList<Service>) session.getAttribute("listeServiceArti");

    Object[] lesHorairesArti = (Object[]) session.getAttribute("lesHorairesArti");
  %>
      <header></header>

     <div class="vide">
      <div class="fond_profile">
        <div class="bandeau">
        <div class="image_et_nom">
         
          <div  class="container_image">  
            <a id="image-link" >
            <!--  Jquery CDN-->
			
			<% String denominationArti = (String) arti.data()[9]; %>
          <img id="image_pro" class="image_pro" src="./images/<% out.println(denominationArti); %>.jpg">
            </a>
          <div id="overlay" class="overlay">
            <a id="icon" class="icon" title="">
              <i class="fa fa-camera" aria-hidden="true"></i>
            </a>
            </div>

        </div>
        <div id="myModal" class="modal">
          <span class="close">&times;</span>
          <img class="modal-content" id="img01">
          <div id="caption"></div>
        </div>

          <div class="nom_profile">
                <h1>
                  <% 
                    out.print(denominationArti);
                  %>
                </h1>
                
                <p>
                  <% 
                    String secteurArti = (String) arti.data()[10];
                    out.print(secteurArti);
                  %>
                </p>
            </div>
        
        </div>
             
        </div>
        <nav class="navigation_profile">
            <div class="navigation_container">
                <ul>
                    <li class="lien_profile"><a href="#premier-ancre">L'essentiel</a></li>
                    <li class="lien_profile"><a href="#deuxieme-ancre">Carte</a></li>
                    <li class="lien_profile"><a href="#troisieme-ancre">Présentation</a></li>
                    <li class="lien_profile"><a href="#quatrieme-ancre">Horaires</a></li>
                    <li class="lien_profile"><a href="#cinquieme-ancre">Tarifs</a></li>
                </ul>
            </div>    
        </nav>
        
       

        

        <div class="middle-profil">
          

          
          <div class="middle-profil-gauche">
		  
            <div class="premier-carre">
              <div class="premier-ancre" id="premier-ancre"></div>  
              <div class="essentiel-1">
               <h3 class="petit-titre"><i class="fas fa-euro-sign"></i>  Tarifs et remboursements</h3>
               <p>Prendre contact pour savoir les modalités de remboursement</p><br>
               <a href="#cinquieme-ancre">Voir les tarifs</a>
              </div>
              <div class="essentiel-2">
                <h3 class="petit-titre"><i class="fa fa-credit-card" aria-hidden="true"></i> Moyens de paiment</h3>
                <p>Carte bancaire et espèces </p>
              </div>
            </div>
          
            <div  class="deuxieme-carre">
              <div class="deuxieme-ancre" id="deuxieme-ancre"></div>
              
              <div class="carte">
                <h3 class="grand-titre"><i class="fa fa-map-marker" aria-hidden="true"></i> Carte et informations d'accès</h3>
                <p class="adresse">
                  <% 
                    int cpUti = (int) arti.data()[5];
                    String villeUti = (String) arti.data()[6];
                    String adresseUti = (String) arti.data()[7];
                    out.print(adresseUti+ ", " + cpUti + ' ' +villeUti);
                  %>
                </p><br>
              </div>
              
               <div class="map_profile">
               
                <p><iframe  class="mapp" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2622.1320009129095!2d2.378421915676311!3d48.91287727929296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66c2305bcb7bd%3A0x9d27b286ecd5fd28!2s156%20Avenue%20Victor%20Hugo%2C%2093300%20Aubervilliers!5e0!3m2!1sfr!2sfr!4v1590154049751!5m2!1sfr!2sfr" 
                   frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></p>
               </div>

              </div>
            
            <div class="troisieme-carre">
              <div class="troisieme-ancre" id="troisieme-ancre"></div>
              <div class="presentation">
                <h3 class="grand-titre"><i class="fas fa-align-left"></i> Présentation de l'artisan </h3>
                <p class="text-presentation">
                  <% 
                    String description = (String) arti.data()[12];
					out.print(description);
                  %>
                </p>
				
				<div class="video-carre">
			
				
				<player-videostreaming
				
					id="video-presentation" 
					url="http://localhost:8080/Site-SG/videos/salon.m3u8"
					widthChoice="100%"
					heightChoice="300"
					backgroundColor="#000"
				>
				</player-videostreaming>
				
				</div>
              </div>
			  
			  
			
            </div>
            
            <div  class="quatrieme-carre">
              <div class="quatrieme-ancre" id="quatrieme-ancre"></div>
              <div class="titre-ouverture-contact">
                <h3 class="grand-titre"><i class="fas fa-clock"></i> Ouverture et contacts</h3>
              </div>
              <div class="ouverture-contact">
                <div class="ouverture">
                 <h3 class="petit-titre">Ouverture</h3> 

                 <p>Lundi : <% out.print((String)lesHorairesArti[0]); %></p>
                 <p>Mardi : <% out.print(lesHorairesArti[1]); %></p>
                 <p>Mercredi : <% out.print(lesHorairesArti[2]); %></p>
                 <p>Jeudi : <% out.print(lesHorairesArti[3]); %></p>
                 <p>Vendredi : <% out.print(lesHorairesArti[4]); %></p>
                 <p>Samedi : <% out.print(lesHorairesArti[5]); %></p>
                 <p>Dimanche : <% out.print(lesHorairesArti[6]); %></p>
                </div>
              <div class="contact">
                <h3 class="petit-titre">Contact</h3>
                <p>
                  <% 
                    int telUti = (int) arti.data()[4];
                    out.print(telUti);
                  %>
                </p>
              </div>
              </div>
              
            </div>
            
            <div  class="cinquieme-carre">
              <div class="cinquieme-ancre" id="cinquieme-ancre"></div>
              <div class="tarifs">
                <h3 class="grand-titre"><i class="fas fa-euro-sign"></i> Tarifs</h3>
                <hr class="m"><br>
                
                <%
                  for (Service s : listeServiceArti) {
                    String libServ = (String) s.data()[1];
                    double prixServ = (double) s.data()[2];
                %>
                  <div class="div-tarifs">

                  <p class="type-tarifs"> <% out.print(libServ); %> </p>
                  <p class="prix-tarifs"> <span class="gras"><% out.print(prixServ + "€"); %></span></p>
                  
                  </div>
                
                <% } %>
              </div>
            </div>
          </div>
          
          
          <div class="middle-profil-droit">

            <div class="calendrier-carre">

                   

              <div class="bandeau_calendrier"> 
                <h1>Prenez votre rendez-vous en ligne</h1>
                <p>Renseignez les informations suivantes</p>
              </div>
               
              <div class="essentiel-calendrier">
                
               
                
                  <div class="type">
                    <h3 class="titre-type">Type de rendez-vous</h3>
                    
                    <div class="radio-buttons">
                      <div class="pour-placer-logo1">
                        <input type="radio" name="type" id="sur-place">
                        <label for="sur-place">Sur place</label>
                      </div>
                      <div class="pour-placer-logo2">
                        <i class="fas fa-home" style="color: /*#7791a2*/"></i>
                      </div>
                    </div>
                    <div class="radio-buttons">
                      <div class="pour-placer-logo1">
                        <input type="radio" name="type" class="with-gap" id="en-video">
                        <label for="en-video">En vidéo</label>
                      </div>
                      <div class="pour-placer-logo2">
                        <i class="fas fa-video"></i>
                      </div> 
                    </div>
                    
                  </div>
                 
                   
                 
               
              
              </div>
    
              
             
              
              <div  class="essentiel-2-calendrier">
                <hr class="a">
                <div class="paddingMotif">
                <div class="liste_motif">
                  <h3 class="petit-titre">Motif du rendez-vous</h3>
                  <select name="" id="liste_motifs" onchange="afficher(this)">
                    <option value="">Choisissiez un motif</option>
                    <option value="nouv">Cheveux</option>
                    <option value="nouv">Barbes</option>
                    <option value="nouv">Coloration</option>
                    <option value="autre">Autre</option>
                  </select>
                </div>
               
                <div class="motif">
                 
                  <div id="autreMotif" class="input-motif">
                    <input type="type" id="motif" onkeyup="FonctionNouv()" placeholder="Quel est votre motif ?">
                  </div>
                 </div>
    
                
               
              </div>
    
            </div>
              
              <div id="essentiel-3-calendrier" class="essentiel-3-calendrier">
                <hr class="a">
              <h3 class="petit-titre">Sélectionnez un rendez-vous</h3>
                </div>
            
          
            </div>
			
			


          </div>


        </div>
        </div>
</div>
     
     
      <footer></footer>

</body>

<script src="./js/imageProfile.js" charset="UTF-8"></script>
<script src="./js/header.js" charset="UTF-8"></script>
</html>