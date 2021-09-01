import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';

part 'wishlist_event.dart';

part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());

  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    if (event is StartWishlist) {
      yield* _mapStartWishlistToState();
    } else if (event is AddWishlistProduct) {
      yield* _mapAddWishlistToState(event, state);
    } else if (event is RemoveWishlistProduct) {
      yield* _mapRemoveWishlistToState(event, state);
    }
  }

  Stream<WishlistState> _mapStartWishlistToState() async* {
    yield WishlistLoading();
    try {
      await Future<void>.delayed(Duration(seconds: 1));
      yield const WishlistLoaded();
    } catch (_) {}
  }

  Stream<WishlistState> _mapAddWishlistToState(
      AddWishlistProduct event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
            wishlist: Wishlist(
                products: List.from(state.wishlist.products)
                  ..add(event.product)));
      } catch (_) {}
    }
  }

  Stream<WishlistState> _mapRemoveWishlistToState(
      RemoveWishlistProduct event, WishlistState state) async* {
    if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(
            wishlist: Wishlist(
                products: List.from(state.wishlist.products)
                  ..remove(event.product)));
      } catch (_) {}
    }
  }
}
