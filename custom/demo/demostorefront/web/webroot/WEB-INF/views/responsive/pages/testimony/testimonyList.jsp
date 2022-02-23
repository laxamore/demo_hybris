<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div class="section-testimoni">
    <div class="container">
        <h1 class="header-testimoni header-list">TESTIMONI PEMBELI INTHEBOX<h1>
    </div>
    <div class="container page-testimoni">
        <p style="text-align: center;">Banyak pembeli yang merasa puas dengan kualitas kasur INTHEBOX</p>
        <p style="text-align: justify; margin-top: 25px;">Kami menerima beragam komentar positif dari pembeli di seluruh Indonesia, bahkan dari kalangan artis. Bukan hanya pengalaman membeli kasur sping bed atau kasur busa, banyak juga yang merasa puas dengan produk INTHEBOX lainnya yang terdiri dari bantal, guling, dan sofa bed.</p>
        <p style="text-align: justify; margin-top: 25px;">Kami selalu berinovasi menghadirkan beragam jenis kasur dan produk penunjang istirahat lainnya. Kami paham bahwa istirahat yang cukup dan tidur berkualitas adalah hal yang penting. Oleh karena itu, kami selalu menggunakan material berkualitas premium, namun kamu bisa memilikinya dengan harga terjangkau.</p>
    </div>
    <div class="container" style="margin-top: -40px;">
        <div class="content-testimoni">
            <c:forEach items="${testimonyList}" var="testimonyList">
                <div class="testimoni">
                    <div class="p1">
                        <div class="t-name">
                          <c:out value = "${testimonyList.getName()}" />
                        </div>
                        <div class="t-profil">
                            <img src="${commonResourcePath}/images/review-avatar.png">
                        </div>
                    </div>
                    <div class="p2">
                        <c:forEach begin = "1" end = "${testimonyList.getRating()}">
                            <img src="${commonResourcePath}/images/star-full.png">
                        </c:forEach>
                    </div>
                    <div class="p3">
                        <div class="p31">
                            <c:out value = "${testimonyList.getText()}" />
                        </div>
                        <div class="p32">
                            <c:out value = "${testimonyList.getParagraph()}" />
                        </div>
                        <div class="p33">
                            <c:out value = "${testimonyList.getTime()}" />
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>