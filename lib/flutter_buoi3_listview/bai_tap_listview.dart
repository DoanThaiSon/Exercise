import 'package:flutter/material.dart';

class BaiTap3 extends StatefulWidget {
  const BaiTap3({Key? key}) : super(key: key);

  @override
  State<BaiTap3> createState() => _BaiTap3State();
}

class _BaiTap3State extends State<BaiTap3> {
  final TextEditingController _controller = TextEditingController();
  void addUser(UserTest newUser) {
    user.add(newUser);
  }

  void removeUser(int index) {
    user.removeAt(index);
  }
  String _searchText = "";
  UserTest newUser = UserTest(
      "Luis Suárez",
      "https://i1-thethao.vnecdn.net/2022/07/27/16588273282144-9244-1658887018.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=JljddybENVGJ_DTKpAxNlw",
      "Luis Suárez xin chào Việt Nam");
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

  Widget renderTexField() {
    return TextField(
      controller: _controller,
      onChanged: (value){
        setState(() {
          user.where((item) => item.name.contains(_searchText)).toList();
          _searchText = value;
        });
      },
      decoration: const InputDecoration(
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

  Widget renderStory() {
    return SizedBox(
      height: 140,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
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
                  backgroundImage: NetworkImage(user[index].urlAvatar),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(user[index].name,style: const TextStyle(color: Colors.white),)
              ],
            );
          }),
    );
  }

  Widget renderMesseger() {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: user.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemBuilder: (context, index) {
          return Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(user[index].urlAvatar),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(user[index].name,style: const TextStyle(color: Colors.white),), Text(user[index].messeger,style: const TextStyle(color: Colors.white),)],
                ),
              ),
              IconButton(onPressed: (){
                setState(() {
                  removeUser(index);
                });
              }, icon: const Icon(Icons.clear))
            ],
          );
        });
  }

  Widget renderBody() {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/lotus.jpg'),fit: BoxFit.cover)
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            renderTexField(),
            const SizedBox(
              height: 10,
            ),
            renderStory(),
            renderMesseger(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Messenger"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  addUser(newUser);
                });
              },
              icon: const Icon(
                Icons.add_circle_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: renderBody(),
    );
  }
}

class UserTest {
  final String name;
  final String urlAvatar;
  final String messeger;

  UserTest(this.name, this.urlAvatar, this.messeger);
}
