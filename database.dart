void main() {
  final users = <User>[
    const User(id: 1, admin: true, username: "inomoto", password: "inomoto"),
    const User(id: 2, admin: true, username: "ishiguro", password: "ishiguro"),
    const User(id: 3, admin: false, username: "takahashi", password: "takahashi"),
    const User(id: 4, admin: true, username: "kashiwagi", password: "kashiwagi"),
    const User(id: 5, admin: false, username: "kumita", password: "kumita"),
  ];
	// 問1 Userクラスを作成
	// 問2 インスタンスの作成
  // 問3 ユーザー認証をする関数を作成
  // 問4 admin が True の User だけを取得する

  // 問５ userのusernameのみ,または指定したidのuserだけをを表示する。 
  adminUsername(users,3);
}

class User {
  const User({
    required this.id,
    required this.admin,
    required this.username,
    required this.password,
  });

  final int id;
  final bool admin;
  final String username;
  final String password;
}

User? authenticate(List<User> users, String inputUsername, String inputPassword) {
  for (final user in users) {
    if (user.username == inputUsername && user.password == inputPassword) {
      print('Authentication successful for user: ${user.username}');
      return user;
    } else {
      print("ユーザー名またはパスワードが正しくありません。");
    }
  }
  return null;
}
void adminUsername(List<User> users,int id){
  final adminUsernames = users.where((user)=>user.admin).map((user)=>user.username).toList();
  print(adminUsernames);
  final idUsernames = users.where((user)=>user.id==id).map((user)=>user.username).toList();
  print(idUsernames);
}

// friendlistの表示など、一覧リストの表示に使える