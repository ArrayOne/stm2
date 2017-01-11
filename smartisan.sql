DROP DATABASE  IF EXISTS  smartisan;
SET NAMES UTF8;

CREATE DATABASE smartisan CHARSET=UTF8;
USE smartisan;

/*1:white 2:black 3:blue 4:red 5:yellow*/
CREATE TABLE earPrimary (
    eId INT PRIMARY KEY AUTO_INCREMENT,#id表示耳机的种类
    ePrice FLOAT(10,2),  #价格
    eName VARCHAR(22),   #耳机名
    eInfo VARCHAR(44)   #信息
);

INSERT INTO earPrimary VALUES
(NULL,46.99,"FILL Diva Pro king 玫瑰","智能语音交互"),
(NULL,46.99,"Dell bull tom 百合","智能语音交互"),
(NULL,46.99,"Pro farther away 朝奉","智能语音交互");


/*存放对应颜色耳机的数量与图片*/
CREATE TABLE  earPicNum(
 ePicId       INT PRIMARY KEY AUTO_INCREMENT,
 eNum         INT,             #耳机的数量
 ePic_L_1     VARCHAR(144),     #大图1
 ePic_L_2     VARCHAR(144),     #大图1
 ePic_L_3     VARCHAR(144),     #大图1
 ePic_L_4     VARCHAR(144),     #大图1
 ePic_s_1     VARCHAR(144),     #1
 ePic_s_2     VARCHAR(144),     #2
 ePic_s_3     VARCHAR(144),     #3
 ePic_s_4     VARCHAR(144),     #4
 eType_Color        INT,             #1:white 2:black 3:blue 4:red 5:yellow
 eId          INT              #外键（用于联表查询,颜色的ID）
);

INSERT INTO earPicNum VALUES
( NULL,
  25,
   "img/earDetail/one-type-ear/one-white/ear_L_1.jpg",
   "img/earDetail/one-type-ear/one-white/ear_L_2.jpg",
   "img/earDetail/one-type-ear/one-white/ear_L_3.jpg",
   NULL,
   "img/earDetail/one-type-ear/two-black/ear_s_1.jpg",
   "img/earDetail/one-type-ear/two-black/ear_s_2.jpg",
   "img/earDetail/oen-type-ear/two-black/ear_s_3.jpg",
   NULL,
  1, #白色
  1  #第1款耳机
),

( NULL,
   15,
   "img/earDetail/two-type-ear/two-black/ear_L_1.jpg",
   NULL,
   NULL,
   NULL,
   "img/earDetail/two-type-ear/two-black/ear_s_1.jpg",
   NULL,
   NULL,
   NULL,
  2, #黑色
  2  #第2款耳机
),

( NULL,
  55,
  "img/earDetail/two-type-ear/three-blue/ear_L_1.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_L_2.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_L_3.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_L_4.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_s_1.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_s_2.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_s_3.jpg",
  "img/earDetail/two-type-ear/three-blue/ear_s_4.jpg",
  3,  #蓝色
  2  #第2款耳机
),

( NULL,
  88,
  "img/earDetail/two-type-ear/two-black/ear_L_1.jpg",
  "img/earDetail/two-type-ear/two-black/ear_L_2.jpg",
  "img/earDetail/two-type-ear/two-black/ear_L_3.jpg",
  "img/earDetail/two-type-ear/two-black/ear_L_4.jpg",
  "img/earDetail/two-type-ear/two-black/ear_s_1.jpg",
  "img/earDetail/two-type-ear/two-black/ear_s_2.jpg",
  "img/earDetail/two-type-ear/two-black/ear_s_3.jpg",
  "img/earDetail/two-type-ear/two-black/ear_s_4.jpg",
  2,  #黑色
  2  #第2款耳机
),


( NULL,
  34,
  "img/earDetail/three-type-ear/five-yellow/ear_L_1.jpg",
   NULL,
   NULL,
   NULL,
  "img/earDetail/three-type-ear/five-yellow/ear_s_1.jpg",
  NULL,
  NULL,
  NULL,
  5,  #黄色
  3  #第3款耳机
),

 ( NULL,
   65,
  "img/earDetail/three-type-ear/three-blue/ear_L_1.jpg",
   NULL,
   NULL,
   NULL,
  "img/earDetail/three-type-ear/three-blue/ear_s_1.jpg",
   NULL,
  NULL,
  NULL,
  3,  #蓝色
  3  #第3款耳机
),

 ( NULL,
   88,
  "img/earDetail/three-type-ear/two-black/ear_L_1.jpg",
   NULL,
   NULL,
   NULL,
  "img/earDetail/three-type-ear/two-black/ear_s_1.jpg",
   NULL,
  NULL,
  NULL,
  2,  #黑色
  3  #第3款耳机
);

