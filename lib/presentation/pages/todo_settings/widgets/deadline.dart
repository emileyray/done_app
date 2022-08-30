part of '../todo_settings_page.dart';

class _Deadline extends StatefulWidget {
  final Todo? element;
  final Function(DateTime?) submit;
  const _Deadline({
    this.element,
    required this.submit,
    Key? key,
  }) : super(key: key);

  @override
  State<_Deadline> createState() => __DeadlineState();
}

class __DeadlineState extends State<_Deadline> {
  bool deadlineSet = false;
  DateTime selectedDate = DateTime.now();
  String? deadlineText;

  @override
  void initState() {
    super.initState();

    if (widget.element != null && widget.element!.deadline != null) {
      deadlineSet = true;
      selectedDate =
          DateTime.fromMicrosecondsSinceEpoch(widget.element!.deadline!);
      deadlineText = DateFormat('MMMM dd, yyyy').format(
          DateTime.fromMicrosecondsSinceEpoch(
              widget.element!.deadline! * 1000));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).deadline,
              style: Theme.of(context).textTheme.body.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  ),
            ),
            if (deadlineText != null) const SizedBox(height: 4),
            if (deadlineText != null)
              Text(
                deadlineText!,
                style: Theme.of(context).textTheme.body.copyWith(
                      color: Colors.blue,
                    ),
              ),
          ],
        ),
        const Spacer(),
        Switch(
          value: deadlineSet,
          inactiveThumbColor: getIt.get<ThemeBloc>().currentTheme.backElevated,
          inactiveTrackColor:
              getIt.get<ThemeBloc>().currentTheme.supportOverlay,
          onChanged: (value) {
            if (value) {
              selectDate(context);
            } else {
              setState(() {
                deadlineSet = false;
                selectedDate = DateTime.now();
                deadlineText = null;
                widget.submit(null);
              });
            }
          },
        ),
      ],
    );
  }

  void selectDate(BuildContext context) async {
    var now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      selectableDayPredicate: (day) =>
          day.compareTo(DateTime(now.year, now.month, now.day)) >= 0,
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        deadlineText = DateFormat('MMMM dd, yyyy').format(selectedDate);
        deadlineSet = true;
        widget.submit(selectedDate);
      });
    } else {
      setState(() {
        deadlineSet = deadlineSet || false;
      });
    }
  }
}
