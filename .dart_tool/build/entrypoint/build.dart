// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:source_gen/builder.dart' as _i2;
import 'package:fair_dart2dsl/fairdsl/fair_ast_check_gen.dart' as _i3;
import 'package:fair_compiler/src/builder.dart' as _i4;
import 'package:build_config/build_config.dart' as _i5;
import 'dart:isolate' as _i6;
import 'package:build_runner/build_runner.dart' as _i7;
import 'dart:io' as _i8;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'source_gen:combining_builder',
    [_i2.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'fair_dart2dsl:ast_node_map_builder',
    [_i3.AstNodeMapBuilder],
    _i1.toRoot(),
    hideOutput: false,
  ),
  _i1.apply(
    r'fair_compiler:fairc',
    [
      _i4.build,
      _i4.bind,
    ],
    _i1.toRoot(),
    hideOutput: true,
    defaultGenerateFor: const _i5.InputSet(include: [r'lib/**']),
    appliesBuilders: const [r'fair_compiler:archive'],
  ),
  _i1.apply(
    r'fair_compiler:package',
    [_i4.package],
    _i1.toRoot(),
    hideOutput: false,
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i2.partCleanup,
  ),
  _i1.applyPostProcess(
    r'fair_compiler:archive',
    _i4.archive,
  ),
];
void main(
  List<String> args, [
  _i6.SendPort? sendPort,
]) async {
  var result = await _i7.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i8.exitCode = result;
}
