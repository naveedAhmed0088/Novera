
using System.Collections.ObjectModel;
using Novera.Source.Model.Calendar;
using Novera.Source.ViewModel;

namespace Novera.Source.ViewModel.Calendar;

public partial class ScheduleCalendarViewModel : BaseViewModel
{
    public ScheduleCalendarViewModel()
    {
        this.ScheduleEvents = new ObservableCollection<ScheduleModel>()
            {
                new ScheduleModel() { Title = "Novera GST submission", Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "GST submission", Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Novera Project meeting", Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= true},
                new ScheduleModel() { Title = "Christmas",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Bug Solving", Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Architecture Discussion",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "UX Collective",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Sofie Leach",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "John Doe",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "James Fernandez",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= true},
                new ScheduleModel() { Title = "UX Collective",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Sofie Leach",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "John Doe",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "James Fernandez",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= true},
                new ScheduleModel() { Title = "UX Collective",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "Sofie Leach",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "John Doe",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= false},
                new ScheduleModel() { Title = "James Fernandez",  Time = "3:00 pm", WeekName = "Mon", DateVal="23", IsDone= true},
             };
    }


    public ObservableCollection<ScheduleModel> ScheduleEvents { get; set; }
}