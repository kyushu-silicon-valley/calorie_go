/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/exercise_endpoint.dart' as _i3;
import '../endpoints/monster_endpoint.dart' as _i4;
import '../endpoints/notification_endpoint.dart' as _i5;
import '../endpoints/ranking_endpoint.dart' as _i6;
import '../endpoints/ticket_endpoint.dart' as _i7;
import '../endpoints/user_endpoint.dart' as _i8;
import '../endpoints/user_exercise_hist_endpoint.dart' as _i9;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i10;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'exercise': _i3.ExerciseEndpoint()
        ..initialize(
          server,
          'exercise',
          null,
        ),
      'monster': _i4.MonsterEndpoint()
        ..initialize(
          server,
          'monster',
          null,
        ),
      'notification': _i5.NotificationEndpoint()
        ..initialize(
          server,
          'notification',
          null,
        ),
      'ranking': _i6.RankingEndpoint()
        ..initialize(
          server,
          'ranking',
          null,
        ),
      'ticket': _i7.TicketEndpoint()
        ..initialize(
          server,
          'ticket',
          null,
        ),
      'user': _i8.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'userExerciseHist': _i9.UserExerciseHistEndpoint()
        ..initialize(
          server,
          'userExerciseHist',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['exercise'] = _i1.EndpointConnector(
      name: 'exercise',
      endpoint: endpoints['exercise']!,
      methodConnectors: {
        'startExercise': _i1.MethodConnector(
          name: 'startExercise',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['exercise'] as _i3.ExerciseEndpoint)
                  .startExercise(session),
        ),
        'finishExercise': _i1.MethodConnector(
          name: 'finishExercise',
          params: {
            'exerciseId': _i1.ParameterDescription(
              name: 'exerciseId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'stepCount': _i1.ParameterDescription(
              name: 'stepCount',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['exercise'] as _i3.ExerciseEndpoint).finishExercise(
            session,
            exerciseId: params['exerciseId'],
            stepCount: params['stepCount'],
          ),
        ),
        'myExerciseHist': _i1.MethodConnector(
          name: 'myExerciseHist',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['exercise'] as _i3.ExerciseEndpoint)
                  .myExerciseHist(session),
        ),
      },
    );
    connectors['monster'] = _i1.EndpointConnector(
      name: 'monster',
      endpoint: endpoints['monster']!,
      methodConnectors: {
        'fetchCurrentUserMonster': _i1.MethodConnector(
          name: 'fetchCurrentUserMonster',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['monster'] as _i4.MonsterEndpoint)
                  .fetchCurrentUserMonster(session),
        ),
        'fetchCurrentUserMonsterImage': _i1.MethodConnector(
          name: 'fetchCurrentUserMonsterImage',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['monster'] as _i4.MonsterEndpoint)
                  .fetchCurrentUserMonsterImage(session),
        ),
      },
    );
    connectors['notification'] = _i1.EndpointConnector(
      name: 'notification',
      endpoint: endpoints['notification']!,
      methodConnectors: {
        'getNotification': _i1.MethodConnector(
          name: 'getNotification',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['notification'] as _i5.NotificationEndpoint)
                  .getNotification(session),
        )
      },
    );
    connectors['ranking'] = _i1.EndpointConnector(
      name: 'ranking',
      endpoint: endpoints['ranking']!,
      methodConnectors: {
        'getRanking': _i1.MethodConnector(
          name: 'getRanking',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ranking'] as _i6.RankingEndpoint).getRanking(session),
        ),
        'myRanking': _i1.MethodConnector(
          name: 'myRanking',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['ranking'] as _i6.RankingEndpoint).myRanking(session),
        ),
      },
    );
    connectors['ticket'] = _i1.EndpointConnector(
      name: 'ticket',
      endpoint: endpoints['ticket']!,
      methodConnectors: {},
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'fetchCurrentUser': _i1.MethodConnector(
          name: 'fetchCurrentUser',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i8.UserEndpoint).fetchCurrentUser(session),
        ),
        'changeUserNickname': _i1.MethodConnector(
          name: 'changeUserNickname',
          params: {
            'nickname': _i1.ParameterDescription(
              name: 'nickname',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i8.UserEndpoint).changeUserNickname(
            session,
            nickname: params['nickname'],
          ),
        ),
        'firstSignInProcess': _i1.MethodConnector(
          name: 'firstSignInProcess',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i8.UserEndpoint)
                  .firstSignInProcess(session),
        ),
        'hasSignedUp': _i1.MethodConnector(
          name: 'hasSignedUp',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i8.UserEndpoint).hasSignedUp(session),
        ),
      },
    );
    connectors['userExerciseHist'] = _i1.EndpointConnector(
      name: 'userExerciseHist',
      endpoint: endpoints['userExerciseHist']!,
      methodConnectors: {
        'create': _i1.MethodConnector(
          name: 'create',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userExerciseHist'] as _i9.UserExerciseHistEndpoint)
                  .create(session),
        ),
        'myExerciseHist': _i1.MethodConnector(
          name: 'myExerciseHist',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userExerciseHist'] as _i9.UserExerciseHistEndpoint)
                  .myExerciseHist(session),
        ),
      },
    );
    modules['serverpod_auth'] = _i10.Endpoints()..initializeEndpoints(server);
  }
}
