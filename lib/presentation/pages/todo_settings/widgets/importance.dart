part of '../todo_settings_page.dart';

class _Importance extends StatefulWidget {
  final Todo? element;
  final Function(Importance) submit;
  const _Importance({
    this.element,
    required this.submit,
    Key? key,
  }) : super(key: key);

  @override
  State<_Importance> createState() => __ImportanceState();
}

class __ImportanceState extends State<_Importance> {
  Importance valueToSubmit = Importance.basic;

  late Map<Importance, String> importanceTranslations;

  @override
  void initState() {
    super.initState();

    if (widget.element != null) {
      valueToSubmit = widget.element!.importance;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    importanceTranslations = {
      Importance.basic: S.of(context).basic,
      Importance.low: S.of(context).low,
      Importance.important: S.of(context).high,
    };
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164,
      height: 50,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<Widget>(
            key: const Key('dropdown'),
            value: null,
            itemHeight: null,
            elevation: 1,
            iconSize: 0,
            dropdownColor: getIt.get<ThemeBloc>().currentTheme.backElevated,
            hint: Transform.translate(
              offset: const Offset(-16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).importance,
                      style: Theme.of(context).textTheme.body.copyWith(
                          color: getIt
                              .get<ThemeBloc>()
                              .currentTheme
                              .labelPrimary)),
                  const SizedBox(height: 4),
                  Text(
                    importanceTranslations[valueToSubmit]!,
                    style: Theme.of(context).textTheme.subhead.copyWith(
                        color:
                            getIt.get<ThemeBloc>().currentTheme.labelTertiary),
                  ),
                ],
              ),
            ),
            items: importanceTranslations.keys.map((value) {
              return DropdownMenuItem<Widget>(
                key: Key('dropdown_${value.toString()}'),
                value: Text(importanceTranslations[value]!),
                child: Text(
                  importanceTranslations[value]!,
                  style: TextStyle(
                    color: value == Importance.important
                        ? getIt.get<ThemeBloc>().currentTheme.importanceColor
                        : getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                valueToSubmit = importanceTranslations.keys.firstWhere(
                  (e) => importanceTranslations[e] == (value as Text).data!,
                );
                widget.submit(valueToSubmit);
              });
            },
          ),
        ),
      ),
    );
  }
}
