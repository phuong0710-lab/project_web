<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Xác nhận đặt vé</title></head>
<body style="padding: 20px; font-family: sans-serif;">
    <h2>Thông tin đặt vé</h2>
    
    <div class="booking-summary">
        <p>Bạn đang đặt vé cho mã chuyến: <strong><%= request.getParameter("id") %></strong></p>
    </div>

    <form action="confirm-booking" method="POST" style="max-width: 500px;">
        <div class="form-group">
            <label>Họ và tên:</label><br>
            <input type="text" name="fullname" required style="width: 100%">
        </div>
        
        <div class="form-group">
            <label>Số điện thoại liên lạc:</label><br>
            <input type="tel" name="phone" required style="width: 100%">
        </div>

        <div class="form-group">
            <label>Địa điểm đón cụ thể:</label><br>
            <input type="text" name="pickup" placeholder="Vd: 123 Đường Xuân Thủy..." required style="width: 100%">
        </div>

        <div class="form-group">
            <label>Cách thức thanh toán:</label><br>
            <select name="payment" style="width: 100%; padding: 5px;">
                <option value="cash">Thanh toán tiền mặt khi lên xe</option>
                <option value="bank">Chuyển khoản ngân hàng</option>
                <option value="momo">Ví điện tử (Momo/ZaloPay)</option>
            </select>
        </div>
        <br>
        <button type="submit" style="padding: 10px 20px; background: green; color: white; border: none;">Xác Nhận Đặt</button>
    </form>
</body>
</html>