import 'dart:io';

import 'package:documentation_builder/builders/markdown_template_builder.dart';
import 'package:documentation_builder/builders/markdown_template_files.dart';
import 'package:documentation_builder/builders/output_builder.dart';

/// Generates markdown documentation files from markdown template files.
/// It is useful when you write documentation for a dart or flutter project and want to reuse/import dart code or dart documentation comments.
/// It is not intended to generate API documentation. Use [dartdoc](https://dart.dev/tools/dartdoc) instead.
///
/// TODO: use [MarkdownTemplateFileFactories]
/// It can generate the following files:
/// - README.md file
/// - CHANGELOG.mdt file
/// - example.md file
/// - Github Wiki pages (also markdown files)

// [DocumentationBuilder] isn't actually a builder. Its purpose:
// - for documentation
// - a convenient way to run the shell commands to start the builders,
//   using the build_runner package
class DocumentationBuilder {

  /// The [build_runner] uses several builders that are run with the [build_runner] package.
  ///
  /// The [build_runner] is started with the following command in the root of the project (ALT+F12 if you are using Android Studio or Intelij):
  /// $ flutter packages pub run build_runner build --delete-conflicting-outputs
  ///
  /// You’d better clean up before you re-execute run builder_runner
  /// $ flutter packages pub run build_runner clean
  run() async {
    // TODO create shell class, e.g.:
    // e.g. Shell.run('''
    // flutter packages pub run build_runner clean
    // flutter packages pub run build_runner build --delete-conflicting-outputs
    // ''', StopMode.onErrorOrWarning);
    //  or maybe there is an existing shell package?

    var result=await Process.run(
      'flutter',
      ['pub', 'run', 'build_runner', 'clean'],
      runInShell: true,
    );
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    result=await Process.run(
      'flutter',
      ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
      runInShell: true,
    );
    stdout.write(result.stdout);
    stderr.write(result.stderr);
  }
}