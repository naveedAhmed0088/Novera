using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Utility
{
    public class FilePickerService
    {
        List<string> pickedFiles;
        public FilePickerService() {
         
        }

        public async Task<List<string>?> PickAndShowMultiple(PickOptions options)
        {
            pickedFiles = new List<string>();
            try
            {
                var result = await FilePicker.PickMultipleAsync(options);
                if (result != null)
                {
                    foreach (var file in result)
                    {
                        using var stream = await file.OpenReadAsync();
                        pickedFiles.Add(file.FullPath); 
                    }
                    return pickedFiles;
                }
                else
                {
                    // Handle case when the user canceled
                    // You might want to return null or throw an exception
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"An error occurred: {ex.Message}");
            }

            return null; // or throw an exception, depending on your design
        }
    }
}
