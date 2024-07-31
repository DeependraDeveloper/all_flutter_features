part of 'auth_bloc.dart';

final class AuthState extends Equatable {
  const AuthState({
    this.isLoading = false,
    this.error = '',
    this.message = '',
    this.status = false,
  });

  final bool isLoading;
  final String error;
  final String message;
  final bool status;

  AuthState copyWith({
    bool? isLoading,
    String? error,
    String? message,
    bool? status,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [isLoading, error, message, status];
}
