import 'package:blocex3/image_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'gallery_event.dart';
import 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState>
{
  GalleryBloc()
      : super(GalleryState(allImages:
  [
    GalleryModel(id: 1, path: 'assets/images/a1.png'),
    GalleryModel(id: 2, path: 'assets/images/a2.jpg'),
    GalleryModel(id: 3, path: 'assets/images/a3.jpg'),

  ]))
  {
    on<ToggleFavorite>((event, emit) {
      final updated = state.allImages.map((img) {
        if (img.id == event.imageId) {
          return img.copyWith(isFavorite: !img.isFavorite);
        }
        return img;
      }).toList();
      emit(GalleryState(
        allImages: updated,
        showFavoritesOnly: state.showFavoritesOnly,
      ));
    });

    on<ShowFavorites>((event, emit) {
      emit(GalleryState(allImages: state.allImages, showFavoritesOnly: true));
    });

    on<ShowAll>((event, emit) {
      emit(GalleryState(allImages: state.allImages, showFavoritesOnly: false));
    });
  }

}