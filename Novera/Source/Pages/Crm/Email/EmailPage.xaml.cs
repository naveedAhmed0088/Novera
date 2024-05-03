
using Telerik.Maui.Controls;

namespace Novera.Source.Pages.Crm.Email
{
	public partial class EmailPage : ContentPage
	{
		public EmailPage()
		{
			InitializeComponent();
			int selectedItemIndex = tabView.SelectedIndex;
			changeSelectionItem(tabView);
		}

		private void OnTabSelectionChanged(object sender, EventArgs e)
		{
			if (sender != null)
			{
				RadTabView? view = sender as RadTabView;
				changeSelectionItem(view);
			}
		}

		private void changeSelectionItem(RadTabView view)
		{
			int selectedItemIndex = view.SelectedIndex;

			List<TabViewItem> items = view.Items.ToList();
			if (selectedItemIndex == 0)
			{
                this.Title = "Inbox";
                tabView.SelectedItem.ImageSource = "tab_selected_inbox_icon";
				tabView.Items[1].ImageSource = "tab_unselected_sent_icon";
				tabView.Items[2].ImageSource = "tab_unselected_draft_icon";
				tabView.Items[3].ImageSource = "tab_unselected_delete_icon";

			}
			else if (selectedItemIndex == 1)
			{
				this.Title = "Sent";

				tabView.Items[0].ImageSource = "tab_unselected_inbox_icon";
				tabView.SelectedItem.ImageSource = "tab_selected_sent_icon";
				tabView.Items[2].ImageSource = "tab_unselected_draft_icon";
				tabView.Items[3].ImageSource = "tab_unselected_delete_icon";
			}
			else if (selectedItemIndex == 2)
			{
                this.Title = "Drafts";
                tabView.Items[0].ImageSource = "tab_unselected_inbox_icon";
				tabView.Items[1].ImageSource = "tab_unselected_sent_icon";
				tabView.SelectedItem.ImageSource = "tab_selected_draft_icon";
				tabView.Items[3].ImageSource = "tab_unselected_delete_icon";
			}
			else if (selectedItemIndex == 3)
            {
                this.Title = "Trash";
                tabView.Items[0].ImageSource = "tab_unselected_inbox_icon";
				tabView.Items[1].ImageSource = "tab_unselected_sent_icon";
				tabView.Items[2].ImageSource = "tab_unselected_draft_icon";
				tabView.SelectedItem.ImageSource = "tab_selected_delete_icon";
			}
		}
	}
}