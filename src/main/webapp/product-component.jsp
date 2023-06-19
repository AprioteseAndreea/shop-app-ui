<%--
  Created by IntelliJ IDEA.
  User: dinui
  Date: 6/19/2023
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="showcase">

  <div class="showcase-banner">

    <img src="./resources/images/jacket-1.png" alt="Mens Winter Leathers Jackets" width="300" class="product-img default">
    <img src="./resources/images/jacket-2.png" alt="Mens Winter Leathers Jackets" width="300" class="product-img hover">

    <p class="showcase-badge">15%</p>

    <div class="showcase-actions">

      <button class="btn-action">
        <ion-icon name="heart-outline"></ion-icon>
      </button>

      <button class="btn-action">
        <ion-icon name="eye-outline"></ion-icon>
      </button>

      <button class="btn-action">
        <ion-icon name="repeat-outline"></ion-icon>
      </button>

      <button class="btn-action">
        <ion-icon name="bag-add-outline"></ion-icon>
      </button>

    </div>

  </div>

  <div class="showcase-content">

    <a href="#" class="showcase-category">jacket</a>

    <a href="#">
      <h3 class="showcase-title">${param.product}</h3>
    </a>

    <div class="showcase-rating">
      <ion-icon name="star"></ion-icon>
      <ion-icon name="star"></ion-icon>
      <ion-icon name="star"></ion-icon>
      <ion-icon name="star-outline"></ion-icon>
      <ion-icon name="star-outline"></ion-icon>
    </div>

    <div class="price-box">
      <p class="price">$48.00</p>
      <del>$75.00</del>
    </div>

  </div>

</div>
