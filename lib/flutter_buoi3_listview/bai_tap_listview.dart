import 'package:flutter/material.dart';

class BaiTap3 extends StatelessWidget {
  const BaiTap3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UserTest> user = [
      UserTest(
          "Messi",
          "https://images2.thanhnien.vn/Uploaded/gianglao/2022_12_09/messi-5690.jpeg",
          "Messi xin chào Việt Nam"),
      UserTest(
          "Neymar",
          "https://media1.nguoiduatin.vn/thumb_x1280x857/media/mai-hong-duy/2023/03/07/neymar-psg.jpg",
          "Neymar xin chào Việt Nam"),
      UserTest(
          "Ronaldo",
          "https://file3.qdnd.vn/data/images/0/2023/02/26/trungthanh_tv/ronaldo%201.jpeg?dpi=150&quality=100&w=870",
          "Ronaldo xin chào Việt Nam"),
      UserTest(
          "Salah",
          "https://vtv1.mediacdn.vn/thumb_w/650/2022/4/10/vrlmhyacr3rptjm6mqpi2ax4ce-16495443153032100256049-crop-1649544319898182274626.jpg",
          "Salah xin chào Việt Nam"),
      UserTest(
          "Roberson",
          "https://e0.365dm.com/22/03/1600x900/skysports-robertson-scotland_5714142.jpg?20220321115851",
          "Roberson xin chào Việt Nam"),
      UserTest(
          "Beckham",
          "https://cdn.baogiaothong.vn/upload/2-2021/images/2021-06-29/bk-1624949210-873-width1646height1097.jpg",
          "Beckham xin chào Việt Nam"),
      UserTest(
          "Mane",
          "https://i1-thethao.vnecdn.net/2022/05/30/mane-2-1653865327-3795-1653865424.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=O9zuA_52I0qsaxl_bBT63Q",
          "Mane xin chào Việt Nam")
    ];
    Widget _renderTexField() {
      return TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search_outlined,
            color: Colors.pink,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.pink),
          ),
        ),
      );
    }

    Widget _renderStory() {
      return Container(
        height: 140,
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(user[index].UrlAvatar),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(user[index].name)
                ],
              );
            }),
      );
    }

    Widget _renderMesseger() {
      return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: user.length,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(user[index].UrlAvatar),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user[index].name),
                    Text(user[index].messeger)
                  ],
                )
              ],
            );
          });
    }

    Widget _renderBody() {
      return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _renderTexField(),
              SizedBox(
                height: 10,
              ),
              _renderStory(),
              _renderMesseger()
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Messenger"),
      ),
      body: _renderBody(),
    );
  }
}

class UserTest {
  final String name;
  final UrlAvatar;
  final messeger;

  UserTest(this.name, this.UrlAvatar, this.messeger);
}
