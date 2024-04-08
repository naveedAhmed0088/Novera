using System.Globalization;

namespace Novera.Source.Converter
{
    public class BoolToStringConverter : IValueConverter
    {
        public object? Convert(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if ( value != null && (bool)value)
                return "task_switch_off";
            else
               return  "task_switch_on";
        }

        public object? ConvertBack(object? value, Type targetType, object? parameter, CultureInfo culture)
        {
            if (value!=null && (string)value == "task_switch_on")
                return true;
            else
                return false;
        }
    }
}
