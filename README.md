# Bookstore Website with Spring MVC

## Giới thiệu

Trang web Bookstore là một ứng dụng web thương mại điện tử được xây dựng bằng Java và sử dụng framework Spring MVC để quản lý các yêu cầu web và kết nối với cơ sở dữ liệu. Trang web cung cấp một giao diện thân thiện với người dùng để duyệt và tìm kiếm các cuốn sách, xem thông tin chi tiết và thực hiện đơn hàng mua hàng một cách thuận tiện.

## Các Tính Năng Chính

- **Duyệt và Tìm Kiếm Sách:** Người dùng có thể duyệt qua danh sách sách hoặc tìm kiếm theo tiêu đề, tác giả hoặc thể loại.
- **Xem Chi Tiết Sách:** Mỗi cuốn sách có trang thông tin riêng với mô tả, tác giả, giá và thông tin khác.
- **Mua Sách:** Người dùng có thể thêm sách vào giỏ hàng và hoàn thành quy trình thanh toán.
- **Mã Giảm Giá:** Hỗ trợ sử dụng mã giảm giá để nhận giảm giá cho đơn hàng.
- **Đăng Ký và Đăng Nhập:** Khách hàng có thể đăng ký tài khoản mới hoặc đăng nhập vào tài khoản hiện có.

## Cài Đặt và Chạy Thử

### Yêu Cầu:
- Java Development Kit (JDK) đã được cài đặt trên máy tính của bạn.
- Apache Maven để quản lý các phụ thuộc của dự án.

### Cài Đặt:
1. Clone repository về máy của bạn: git clone https://github.com/wuubangdev/demo-book-store-spring.git'

2. Mở dự án bằng trình biên dịch hoặc IDE (Integrated Development Environment) của bạn.

### Cấu Hình Cơ Sở Dữ Liệu:
- Thay đổi các thông tin cấu hình cơ sở dữ liệu trong file `application.properties` để phù hợp với môi trường của bạn.

### Chạy Ứng Dụng:
- Sử dụng Maven để chạy ứng dụng: mvn spring-boot:run
- Truy cập vào `http://localhost:8080` trên trình duyệt web của bạn để xem trang web.

## Cơ Sở Dữ Liệu

Trang web này sử dụng cơ sở dữ liệu MySQL để lưu trữ thông tin về các cuốn sách, tác giả, thể loại, khách hàng, đơn hàng và các thông tin liên quan khác. Xem file `database_schema.sql` để biết cấu trúc cơ sở dữ liệu.

## Đóng Góp

Nếu bạn muốn đóng góp vào dự án, vui lòng tạo pull request trên GitHub hoặc báo cáo lỗi thông qua hệ thống Issues.

## Tác Giả

- Tên: [wuubangdev](https://github.com/wuubangdev)
- Email: wuubangdev@gmail.com