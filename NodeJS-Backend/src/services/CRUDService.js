import db from "../models/index";
let createNewUser = async () => {
  return new Promise(async (resolve, reject) => {
    try {
      await db.User.create({
        id: Math.floor(Math.random() * (2500000 - 2200000 - 1)) + 2200000 + 1,
        email: "phuongbinh.conan@gmail.com",
        password: "1234",
        name: "Hoang Phuong Binh",
        gender: "Nam",
        address: "Dong Nai",
        phoneNum: "3952587932",
        status: "Normal",
        role: "Student",
      });
      resolve("Successfully created a new user");
    } catch (error) {
      reject(error);
    }
  });
};
let createNewStaff = async () => {
  return new Promise(async (resolve, reject) => {
    try {
      await db.User.create({
        id: Math.floor(Math.random() * (1500000 - 1200000 - 1)) + 1200000 + 1,
        email: "nguyenvana@gmail.com",
        password: "1234",
        name: "Nguyen Van A",
        gender: "Nam",
        address: "Binh Duong",
        phoneNum: "54684965",
        status: "Normal",
        role: "Staff",
      });
      resolve("Successfully created a new user");
    } catch (error) {
      reject(error);
    }
  });
};
let createNewBook = async () => {
  return new Promise(async (resolve, reject) => {
    try {
      await db.Book.create({
        id: Math.floor(Math.random() * (999 - 100 - 1)) + 100 + 1,
        bookName: "Harry Potter and the Deathly Hallows",
        author: "J.K.Rowling",
        datePublish: "2007-07-21",
        genre: "Kỳ ảo",
        description:
          "Khi trèo lên thùng xe gắn máy của Hagrid và bay lên trời, rời khỏi Privet Drive lần cuối, Harry Potter biết rằng Chúa tể Voldemort và Tử thần Thực tử không còn xa nữa. Bùa hộ mệnh bảo vệ Harry cho đến bây giờ đã bị phá vỡ, nhưng cậu không thể tiếp tục ẩn náu. Chúa tể Bóng tối đang thổi nỗi sợ hãi vào mọi thứ Harry yêu quý, và để ngăn chặn hắn, Harry sẽ phải tìm và phá hủy những Trường sinh linh giá còn lại. Trận chiến cuối cùng phải bắt đầu - Harry phải đứng lên và đối mặt với kẻ thù của mình.",
        quantity: 30,
        img: "https://static.wikia.nocookie.net/harrypotter/images/d/da/Deathly_Hallows_New_Cover.jpg/revision/latest/scale-to-width-down/1000?cb=20170109054859",
        status: "Available",
      });
      resolve("Successfully created a new book");
    } catch (error) {
      reject(error);
    }
  });
};
module.exports = {
  createNewUser: createNewUser,
  createNewStaff: createNewStaff,
  createNewBook: createNewBook,
};
