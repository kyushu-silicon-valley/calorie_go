/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:calorie_go_client/src/protocol/exercise.dart' as _i3;
import 'package:calorie_go_client/src/protocol/monsters.dart' as _i4;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i5;
import 'package:calorie_go_client/src/protocol/user_exercise_hist.dart' as _i6;
import 'protocol.dart' as _i7;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointExercise extends _i1.EndpointRef {
  EndpointExercise(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'exercise';

  _i2.Future<_i3.Exercise?> startExercise() =>
      caller.callServerEndpoint<_i3.Exercise?>(
        'exercise',
        'startExercise',
        {},
      );

  _i2.Future<_i3.Exercise?> finishExercise({
    required int exerciseId,
    required int stepCount,
  }) =>
      caller.callServerEndpoint<_i3.Exercise?>(
        'exercise',
        'finishExercise',
        {
          'exerciseId': exerciseId,
          'stepCount': stepCount,
        },
      );

  _i2.Future<List<_i3.Exercise>> myExerciseHist() =>
      caller.callServerEndpoint<List<_i3.Exercise>>(
        'exercise',
        'myExerciseHist',
        {},
      );
}

/// {@category Endpoint}
class EndpointMonster extends _i1.EndpointRef {
  EndpointMonster(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'monster';

  _i2.Future<_i4.Monster?> fetchCurrentUserMonster() =>
      caller.callServerEndpoint<_i4.Monster?>(
        'monster',
        'fetchCurrentUserMonster',
        {},
      );
}

/// {@category Endpoint}
class EndpointRanking extends _i1.EndpointRef {
  EndpointRanking(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ranking';

  _i2.Future<List<_i5.UserInfo>?> getRanking() =>
      caller.callServerEndpoint<List<_i5.UserInfo>?>(
        'ranking',
        'getRanking',
        {},
      );

  _i2.Future<int> myRanking() => caller.callServerEndpoint<int>(
        'ranking',
        'myRanking',
        {},
      );
}

/// {@category Endpoint}
class EndpointTicket extends _i1.EndpointRef {
  EndpointTicket(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'ticket';
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  /// 現在ログイン中のユーザー情報を取得する
  /// ログインしていない場合はnullを返す
  _i2.Future<_i5.UserInfo?> fetchCurrentUser() =>
      caller.callServerEndpoint<_i5.UserInfo?>(
        'user',
        'fetchCurrentUser',
        {},
      );

  /// 現在のログイン中のユーザーのニックネームを変更するためのエンドポイント
  /// [nickname]に変更後のニックネームを指定する
  _i2.Future<_i5.UserInfo?> changeUserNickname({required String nickname}) =>
      caller.callServerEndpoint<_i5.UserInfo?>(
        'user',
        'changeUserNickname',
        {'nickname': nickname},
      );

  _i2.Future<void> firstSignInProcess() => caller.callServerEndpoint<void>(
        'user',
        'firstSignInProcess',
        {},
      );
}

/// {@category Endpoint}
class EndpointUserExerciseHist extends _i1.EndpointRef {
  EndpointUserExerciseHist(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'userExerciseHist';

  _i2.Future<void> create() => caller.callServerEndpoint<void>(
        'userExerciseHist',
        'create',
        {},
      );

  _i2.Future<_i6.UserExerciseHist> myExerciseHist() =>
      caller.callServerEndpoint<_i6.UserExerciseHist>(
        'userExerciseHist',
        'myExerciseHist',
        {},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i7.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    example = EndpointExample(this);
    exercise = EndpointExercise(this);
    monster = EndpointMonster(this);
    ranking = EndpointRanking(this);
    ticket = EndpointTicket(this);
    user = EndpointUser(this);
    userExerciseHist = EndpointUserExerciseHist(this);
    modules = _Modules(this);
  }

  late final EndpointExample example;

  late final EndpointExercise exercise;

  late final EndpointMonster monster;

  late final EndpointRanking ranking;

  late final EndpointTicket ticket;

  late final EndpointUser user;

  late final EndpointUserExerciseHist userExerciseHist;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'exercise': exercise,
        'monster': monster,
        'ranking': ranking,
        'ticket': ticket,
        'user': user,
        'userExerciseHist': userExerciseHist,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
