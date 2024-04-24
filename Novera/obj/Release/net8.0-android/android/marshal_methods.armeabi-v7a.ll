; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [175 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [350 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 140
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 139
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 163
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 53
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 152
	i32 122350210, ; 9: System.Threading.Channels.dll => 0x74aea82 => 161
	i32 136584136, ; 10: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 11: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 147
	i32 159306688, ; 13: System.ComponentModel.Annotations => 0x97ed3c0 => 120
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 87
	i32 172570105, ; 15: Telerik.Maui.Controls.Compatibility.dll => 0xa4935f9 => 79
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 106
	i32 205061960, ; 17: System.ComponentModel => 0xc38ff48 => 124
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 114
	i32 233797645, ; 19: Telerik.Maui.Core => 0xdef780d => 81
	i32 246901797, ; 20: Telerik.Documents.Flow.FormatProviders.Doc => 0xeb76c25 => 65
	i32 250136632, ; 21: Telerik.Documents.Fixed.FormatProviders.Image.Skia => 0xee8c838 => 63
	i32 256418729, ; 22: Novera => 0xf48a3a9 => 113
	i32 278310601, ; 23: Telerik.Android.Input => 0x1096aec9 => 76
	i32 317674968, ; 24: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 83
	i32 321963286, ; 26: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 94
	i32 375677976, ; 28: System.Net.ServicePoint.dll => 0x16646418 => 144
	i32 379916513, ; 29: System.Threading.Thread.dll => 0x16a510e1 => 163
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 136
	i32 392610295, ; 31: System.Threading.ThreadPool.dll => 0x1766c1f7 => 164
	i32 395744057, ; 32: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 33: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 119
	i32 450948140, ; 35: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 93
	i32 456227837, ; 36: System.Web.HttpUtility.dll => 0x1b317bfd => 166
	i32 469710990, ; 37: System.dll => 0x1bff388e => 168
	i32 489220957, ; 38: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 39: System.ObjectModel => 0x1dbae811 => 149
	i32 500153091, ; 40: Telerik.Android.Chart => 0x1dcfbb03 => 73
	i32 513247710, ; 41: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 47
	i32 525008092, ; 42: SkiaSharp.dll => 0x1f4afcdc => 54
	i32 538707440, ; 43: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 44: Microsoft.Extensions.Logging => 0x20216150 => 44
	i32 540199569, ; 45: Telerik.Maui.Controls.Compatibility => 0x2032ca91 => 79
	i32 543594171, ; 46: Telerik.Android.List.dll => 0x206696bb => 77
	i32 578095993, ; 47: Telerik.Android.Common => 0x22750b79 => 74
	i32 580362983, ; 48: Telerik.Documents.Spreadsheet.FormatProviders.Pdf => 0x2297a2e7 => 69
	i32 588324302, ; 49: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml => 0x23111dce => 68
	i32 597488923, ; 50: CommunityToolkit.Maui => 0x239cf51b => 35
	i32 627609679, ; 51: Xamarin.AndroidX.CustomView => 0x2568904f => 91
	i32 627931235, ; 52: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 53: System.Text.Encodings.Web.dll => 0x27787397 => 158
	i32 672442732, ; 54: System.Collections.Concurrent => 0x2814a96c => 115
	i32 683518922, ; 55: System.Net.Security => 0x28bdabca => 143
	i32 709152836, ; 56: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 59
	i32 722857257, ; 57: System.Runtime.Loader.dll => 0x2b15ed29 => 153
	i32 759454413, ; 58: System.Net.Requests => 0x2d445acd => 142
	i32 775507847, ; 59: System.IO.Compression => 0x2e394f87 => 133
	i32 777317022, ; 60: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 61: Microsoft.Extensions.Options => 0x2f0980eb => 46
	i32 804715423, ; 62: System.Data.Common => 0x2ff6fb9f => 126
	i32 823281589, ; 63: System.Private.Uri.dll => 0x311247b5 => 150
	i32 830298997, ; 64: System.IO.Compression.Brotli => 0x317d5b75 => 132
	i32 869139383, ; 65: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 879513154, ; 66: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll => 0x346c4e42 => 69
	i32 880668424, ; 67: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 68: System.ComponentModel.Primitives.dll => 0x35e25008 => 122
	i32 918734561, ; 69: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 70: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 966729478, ; 71: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 110
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 94
	i32 984345159, ; 73: Telerik.Zip => 0x3aabea47 => 82
	i32 990727110, ; 74: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 75: System.Collections.dll => 0x3b2c715c => 119
	i32 994572943, ; 76: Telerik.Android.Common.dll => 0x3b47fa8f => 74
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 104
	i32 1019214401, ; 78: System.Drawing => 0x3cbffa41 => 130
	i32 1028951442, ; 79: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 41
	i32 1035644815, ; 80: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 84
	i32 1036536393, ; 81: System.Drawing.Primitives.dll => 0x3dc84a49 => 129
	i32 1043950537, ; 82: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 83: System.Linq.Expressions.dll => 0x3e444eb4 => 134
	i32 1052210849, ; 84: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 96
	i32 1082857460, ; 85: System.ComponentModel.TypeConverter => 0x408b17f4 => 123
	i32 1084122840, ; 86: Xamarin.Kotlin.StdLib => 0x409e66d8 => 111
	i32 1098259244, ; 87: System => 0x41761b2c => 168
	i32 1108272742, ; 88: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 89: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 90: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1151062364, ; 91: Telerik.Documents.DrawingML.dll => 0x449bd15c => 62
	i32 1168523401, ; 92: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 93: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 101
	i32 1214827643, ; 94: CommunityToolkit.Mvvm => 0x4868cc7b => 37
	i32 1260983243, ; 95: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 96: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 92
	i32 1308624726, ; 97: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 98: System.Linq => 0x4eed2679 => 135
	i32 1336711579, ; 99: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 100: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 101: Xamarin.AndroidX.SavedState => 0x52114ed3 => 104
	i32 1406073936, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 88
	i32 1408764838, ; 103: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 155
	i32 1430672901, ; 104: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1435222561, ; 105: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 110
	i32 1452070440, ; 106: System.Formats.Asn1.dll => 0x568cd628 => 131
	i32 1458022317, ; 107: System.Net.Security.dll => 0x56e7a7ad => 143
	i32 1461004990, ; 108: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 109: System.Collections.Immutable.dll => 0x5718a9ef => 116
	i32 1462112819, ; 110: System.IO.Compression.dll => 0x57261233 => 133
	i32 1469204771, ; 111: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 85
	i32 1470490898, ; 112: Microsoft.Extensions.Primitives => 0x57a5e912 => 47
	i32 1470766374, ; 113: Telerik.Android.List => 0x57aa1d26 => 77
	i32 1479771757, ; 114: System.Collections.Immutable => 0x5833866d => 116
	i32 1480492111, ; 115: System.IO.Compression.Brotli.dll => 0x583e844f => 132
	i32 1526286932, ; 116: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 117: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 160
	i32 1604827217, ; 118: System.Net.WebClient => 0x5fa7b851 => 146
	i32 1622152042, ; 119: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 98
	i32 1623212457, ; 120: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 56
	i32 1624863272, ; 121: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1634654947, ; 122: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 36
	i32 1636350590, ; 123: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 90
	i32 1639515021, ; 124: System.Net.Http.dll => 0x61b9038d => 137
	i32 1639986890, ; 125: System.Text.RegularExpressions => 0x61c036ca => 160
	i32 1641389582, ; 126: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 121
	i32 1657153582, ; 127: System.Runtime => 0x62c6282e => 156
	i32 1658251792, ; 128: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 109
	i32 1677501392, ; 129: System.Net.Primitives.dll => 0x63fca3d0 => 141
	i32 1679769178, ; 130: System.Security.Cryptography => 0x641f3e5a => 157
	i32 1705973217, ; 131: Telerik.Documents.SpreadsheetStreaming.dll => 0x65af15e1 => 72
	i32 1729485958, ; 132: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 86
	i32 1743415430, ; 133: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1746316138, ; 134: Mono.Android.Export => 0x6816ab6a => 172
	i32 1763938596, ; 135: System.Diagnostics.TraceSource.dll => 0x69239124 => 128
	i32 1766324549, ; 136: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 106
	i32 1770582343, ; 137: Microsoft.Extensions.Logging.dll => 0x6988f147 => 44
	i32 1780572499, ; 138: Mono.Android.Runtime.dll => 0x6a216153 => 173
	i32 1782862114, ; 139: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 140: Xamarin.AndroidX.Fragment => 0x6a96652d => 93
	i32 1793755602, ; 141: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 142: Xamarin.AndroidX.Loader => 0x6bcd3296 => 98
	i32 1813058853, ; 143: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 111
	i32 1813201214, ; 144: Xamarin.Google.Android.Material => 0x6c13413e => 109
	i32 1818569960, ; 145: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 102
	i32 1824722060, ; 146: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 155
	i32 1828688058, ; 147: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 45
	i32 1853025655, ; 148: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 149: System.Linq.Expressions => 0x6ec71a65 => 134
	i32 1874600372, ; 150: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll => 0x6fbc21b4 => 63
	i32 1875935024, ; 151: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 152: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 153: System.Collections.NonGeneric.dll => 0x71dc7c8b => 117
	i32 1953182387, ; 154: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1961813231, ; 155: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 105
	i32 1968388702, ; 156: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 157: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 158: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 96
	i32 2042042370, ; 159: Telerik.Documents.Spreadsheet.FormatProviders.Xls => 0x79b71802 => 70
	i32 2042201515, ; 160: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll => 0x79b985ab => 70
	i32 2045470958, ; 161: System.Private.Xml => 0x79eb68ee => 151
	i32 2055257422, ; 162: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 95
	i32 2058309705, ; 163: Telerik.Documents.DrawingML => 0x7aaf5049 => 62
	i32 2066184531, ; 164: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 165: System.Diagnostics.TraceSource => 0x7b6f419e => 128
	i32 2079903147, ; 166: System.Runtime.dll => 0x7bf8cdab => 156
	i32 2090596640, ; 167: System.Numerics.Vectors => 0x7c9bf920 => 148
	i32 2127167465, ; 168: System.Console => 0x7ec9ffe9 => 125
	i32 2142473426, ; 169: System.Collections.Specialized => 0x7fb38cd2 => 118
	i32 2159891885, ; 170: Microsoft.Maui => 0x80bd55ad => 51
	i32 2169148018, ; 171: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 172: Microsoft.Extensions.Options.dll => 0x820d22b3 => 46
	i32 2192057212, ; 173: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 45
	i32 2193016926, ; 174: System.ObjectModel.dll => 0x82b6c85e => 149
	i32 2201107256, ; 175: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 112
	i32 2201231467, ; 176: System.Net.Http => 0x8334206b => 137
	i32 2207618523, ; 177: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2220894804, ; 178: Telerik.Documents.Spreadsheet.dll => 0x84602a54 => 71
	i32 2222056684, ; 179: System.Threading.Tasks.Parallel => 0x8471e4ec => 162
	i32 2266799131, ; 180: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 181: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 103
	i32 2295906218, ; 182: System.Net.Sockets => 0x88d8bfaa => 145
	i32 2298471582, ; 183: System.Net.Mail => 0x88ffe49e => 138
	i32 2303942373, ; 184: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 185: System.Private.CoreLib.dll => 0x896b7878 => 170
	i32 2320631194, ; 186: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 162
	i32 2353062107, ; 187: System.Net.Primitives => 0x8c40e0db => 141
	i32 2364201794, ; 188: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 58
	i32 2366048013, ; 189: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 190: System.Xml.ReaderWriter.dll => 0x8d24e767 => 167
	i32 2371007202, ; 191: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2388878468, ; 192: Telerik.Android.Input.dll => 0x8e636484 => 76
	i32 2395872292, ; 193: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 194: System.Web.HttpUtility => 0x8f24faee => 166
	i32 2427813419, ; 195: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2430693373, ; 196: Telerik.Maui.Controls => 0x90e16ffd => 80
	i32 2435356389, ; 197: System.Console.dll => 0x912896e5 => 125
	i32 2458678730, ; 198: System.Net.Sockets.dll => 0x928c75ca => 145
	i32 2471841756, ; 199: netstandard.dll => 0x93554fdc => 169
	i32 2475788418, ; 200: Java.Interop.dll => 0x93918882 => 171
	i32 2480646305, ; 201: Microsoft.Maui.Controls => 0x93dba8a1 => 49
	i32 2483903535, ; 202: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 121
	i32 2484371297, ; 203: System.Net.ServicePoint => 0x94147f61 => 144
	i32 2488179576, ; 204: Telerik.Documents.CMapUtils.dll => 0x944e9b78 => 60
	i32 2503351294, ; 205: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2521915375, ; 206: SkiaSharp.Views.Maui.Controls.Compatibility => 0x96515fef => 57
	i32 2539705650, ; 207: Telerik.Maui.Core.dll => 0x9760d532 => 81
	i32 2550873716, ; 208: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2560731213, ; 209: Telerik.Android.Data => 0x98a1a84d => 75
	i32 2562349572, ; 210: Microsoft.CSharp => 0x98ba5a04 => 114
	i32 2570120770, ; 211: System.Text.Encodings.Web => 0x9930ee42 => 158
	i32 2576534780, ; 212: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2589602615, ; 213: System.Threading.ThreadPool => 0x9a5a3337 => 164
	i32 2593496499, ; 214: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 215: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 112
	i32 2617129537, ; 216: System.Private.Xml.dll => 0x9bfe3a41 => 151
	i32 2620871830, ; 217: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 90
	i32 2625339995, ; 218: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 58
	i32 2626831493, ; 219: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2634641626, ; 220: Telerik.Documents.SpreadsheetStreaming => 0x9d0970da => 72
	i32 2647853659, ; 221: Telerik.Documents.Fixed => 0x9dd30a5b => 64
	i32 2663698177, ; 222: System.Runtime.Loader => 0x9ec4cf01 => 153
	i32 2665622720, ; 223: System.Drawing.Primitives => 0x9ee22cc0 => 129
	i32 2676780864, ; 224: System.Data.Common.dll => 0x9f8c6f40 => 126
	i32 2724373263, ; 225: System.Runtime.Numerics.dll => 0xa262a30f => 154
	i32 2732626843, ; 226: Xamarin.AndroidX.Activity => 0xa2e0939b => 83
	i32 2735172069, ; 227: System.Threading.Channels => 0xa30769e5 => 161
	i32 2737747696, ; 228: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 85
	i32 2740698338, ; 229: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2744605653, ; 230: Telerik.Documents.Flow.FormatProviders.Pdf => 0xa3975bd5 => 66
	i32 2752995522, ; 231: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 232: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 50
	i32 2764765095, ; 233: Microsoft.Maui.dll => 0xa4caf7a7 => 51
	i32 2778768386, ; 234: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2782416773, ; 235: Telerik.Documents.Flow.dll => 0xa5d84f85 => 67
	i32 2785988530, ; 236: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2795602088, ; 237: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 55
	i32 2801831435, ; 238: Microsoft.Maui.Graphics => 0xa7008e0b => 53
	i32 2810250172, ; 239: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 88
	i32 2853208004, ; 240: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2853767236, ; 241: Telerik.Maui.Controls.dll => 0xaa190844 => 80
	i32 2861098320, ; 242: Mono.Android.Export.dll => 0xaa88e550 => 172
	i32 2861189240, ; 243: Microsoft.Maui.Essentials => 0xaa8a4878 => 52
	i32 2866535038, ; 244: Telerik.Documents.Core => 0xaadbda7e => 61
	i32 2868488919, ; 245: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 36
	i32 2909740682, ; 246: System.Private.CoreLib => 0xad6f1e8a => 170
	i32 2912489636, ; 247: SkiaSharp.Views.Android => 0xad9910a4 => 55
	i32 2916838712, ; 248: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 249: System.Numerics.Vectors.dll => 0xae037813 => 148
	i32 2927181627, ; 250: Novera.dll => 0xae793f3b => 113
	i32 2959614098, ; 251: System.ComponentModel.dll => 0xb0682092 => 124
	i32 2978675010, ; 252: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 92
	i32 2987532451, ; 253: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 105
	i32 3032926982, ; 254: Telerik.Android.Chart.dll => 0xb4c6cb06 => 73
	i32 3038032645, ; 255: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 256: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 257: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 99
	i32 3059408633, ; 258: Mono.Android.Runtime => 0xb65adef9 => 173
	i32 3059793426, ; 259: System.ComponentModel.Primitives => 0xb660be12 => 122
	i32 3072870390, ; 260: Telerik.Android.Primitives.dll => 0xb72847f6 => 78
	i32 3103600923, ; 261: System.Formats.Asn1 => 0xb8fd311b => 131
	i32 3178803400, ; 262: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 100
	i32 3205570722, ; 263: Telerik.Documents.Core.dll => 0xbf1120a2 => 61
	i32 3220365878, ; 264: System.Threading => 0xbff2e236 => 165
	i32 3258312781, ; 265: Xamarin.AndroidX.CardView => 0xc235e84d => 86
	i32 3280506390, ; 266: System.ComponentModel.Annotations.dll => 0xc3888e16 => 120
	i32 3290700000, ; 267: Telerik.Documents.Flow => 0xc42418e0 => 67
	i32 3305363605, ; 268: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 269: System.Net.Requests.dll => 0xc5b097e4 => 142
	i32 3317135071, ; 270: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 91
	i32 3320834987, ; 271: Telerik.Zip.dll => 0xc5efebab => 82
	i32 3340387945, ; 272: SkiaSharp => 0xc71a4669 => 54
	i32 3346324047, ; 273: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 101
	i32 3347243934, ; 274: Telerik.Documents.CMapUtils => 0xc782e39e => 60
	i32 3357674450, ; 275: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 276: System.Text.Json => 0xc82afec1 => 159
	i32 3362522851, ; 277: Xamarin.AndroidX.Core => 0xc86c06e3 => 89
	i32 3366347497, ; 278: Java.Interop => 0xc8a662e9 => 171
	i32 3374999561, ; 279: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 103
	i32 3381016424, ; 280: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 281: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 40
	i32 3430777524, ; 282: netstandard => 0xcc7d82b4 => 169
	i32 3452344032, ; 283: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 48
	i32 3458724246, ; 284: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3466574376, ; 285: SkiaSharp.Views.Maui.Controls.Compatibility.dll => 0xce9fba28 => 57
	i32 3471940407, ; 286: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 123
	i32 3473156932, ; 287: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 56
	i32 3476120550, ; 288: Mono.Android => 0xcf3163e6 => 174
	i32 3484440000, ; 289: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 290: System.Text.Json.dll => 0xcfbaacae => 159
	i32 3580758918, ; 291: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3584610821, ; 292: Telerik.Documents.Flow.FormatProviders.Doc.dll => 0xd5a8d205 => 65
	i32 3592228221, ; 293: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3592435036, ; 294: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 43
	i32 3608519521, ; 295: System.Linq.dll => 0xd715a361 => 135
	i32 3641597786, ; 296: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 95
	i32 3643446276, ; 297: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 298: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 100
	i32 3653026799, ; 299: Telerik.Documents.Fixed.dll => 0xd9bcc3ef => 64
	i32 3657292374, ; 300: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3660523487, ; 301: System.Net.NetworkInformation => 0xda2f27df => 140
	i32 3672681054, ; 302: Mono.Android.dll => 0xdae8aa5e => 174
	i32 3724971120, ; 303: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 99
	i32 3732100267, ; 304: System.Net.NameResolution => 0xde7354ab => 139
	i32 3748608112, ; 305: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 127
	i32 3751619990, ; 306: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3774509857, ; 307: Telerik.Documents.Spreadsheet => 0xe0fa7321 => 71
	i32 3776403777, ; 308: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 43
	i32 3786282454, ; 309: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 87
	i32 3792276235, ; 310: System.Collections.NonGeneric => 0xe2098b0b => 117
	i32 3800979733, ; 311: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 48
	i32 3802395368, ; 312: System.Collections.Specialized.dll => 0xe2a3f2e8 => 118
	i32 3807198597, ; 313: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 59
	i32 3817368567, ; 314: CommunityToolkit.Maui.dll => 0xe3886bf7 => 35
	i32 3823082795, ; 315: System.Security.Cryptography.dll => 0xe3df9d2b => 157
	i32 3841636137, ; 316: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 41
	i32 3844307129, ; 317: System.Net.Mail.dll => 0xe52378b9 => 138
	i32 3849253459, ; 318: System.Runtime.InteropServices.dll => 0xe56ef253 => 152
	i32 3874567795, ; 319: Telerik.Android.Data.dll => 0xe6f13673 => 75
	i32 3885497537, ; 320: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 147
	i32 3896106733, ; 321: System.Collections.Concurrent.dll => 0xe839deed => 115
	i32 3896760992, ; 322: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 89
	i32 3898971068, ; 323: Microsoft.Extensions.Localization.dll => 0xe86593bc => 42
	i32 3920221145, ; 324: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 325: System.Xml.ReaderWriter => 0xea213423 => 167
	i32 3931092270, ; 326: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 102
	i32 3954195687, ; 327: Microsoft.Extensions.Localization => 0xebb03ce7 => 42
	i32 3955647286, ; 328: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 84
	i32 4010861852, ; 329: Telerik.Android.Primitives => 0xef10e51c => 78
	i32 4025784931, ; 330: System.Memory => 0xeff49a63 => 136
	i32 4046471985, ; 331: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 50
	i32 4051204516, ; 332: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll => 0xf17879a4 => 68
	i32 4073602200, ; 333: System.Threading.dll => 0xf2ce3c98 => 165
	i32 4091086043, ; 334: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 335: Microsoft.Maui.Essentials.dll => 0xf40add04 => 52
	i32 4099507663, ; 336: System.Drawing.dll => 0xf45985cf => 130
	i32 4100113165, ; 337: System.Private.Uri => 0xf462c30d => 150
	i32 4103439459, ; 338: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 339: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 40
	i32 4150914736, ; 340: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 341: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 97
	i32 4196529839, ; 342: System.Net.WebClient.dll => 0xfa21f6af => 146
	i32 4213026141, ; 343: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 127
	i32 4249188766, ; 344: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 345: Microsoft.Maui.Controls.dll => 0xfea12dee => 49
	i32 4274623895, ; 346: CommunityToolkit.Mvvm.dll => 0xfec99597 => 37
	i32 4274976490, ; 347: System.Runtime.Numerics => 0xfecef6ea => 154
	i32 4292120959, ; 348: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 97
	i32 4292429106 ; 349: Telerik.Documents.Flow.FormatProviders.Pdf.dll => 0xffd94532 => 66
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [350 x i32] [
	i32 140, ; 0
	i32 139, ; 1
	i32 0, ; 2
	i32 9, ; 3
	i32 163, ; 4
	i32 33, ; 5
	i32 53, ; 6
	i32 17, ; 7
	i32 152, ; 8
	i32 161, ; 9
	i32 32, ; 10
	i32 25, ; 11
	i32 147, ; 12
	i32 120, ; 13
	i32 87, ; 14
	i32 79, ; 15
	i32 106, ; 16
	i32 124, ; 17
	i32 114, ; 18
	i32 81, ; 19
	i32 65, ; 20
	i32 63, ; 21
	i32 113, ; 22
	i32 76, ; 23
	i32 30, ; 24
	i32 83, ; 25
	i32 8, ; 26
	i32 94, ; 27
	i32 144, ; 28
	i32 163, ; 29
	i32 136, ; 30
	i32 164, ; 31
	i32 34, ; 32
	i32 28, ; 33
	i32 119, ; 34
	i32 93, ; 35
	i32 166, ; 36
	i32 168, ; 37
	i32 6, ; 38
	i32 149, ; 39
	i32 73, ; 40
	i32 47, ; 41
	i32 54, ; 42
	i32 27, ; 43
	i32 44, ; 44
	i32 79, ; 45
	i32 77, ; 46
	i32 74, ; 47
	i32 69, ; 48
	i32 68, ; 49
	i32 35, ; 50
	i32 91, ; 51
	i32 19, ; 52
	i32 158, ; 53
	i32 115, ; 54
	i32 143, ; 55
	i32 59, ; 56
	i32 153, ; 57
	i32 142, ; 58
	i32 133, ; 59
	i32 25, ; 60
	i32 46, ; 61
	i32 126, ; 62
	i32 150, ; 63
	i32 132, ; 64
	i32 10, ; 65
	i32 69, ; 66
	i32 24, ; 67
	i32 122, ; 68
	i32 21, ; 69
	i32 14, ; 70
	i32 110, ; 71
	i32 94, ; 72
	i32 82, ; 73
	i32 23, ; 74
	i32 119, ; 75
	i32 74, ; 76
	i32 104, ; 77
	i32 130, ; 78
	i32 41, ; 79
	i32 84, ; 80
	i32 129, ; 81
	i32 4, ; 82
	i32 134, ; 83
	i32 96, ; 84
	i32 123, ; 85
	i32 111, ; 86
	i32 168, ; 87
	i32 26, ; 88
	i32 20, ; 89
	i32 16, ; 90
	i32 62, ; 91
	i32 22, ; 92
	i32 101, ; 93
	i32 37, ; 94
	i32 2, ; 95
	i32 92, ; 96
	i32 11, ; 97
	i32 135, ; 98
	i32 31, ; 99
	i32 32, ; 100
	i32 104, ; 101
	i32 88, ; 102
	i32 155, ; 103
	i32 0, ; 104
	i32 110, ; 105
	i32 131, ; 106
	i32 143, ; 107
	i32 6, ; 108
	i32 116, ; 109
	i32 133, ; 110
	i32 85, ; 111
	i32 47, ; 112
	i32 77, ; 113
	i32 116, ; 114
	i32 132, ; 115
	i32 30, ; 116
	i32 160, ; 117
	i32 146, ; 118
	i32 98, ; 119
	i32 56, ; 120
	i32 108, ; 121
	i32 36, ; 122
	i32 90, ; 123
	i32 137, ; 124
	i32 160, ; 125
	i32 121, ; 126
	i32 156, ; 127
	i32 109, ; 128
	i32 141, ; 129
	i32 157, ; 130
	i32 72, ; 131
	i32 86, ; 132
	i32 1, ; 133
	i32 172, ; 134
	i32 128, ; 135
	i32 106, ; 136
	i32 44, ; 137
	i32 173, ; 138
	i32 17, ; 139
	i32 93, ; 140
	i32 9, ; 141
	i32 98, ; 142
	i32 111, ; 143
	i32 109, ; 144
	i32 102, ; 145
	i32 155, ; 146
	i32 45, ; 147
	i32 26, ; 148
	i32 134, ; 149
	i32 63, ; 150
	i32 8, ; 151
	i32 2, ; 152
	i32 117, ; 153
	i32 13, ; 154
	i32 105, ; 155
	i32 38, ; 156
	i32 5, ; 157
	i32 96, ; 158
	i32 70, ; 159
	i32 70, ; 160
	i32 151, ; 161
	i32 95, ; 162
	i32 62, ; 163
	i32 4, ; 164
	i32 128, ; 165
	i32 156, ; 166
	i32 148, ; 167
	i32 125, ; 168
	i32 118, ; 169
	i32 51, ; 170
	i32 12, ; 171
	i32 46, ; 172
	i32 45, ; 173
	i32 149, ; 174
	i32 112, ; 175
	i32 137, ; 176
	i32 14, ; 177
	i32 71, ; 178
	i32 162, ; 179
	i32 39, ; 180
	i32 103, ; 181
	i32 145, ; 182
	i32 138, ; 183
	i32 18, ; 184
	i32 170, ; 185
	i32 162, ; 186
	i32 141, ; 187
	i32 58, ; 188
	i32 12, ; 189
	i32 167, ; 190
	i32 38, ; 191
	i32 76, ; 192
	i32 13, ; 193
	i32 166, ; 194
	i32 10, ; 195
	i32 80, ; 196
	i32 125, ; 197
	i32 145, ; 198
	i32 169, ; 199
	i32 171, ; 200
	i32 49, ; 201
	i32 121, ; 202
	i32 144, ; 203
	i32 60, ; 204
	i32 16, ; 205
	i32 57, ; 206
	i32 81, ; 207
	i32 11, ; 208
	i32 75, ; 209
	i32 114, ; 210
	i32 158, ; 211
	i32 15, ; 212
	i32 164, ; 213
	i32 20, ; 214
	i32 112, ; 215
	i32 151, ; 216
	i32 90, ; 217
	i32 58, ; 218
	i32 15, ; 219
	i32 72, ; 220
	i32 64, ; 221
	i32 153, ; 222
	i32 129, ; 223
	i32 126, ; 224
	i32 154, ; 225
	i32 83, ; 226
	i32 161, ; 227
	i32 85, ; 228
	i32 1, ; 229
	i32 66, ; 230
	i32 21, ; 231
	i32 50, ; 232
	i32 51, ; 233
	i32 107, ; 234
	i32 67, ; 235
	i32 27, ; 236
	i32 55, ; 237
	i32 53, ; 238
	i32 88, ; 239
	i32 107, ; 240
	i32 80, ; 241
	i32 172, ; 242
	i32 52, ; 243
	i32 61, ; 244
	i32 36, ; 245
	i32 170, ; 246
	i32 55, ; 247
	i32 108, ; 248
	i32 148, ; 249
	i32 113, ; 250
	i32 124, ; 251
	i32 92, ; 252
	i32 105, ; 253
	i32 73, ; 254
	i32 34, ; 255
	i32 7, ; 256
	i32 99, ; 257
	i32 173, ; 258
	i32 122, ; 259
	i32 78, ; 260
	i32 131, ; 261
	i32 100, ; 262
	i32 61, ; 263
	i32 165, ; 264
	i32 86, ; 265
	i32 120, ; 266
	i32 67, ; 267
	i32 7, ; 268
	i32 142, ; 269
	i32 91, ; 270
	i32 82, ; 271
	i32 54, ; 272
	i32 101, ; 273
	i32 60, ; 274
	i32 24, ; 275
	i32 159, ; 276
	i32 89, ; 277
	i32 171, ; 278
	i32 103, ; 279
	i32 3, ; 280
	i32 40, ; 281
	i32 169, ; 282
	i32 48, ; 283
	i32 22, ; 284
	i32 57, ; 285
	i32 123, ; 286
	i32 56, ; 287
	i32 174, ; 288
	i32 23, ; 289
	i32 159, ; 290
	i32 31, ; 291
	i32 65, ; 292
	i32 33, ; 293
	i32 43, ; 294
	i32 135, ; 295
	i32 95, ; 296
	i32 28, ; 297
	i32 100, ; 298
	i32 64, ; 299
	i32 39, ; 300
	i32 140, ; 301
	i32 174, ; 302
	i32 99, ; 303
	i32 139, ; 304
	i32 127, ; 305
	i32 3, ; 306
	i32 71, ; 307
	i32 43, ; 308
	i32 87, ; 309
	i32 117, ; 310
	i32 48, ; 311
	i32 118, ; 312
	i32 59, ; 313
	i32 35, ; 314
	i32 157, ; 315
	i32 41, ; 316
	i32 138, ; 317
	i32 152, ; 318
	i32 75, ; 319
	i32 147, ; 320
	i32 115, ; 321
	i32 89, ; 322
	i32 42, ; 323
	i32 19, ; 324
	i32 167, ; 325
	i32 102, ; 326
	i32 42, ; 327
	i32 84, ; 328
	i32 78, ; 329
	i32 136, ; 330
	i32 50, ; 331
	i32 68, ; 332
	i32 165, ; 333
	i32 5, ; 334
	i32 52, ; 335
	i32 130, ; 336
	i32 150, ; 337
	i32 29, ; 338
	i32 40, ; 339
	i32 29, ; 340
	i32 97, ; 341
	i32 146, ; 342
	i32 127, ; 343
	i32 18, ; 344
	i32 49, ; 345
	i32 37, ; 346
	i32 154, ; 347
	i32 97, ; 348
	i32 66 ; 349
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
