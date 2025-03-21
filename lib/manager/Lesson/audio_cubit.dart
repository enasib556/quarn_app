import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarn_app/manager/Lesson/audio_state.dart';
import 'package:quarn_app/manager/Suwar/state.dart';

import '../../models/lesson.dart';
import '../../network/apiServiceLesson.dart';

class AudioCubit extends Cubit<AudioState> {
  AudioCubit() : super(InitalAudioState());
  getAudios() async {
    emit(LoadingAudioState());
    ApiServiseLesson apiServiseLesson = ApiServiseLesson();
    List<Audio> audios = [];
    var json = await apiServiseLesson.get(
        endpoints: '/paV29H2gm56kvLPy/main/audios/ar/ar/1/25/json'
    );
    try {
      for(var i in json['data']){
        String url = (i['attachments'] != null && i['attachments'].isNotEmpty)
            ? i['attachments'].first['url']
            : '';
        audios.add(Audio(title: i['title'], url: url, description: i['description']));
      }
      emit(LoadedAudioState(audios: audios));
    } on Exception catch (e) {
      emit(ErrorAudioState(message: e.toString()));
    }
  }
}