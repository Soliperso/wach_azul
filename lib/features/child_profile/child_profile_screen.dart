import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_routes.dart';
import 'child_profile_controller.dart';

class ChildProfileScreen extends ConsumerStatefulWidget {
  const ChildProfileScreen({super.key});

  @override
  ConsumerState<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends ConsumerState<ChildProfileScreen> {
  static const _avatars = ['🦊', '🐻', '🦁', '🐰'];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  bool _isSaving = false;
  String _selectedAvatar = _avatars.first;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() {
      _isSaving = true;
    });

    try {
      await ref
          .read(childProfileControllerProvider.notifier)
          .saveProfile(
            name: _nameController.text,
            avatar: _selectedAvatar,
            languageName: 'Tamazight',
          );
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }

    if (!mounted) {
      return;
    }

    final profileState = ref.read(childProfileControllerProvider);
    if (!profileState.hasError) {
      context.go(AppRoutes.worldMap);
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final profileState = ref.watch(childProfileControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 520),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create your explorer',
                      textAlign: TextAlign.center,
                      style: textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Choose a village friend and add a name for the first adventure.',
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 28),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 12,
                      children: [
                        for (final avatar in _avatars)
                          ChoiceChip(
                            label: Text(
                              avatar,
                              style: const TextStyle(fontSize: 28),
                            ),
                            selected: avatar == _selectedAvatar,
                            onSelected: (_) {
                              setState(() {
                                _selectedAvatar = avatar;
                              });
                            },
                          ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    TextFormField(
                      controller: _nameController,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        labelText: 'Child name',
                        hintText: 'Example: Yuba',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Add a name to enter the village.';
                        }

                        return null;
                      },
                      onFieldSubmitted: (_) => _saveProfile(),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: _isSaving ? null : _saveProfile,
                      child: Text(
                        _isSaving ? 'Entering...' : 'Enter Family Village',
                      ),
                    ),
                    if (profileState.hasError) ...[
                      const SizedBox(height: 16),
                      Text(
                        'We could not save the profile. Please try again.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
