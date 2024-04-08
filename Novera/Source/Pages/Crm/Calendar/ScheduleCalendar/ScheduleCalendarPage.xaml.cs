
using Novera.Source.Pages.Crm.Calendar.CreateEvent;
using Novera.Source.Pages.Crm.Calendar.CreateTask;
using Telerik.Windows.Documents.Spreadsheet.Expressions.Functions;

namespace Novera.Source.Pages.Crm.Calendar.ScheduleCalendar;

public partial class ScheduleCalendarPage : ContentPage
{

	private bool _isFabButtonClicked = false;
	public ScheduleCalendarPage()
	{
		InitializeComponent();
		this.schedulerLayout.IsVisible = true;
		this.dayLayout.IsVisible = false;
		this.weekLayout.IsVisible = false;
		this.monthLayout.IsVisible = false;
	}

	private void BackBtnClicked(object sender, EventArgs e)
	{
		Navigation.PopAsync();
	}
	private void Schedule_Clicked(object sender, EventArgs e)
	{
		BtnSchedule.BackgroundColor = (Color)Resources["SelectedBackgroundColor"];
		BtnSchedule.TextColor = (Color)Resources["SelectedTextColor"];
		this.schedulerLayout.IsVisible = true;
		this.dayLayout.IsVisible = false;
		this.weekLayout.IsVisible = false;
		this.monthLayout.IsVisible = false;

		UnselectedButtonsState(BtnDay);
		UnselectedButtonsState(BtnWeek);
		UnselectedButtonsState(BtnMonth);

	}
	private void Day_Clicked(object sender, EventArgs e)
	{
		BtnDay.BackgroundColor = (Color)Resources["SelectedBackgroundColor"];
		BtnDay.TextColor = (Color)Resources["SelectedTextColor"];
		this.schedulerLayout.IsVisible = false;
		this.dayLayout.IsVisible = true;
		this.weekLayout.IsVisible = false;
		this.monthLayout.IsVisible = false;
		this.schedulerDay.ScrollIntoView(new TimeOnly(9, 0, 0));

		UnselectedButtonsState(BtnSchedule);
		UnselectedButtonsState(BtnWeek);
		UnselectedButtonsState(BtnMonth);
	}

	private void Week_Clicked(object sender, EventArgs e)
	{
		BtnWeek.BackgroundColor = (Color)Resources["SelectedBackgroundColor"];
		BtnWeek.TextColor = (Color)Resources["SelectedTextColor"];
		this.schedulerLayout.IsVisible = false;
		this.dayLayout.IsVisible = false;
		this.weekLayout.IsVisible = true;
		this.monthLayout.IsVisible = false;
		this.schedulerWeek.ScrollIntoView(new TimeOnly(9, 0, 0));

		UnselectedButtonsState(BtnSchedule);
		UnselectedButtonsState(BtnDay);
		UnselectedButtonsState(BtnMonth);
	}

	private void Month_Clicked(object sender, EventArgs e)
	{
		BtnMonth.BackgroundColor = (Color)Resources["SelectedBackgroundColor"];
		BtnMonth.TextColor = (Color)Resources["SelectedTextColor"];
		this.schedulerLayout.IsVisible = false;
		this.dayLayout.IsVisible = false;
		this.weekLayout.IsVisible = false;
		this.monthLayout.IsVisible = true;
		this.schedulerMonth.ScrollIntoView(new TimeOnly(9, 0, 0));

		UnselectedButtonsState(BtnSchedule);
		UnselectedButtonsState(BtnDay);
		UnselectedButtonsState(BtnWeek);

	}

	private void UnselectedButtonsState(Button btnOther)
	{
		btnOther.BackgroundColor = (Color)Resources["NormalBackgroundColor"];
		btnOther.TextColor = (Color)Resources["NormalTextColor"];
	}

	private void AddClicked(object sender, EventArgs e)
	{

		_isFabButtonClicked = !_isFabButtonClicked;
		FabBtnContainer.Margin = new Thickness(0, 0, _isFabButtonClicked ? 0 : -250, 150);

	}
	private void OnAddEventClicked(object sender, EventArgs e)
	{
		Navigation.PushAsync(new CreateEventPage());
	}

	private void OnAddTaskClicked(object sender, EventArgs e)
	{
		Navigation.PushAsync(new CreateTaskPage());

	}
}