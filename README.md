### 学生管理系统

#### 1、 所用技术

- jsp
- sqlserver

####  2、功能

- 基本功能：本系统的功能主要是要面向学生，方便他们查询自己的信息。也包含了能对数据库部分数据更改的教师、宿舍管理员和高级管理员角色。
- 登录功能：用户通过用户名和密码登录（不同类型用户，用户名不同），验证身份，进行不同类型用户对应的信息操作，若不登录，无法进行任何操作。
- 学生角色功能
  - 学生主体信息查询模块：学生只能查询当前登录账号的个人信息，包括学生基本信息（班主任信息为班主任姓名），个人健康信息，个人所属专业学院，个人宿舍信息（水费，电费，卫生等级）。
  - 学生请假模块：学生填写并修改请假信息，并等待班主任审核。
  - 学生选修课程查询模块：学生查询已经选修的课程信息（课程名，所属学院，授课教师，成绩，已出勤次数，应出勤次数），并且查看所有可选课程的信息（课程名，所属学院，授课老师）。
  - 书籍信息查询模块：展示登录学生已借的书籍信息（书号，书名，借阅时间，应归还时间）并且可以查询所有书籍信息。
- 教师角色功能
  - 学生信息查询：查询所授课程中及其管理班级里学生信息。
  - 学生成绩及出勤信息管理：宿舍评级处理。
  - 学生请假信息管理：查看班级里所有学生的请假信息，并设置批准与否。
- 宿舍管理员角色功能
  - 学生信息查询：查询学生的基本信息。
  - 学生宿舍信息管理：查询自身负责的宿舍，对宿舍评级处理。
- 超级管理员角色功能
  - 学生基本信息管理：对所有学生的基本信息，健康信息进行查询、修改；
  - 学生健康信息管理：对所有学生的健康信息进行查询、修改；
  - 教师信息管理：对所有老师信息进行查询 、修改；
  - 课程信息管理：对所有课程信息进行查询、修改；
  - 学院信息管理：对所有学院信息进行查询；
  - 宿舍信息管理：对所有宿舍信息进行查询；
  - 宿舍管理员信息管理：对所有宿舍管理员信息进行查询、修改；
  - 书籍信息管理：对所有书籍信息进行查询、修改；
  - 用户信息管理：对所有用户信息进行查询、修改；

#### 3、系统结构图

![](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/dbd.png)

#### 4、 ER图

![](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/dbd_er.png)

#### 5、物理模型

![](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/dbd_physical_model.png)

#### 6、界面

1. 用户登录界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image002.jpg)

2. 学生用户登录成功界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image004.jpg)

3. 修改密码界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image006.jpg)

4. 学生课程管理界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image008.jpg)

5. 学生添加课程页面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image010.jpg)

6. 成绩管理界面（可以查看已修完的课程成绩）

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image012.jpg)

7. 学生请假界面以及发起请假界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image014.jpg)

8. 学生借书管理以及发起借书页面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image016.jpg)

9. 教师登录后的出勤信息界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image018.jpg)

10. 点击查询课程名界面

![img](C:/Users/14323/AppData/Local/Temp/msohtmlclip1/01/clip_image020.jpg)

11. 成绩管理界面（按照课程号升序，同课程号的成绩按照分数降序排序）

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image022.jpg)

12. 成绩录入界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image024.jpg)

13. 成绩录入完成后界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image026.jpg)

14. 教师端请假管理界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image028.jpg)

15. 点击批准后

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image030.jpg)

16. 信息查询界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image032.jpg)

17. 对学号带170的同学进行查询

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image034.jpg)

18. 宿舍管理员登录之后的生活管理界面以及学生住宿情况

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image036.jpg)

19. 信息查询界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image038.jpg)

20. 管理员端登陆成功后的学生管理界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image040.jpg)

21. 学校管理界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image042.jpg)

22. 生活管理界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image044.jpg)

23. 信息查询界面

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image046.jpg)

24. 用户管理界面（此界面可添加新的用户）

![img](https://gitee.com/zyl1432397127/pic-go-img/raw/master/img/clip_image048.jpg)



