import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/i_user_repository.dart';
import 'package:team_inside/domain/image/i_image_facade.dart';
import 'package:team_inside/domain/team/i_team_repository.dart';

part 'team_event.dart';
part 'team_state.dart';
part 'team_bloc.freezed.dart';

@injectable
class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final IUserRepository _userRepository;
  final ITeamRepository _teamRepository;
  final IImageFacade _imageFacade;
  TeamBloc(
    this._userRepository,
    this._teamRepository,
    this._imageFacade,
  ) : super(TeamState.initial()) {
    on<NavigateBackToFramework>(
      (event, emit) {},
    );
  }
}
