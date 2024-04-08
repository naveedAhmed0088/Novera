using System.Windows.Input;

namespace Novera.Source.CustomView;

public partial class CustomRadioButton : ContentView
{
	public CustomRadioButton()
	{
		InitializeComponent();
	}
    public event EventHandler<EventArgs>? Tapped;

    public static readonly BindableProperty CommandProperty = BindableProperty.Create(
        propertyName: nameof(Command),
        returnType: typeof(ICommand),
        declaringType: typeof(CustomRadioButton),
        defaultBindingMode: BindingMode.TwoWay);

    public ICommand Command
    {
        get => (ICommand)GetValue(CommandProperty);
        set { SetValue(CommandProperty, value); }
    }

    public static readonly BindableProperty IsCheckedProperty = BindableProperty.Create(
        propertyName: nameof(IsChecked),
        returnType: typeof(bool),
        declaringType: typeof(CustomRadioButton),
        defaultValue: true,
        defaultBindingMode: BindingMode.TwoWay);

    public bool IsChecked
    {
        get => (bool)GetValue(IsCheckedProperty);
        set { SetValue(IsCheckedProperty, value); }
    }


    private void TapGestureRecognizer_Tapped(object sender, EventArgs args)
    {
        IsChecked = !IsChecked;
        Tapped?.Invoke(sender, args);
    }

}