[//]: # (This file was generated from: doc/template/README.mdt using the documentation_builder package on: 2022-02-09 14:09:17.249340.)
[![Pub Package](https://img.shields.io/pub/v/documentation_builder)](https://pub.dev/packages/documentation_builder)
[![Code Repository](https://img.shields.io/badge/repository-git%20hub-informational)](https://github.com/domain-centric/documentation_builder)
[![Github Wiki](https://img.shields.io/badge/documentation-wiki-informational)](https://github.com/domain-centric/documentation_builder/wiki)
[![GitHub Stars](https://img.shields.io/github/stars/domain-centric/documentation_builder)](https://github.com/domain-centric/documentation_builder/stargazers)
[![GitHub License](https://img.shields.io/badge/license-MIT-informational)](https://github.com/domain-centric/documentation_builder/blob/main/LICENSE)
[![GitHub Issues](https://img.shields.io/github/issues/domain-centric/documentation_builder)](https://github.com/domain-centric/documentation_builder/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/domain-centric/documentation_builder)](https://github.com/domain-centric/documentation_builder/pulls)

<a id='documentation-builder'></a>
# documentation_builder
Generates markdown documentation files from markdown template files.
This can be useful when you write documentation for a
[Dart](https://dart.dev/) or [Flutter](https://flutter.dev/) project
and want to reuse/import Dart code or Dart documentation comments.

It can generate the following files:
- [ReadMeFile](https://github.com/domain-centric/documentation_builder/wiki/03-Markdown-Template-Files#readme-template-file)
- [ChangeLogFile](https://github.com/domain-centric/documentation_builder/wiki/03-Markdown-Template-Files#changelog-template-file)
- [ExampleFile](https://github.com/domain-centric/documentation_builder/wiki/03-Markdown-Template-Files#example-template-file)
- GitHub [WikiFile](https://github.com/domain-centric/documentation_builder/wiki/03-Markdown-Template-Files#wiki-template-files)s

[documentation_builder](https://pub.dev/packages/documentation_builder) is not intended to generate API documentation.
Use [dartdoc](https://dart.dev/tools/dartdoc) instead.


<a id='examples'></a>
## Examples
The [DocumentationBuilder](https://github.com/domain-centric/documentation_builder/wiki/01-Documentation-Builder#lib-src-builder-documentation-builder-dart-documentationbuilder)s own documentation was generated by itself and also serves as show case.

You can view the templates files and the generated output on https://github.com and https://pub.dev:

- README
  - [Markdown Template File](https://raw.githubusercontent.com/domain-centric/documentation_builder/main/doc/template/README.mdt)
  - [Generated Markdown File Raw](https://raw.githubusercontent.com/domain-centric/documentation_builder/main/README.md)
  - [Generated Markdown File Rendered](https://pub.dev/packages/documentation_builder)
- CHANGELOG
  - TODO (GitHubRaw suffix='/main/doc/template/CHANGELOG.mdt' title='Markdown Template File']
  - TODO (GitHubRaw suffix='/main/CHANGELOG.md' title='Generated Markdown File Raw']
  - [Generated Markdown Rendered](https://pub.dev/packages/documentation_builder/versions)
- Wiki pages
  - [Markdown Template Files](https://github.com/domain-centric/documentation_builder/tree/main/doc/template) (select a file and select raw to see the source)
  - [Generated Markdown Files Rendered](https://github.com/domain-centric/documentation_builder/wiki)
- example
  - [Markdown Template File](https://raw.githubusercontent.com/domain-centric/documentation_builder/main/doc/template/example.mdt)
  - [Generated Markdown File Raw](https://raw.githubusercontent.com/domain-centric/documentation_builder/main/example/example.md)
  - [Generated Markdown Page Rendered](https://pub.dev/packages/documentation_builder/example)

<a id='getting-started'></a>
## Getting Started
- Read the [Wiki documentation](https://github.com/domain-centric/documentation_builder/wiki)
- [Install the documentation_builder package](https://pub.dev/packages/documentation_builder/install) in your project
- Add a build.yaml file to the root of your project with the following lines (merge lines if build.yaml file already exists):
  ```
  targets:
    $default:
      sources:
        - doc/**
        - lib/**
        - bin/**
        - test/**
        - pubspec.*
        - $package$
  ```
- Create 'doc/template' directories in the root of your project
- [Create markdown template files](https://github.com/domain-centric/documentation_builder/wiki/03-Markdown-Template-Files) in the "doc/template" directory ([see examples](https://github.com/domain-centric/documentation_builder/wiki/09-Examples))
- [Generate the documentation files](https://github.com/domain-centric/documentation_builder/wiki/07-Generating-Documentation-Files)
- [Publish the documentation files](https://github.com/domain-centric/documentation_builder/wiki/08-Publishing-Documentation-Files)