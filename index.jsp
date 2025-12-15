<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bus.model.Trip" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đặt Xe Đường Dài</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

    <header>
        <div class="logo">BusBooking</div>
        <nav>
            <a href="home" class="btn">Home</a>
            <a href="#" class="btn">Chức năng</a>
            <% if(session.getAttribute("user") == null) { %>
                <a href="login.jsp">Login</a>
            <% } else { %>
                <a href="logout">Logout</a>
            <% } %>
        </nav>
    </header>

    <section class="search-bar">
        <form action="home" method="GET">
            <label>Điểm đi:</label>
            <input list="locations" name="from" placeholder="Nhập điểm đi...">
            <label>Điểm đến:</label>
            <input list="locations" name="to" placeholder="Nhập điểm đến...">
            <datalist id="locations">
                <option value="Hà Nội">
                <option value="Sài Gòn">
                <option value="Đà Nẵng">
                <option value="Sapa">
            </datalist>
            <button type="submit">Tìm chuyến xe</button>
        </form>
    </section>

    <div class="container">
        
        <aside class="sidebar-left">
            <h3>Sắp khởi hành</h3>
            <ul>
                <% 
                   List<Trip> upcoming = (List<Trip>) request.getAttribute("upcomingTrips");
                   if(upcoming != null) {
                       for(Trip t : upcoming) {
                %>
                    <li>
                        <strong><%= t.getRouteName() %></strong><br>
                        <small><%= t.getDepartureTime() %></small>
                    </li>
                    <hr>
                <%      }
                   }
                %>
            </ul>
        </aside>

        <main class="content-right">
            <h2>Kết quả tìm kiếm</h2>
            <% 
               List<Trip> mainList = (List<Trip>) request.getAttribute("mainTrips");
               if(mainList != null && !mainList.isEmpty()) {
                   for(Trip t : mainList) {
            %>
                <div class="trip-card">
                    <div class="trip-info">
                        <h3><%= t.getRouteName() %></h3>
                        <p><strong>Khởi hành:</strong> <%= t.getDepartureTime() %></p>
                        <p><strong>Thời gian đi:</strong> <%= t.getDuration() %></p>
                        <p class="price"><strong>Giá vé:</strong> <%= String.format("%,.0f", t.getPrice()) %> VNĐ</p>
                    </div>
                    <div class="trip-action">
                        <a href="booking.jsp?id=<%= t.getId() %>" class="btn-book">Đặt Vé Ngay</a>
                    </div>
                </div>
            <% 
                   }
               } else {
            %>
                <p>Không tìm thấy chuyến xe phù hợp.</p>
            <% } %>
        </main>
    </div>

</body>
</html>