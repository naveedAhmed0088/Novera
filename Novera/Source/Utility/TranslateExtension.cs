using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novera.Source.Utility
{
    class TranslateExtension : IMarkupExtension
    {
        public string Key { get; set; }
        public object ProvideValue(IServiceProvider serviceProvider)
        {
            var Binding = new Binding
            {

                Mode = BindingMode.OneWay,
                Path = $"[{Key}]",
                Source = Translator.Instance,
            };
            return Binding;

        }
    }
}
