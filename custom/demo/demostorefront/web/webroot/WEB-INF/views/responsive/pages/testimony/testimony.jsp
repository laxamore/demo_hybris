<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
    <h2 class="header-testimoni">TESTIMONI</h2>
</div>
<div class="container">
    <div class="page-testimoni">
        <p>Banyak pembeli yang merasa puas dengan kualitas kasur INTHEBOX</p>
        Kami menerima beragam komentar positif dari pembeli di seluruh Indonesia, bahkan dari kalangan artis. Bukan hanya pengalaman membeli kasur sping bed atau kasur busa, banyak juga yang merasa puas dengan produk INTHEBOX lainnya yang terdiri dari bantal, guling, dan sofa bed.
    </div>
</div>
<div class="container rating p2">
    <c:forEach begin = "1" end = "${testimony_avg_rating}">
        <img src="${commonResourcePath}/images/star-full.png" style="margin-left: 5px;">
    </c:forEach>
    <div style="margin-left: 15px">
        ${testimony_avg_rating}/5 (${testimony_total_reviews} Reviews)
    </div>
</div>
<div class="container">
    <div class="content-testimoni" style="justify-content: center">
        <c:forEach items="${testimony}" var="testimony">
            <div class="testimoni">
                <div class="p1">
                    <div class="t-name">
                        <c:out value = "${testimony.getName()}" />
                    </div>
                    <div class="t-profil">
                        <img src="${commonResourcePath}/images/review-avatar.png">
                    </div>
                </div>
                <div class="p2">
                    <c:forEach begin = "1" end = "${testimony.getRating()}">
                        <img src="${commonResourcePath}/images/star-full.png">
                    </c:forEach>
                </div>
                <div class="p3">
                    <div class="p31">
                        <c:out value = "${testimony.getText()}" />
                    </div>
                    <div class="p32">
                        <c:out value = "${testimony.getParagraph()}" />
                    </div>
                    <div class="p33">
                        <c:out value = "${testimony.getTime()}" />
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<div class="container" style="text-align: center; margin-top: 20px;">
    <a href="testimony" class="btn btn-testimony">Lihat Semua Testimoni</a>
</div>