import 'package:flutter/material.dart';
import 'package:flutter_music/config/base/base_change_notifier.dart';
import 'package:provider/provider.dart';

abstract class ProviderStatefulWidget extends StatefulWidget {
  const ProviderStatefulWidget({Key? key}) : super(key: key);
  @override
  ProviderState createState();
}

abstract class ProviderState<p extends ProviderStatefulWidget,
    T extends BaseChageNotifier> extends State<p> {
  T? _viewModel;
  T? get viewModel {
    if (mounted) {
      return _viewModel;
    }
    return null;
  }

  set viewModel(T? value) => _viewModel = value;

  T? createViewModel() => null;

  Widget buildProviderChid(BuildContext context, Widget? reuseChild);

  Widget? reuseChild(BuildContext context) => null;

  @override
  void dispose() {
    super.dispose();
    viewModel?.dispose();
  }

  @override
  void initState() {
    super.initState();
    viewModel = createViewModel();
  }

  @override
  Widget build(BuildContext context) {
    if (viewModel == null) {
      return buildProviderChid(context, reuseChild(context));
    } else {
      return ChangeNotifierProvider.value(
          value: viewModel?..bindContext(context),
          builder: buildProviderChid,
          child: reuseChild(context));
    }
  }
}
