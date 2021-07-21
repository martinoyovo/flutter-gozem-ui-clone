import 'package:intl/intl.dart';

class CustomFormat {
  static getFormat({required DateTime dateTime}) {
    final f = new DateFormat('yyyy-MM-dd');
    return f.format(dateTime);
  }
}

/*_selectDate(BuildContext context, selectedDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
    print(selectedDate);
  }*/