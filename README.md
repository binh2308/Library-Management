# Library Management

**Library Management** là một ứng dụng quản lý thư viện của trường đại học Bách khoa. Ứng dụng bao gồm hai phần chính: **Server (Backend)** và **Client (Frontend)**. Dưới đây là hướng dẫn chi tiết để cài đặt và chạy dự án.

## Yêu cầu hệ thống
- Node.js (>= 14.0.0)
- Database: MySQL 
## Cài đặt và cấu hình

### 1. Cài đặt Server

1. Truy cập vào thư mục **NodeJS-Backend**:

    ```bash
    cd NodeJS-Backend
    ```

2. Cài đặt các phụ thuộc:

    ```bash
    npm install
    ```

3. Chạy server (Backend):

    ```bash
    npm start
    ```

    Lệnh này sẽ khởi động server và kết nối tới database MySQL. Server sẽ lắng nghe trên cổng mặc định được cấu hình trong file .env.

### 2. Cài đặt Client

1. Truy cập vào thư mục **dath_web**:

    ```bash
    cd dath_web
    ```

2. Cài đặt các phụ thuộc:

    ```bash
    npm install
    ```

3. Chạy frontend (Client):

    ```bash
    npm start
    ```

    Lệnh này sẽ khởi động frontend và ứng dụng sẽ chạy trên cổng `3000` (mặc định).

### 3. Đăng nhập vào ứng dụng

- **Tài khoản người dùng**:  
  **Email**: `phuongbinh.conan@gmail.com`  
  **Mật khẩu**: `1234`

- **Tài khoản quản trị viên (Admin)**:  
  **Email**: `nguyenvana@gmail.com`  
  **Mật khẩu**: `1234`

### 4. Cấu hình database
Người dùng phải cài đặt cơ sở dữ liệu MySQL trên máy, sau đó tạo cơ sở dữ liệu có tên là librarymanagement.
Sau đó import file librarymanagement.sql vào cơ sở dữ liệu đã tạo để có được các bảng dữ liệu

**Cấu hình File `.env` cho cổng chạy Back-end:
Đặt biến PORT bằng số hiệu cổng muốn server chạy, ví dụ:
```env
PORT=8000
```

## Cảm ơn bạn đã sử dụng Library Management System!


