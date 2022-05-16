
import 'package:aion/cubit/nav_bar/nav_bar_state.dart';
import 'package:aion/views/tabs/favorite/favorite_page.dart';
import 'package:aion/views/tabs/profile/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/tabs/home/home_page.dart';

class NavBarCubit extends Cubit<NavBarState> {
	NavBarCubit() : super( NavBarState());
	 final List pages = const [HomePage(), FavoritePage(), ProfilePage(), ];
  int currentIndex = 0;

  void addPages(v) {
    currentIndex = v;
    emit(NavBarState());
  }

  int son = 0;
  pageReload(v) {
    son = v;
    emit(NavBarState());
  }
	
}
