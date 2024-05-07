; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [203 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [352 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 141
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 140
	i32 38948123, ; 2: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 1
	i32 42244203, ; 3: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 10
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 164
	i32 67008169, ; 5: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 34
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 54
	i32 83839681, ; 7: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 18
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 153
	i32 122350210, ; 9: System.Threading.Channels.dll => 0x74aea82 => 162
	i32 136584136, ; 10: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 33
	i32 140062828, ; 11: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 26
	i32 142721839, ; 12: System.Net.WebHeaderCollection => 0x881c32f => 148
	i32 159306688, ; 13: System.ComponentModel.Annotations => 0x97ed3c0 => 121
	i32 165246403, ; 14: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 88
	i32 172570105, ; 15: Telerik.Maui.Controls.Compatibility.dll => 0xa4935f9 => 80
	i32 182336117, ; 16: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 107
	i32 205061960, ; 17: System.ComponentModel => 0xc38ff48 => 125
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 115
	i32 233797645, ; 19: Telerik.Maui.Core => 0xdef780d => 82
	i32 246901797, ; 20: Telerik.Documents.Flow.FormatProviders.Doc => 0xeb76c25 => 66
	i32 250136632, ; 21: Telerik.Documents.Fixed.FormatProviders.Image.Skia => 0xee8c838 => 64
	i32 256418729, ; 22: Novera => 0xf48a3a9 => 114
	i32 278310601, ; 23: Telerik.Android.Input => 0x1096aec9 => 77
	i32 317674968, ; 24: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 31
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 84
	i32 321963286, ; 26: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 9
	i32 342366114, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 95
	i32 375677976, ; 28: System.Net.ServicePoint.dll => 0x16646418 => 145
	i32 379916513, ; 29: System.Threading.Thread.dll => 0x16a510e1 => 164
	i32 385762202, ; 30: System.Memory.dll => 0x16fe439a => 137
	i32 386706008, ; 31: Novera.resources.dll => 0x170caa58 => 0
	i32 392610295, ; 32: System.Threading.ThreadPool.dll => 0x1766c1f7 => 165
	i32 395744057, ; 33: _Microsoft.Android.Resource.Designer => 0x17969339 => 35
	i32 409257351, ; 34: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 29
	i32 442565967, ; 35: System.Collections => 0x1a61054f => 120
	i32 450948140, ; 36: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 94
	i32 456227837, ; 37: System.Web.HttpUtility.dll => 0x1b317bfd => 167
	i32 469710990, ; 38: System.dll => 0x1bff388e => 169
	i32 489220957, ; 39: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 7
	i32 498788369, ; 40: System.ObjectModel => 0x1dbae811 => 150
	i32 500153091, ; 41: Telerik.Android.Chart => 0x1dcfbb03 => 74
	i32 513247710, ; 42: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 48
	i32 525008092, ; 43: SkiaSharp.dll => 0x1f4afcdc => 55
	i32 538707440, ; 44: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 28
	i32 539058512, ; 45: Microsoft.Extensions.Logging => 0x20216150 => 45
	i32 540199569, ; 46: Telerik.Maui.Controls.Compatibility => 0x2032ca91 => 80
	i32 543594171, ; 47: Telerik.Android.List.dll => 0x206696bb => 78
	i32 578095993, ; 48: Telerik.Android.Common => 0x22750b79 => 75
	i32 580362983, ; 49: Telerik.Documents.Spreadsheet.FormatProviders.Pdf => 0x2297a2e7 => 70
	i32 588324302, ; 50: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml => 0x23111dce => 69
	i32 597488923, ; 51: CommunityToolkit.Maui => 0x239cf51b => 36
	i32 627609679, ; 52: Xamarin.AndroidX.CustomView => 0x2568904f => 92
	i32 627931235, ; 53: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 20
	i32 662205335, ; 54: System.Text.Encodings.Web.dll => 0x27787397 => 159
	i32 672442732, ; 55: System.Collections.Concurrent => 0x2814a96c => 116
	i32 683518922, ; 56: System.Net.Security => 0x28bdabca => 144
	i32 709152836, ; 57: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 60
	i32 722857257, ; 58: System.Runtime.Loader.dll => 0x2b15ed29 => 154
	i32 759454413, ; 59: System.Net.Requests => 0x2d445acd => 143
	i32 775507847, ; 60: System.IO.Compression => 0x2e394f87 => 134
	i32 777317022, ; 61: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 26
	i32 789151979, ; 62: Microsoft.Extensions.Options => 0x2f0980eb => 47
	i32 804715423, ; 63: System.Data.Common => 0x2ff6fb9f => 127
	i32 823281589, ; 64: System.Private.Uri.dll => 0x311247b5 => 151
	i32 827574247, ; 65: Novera.resources => 0x3153c7e7 => 0
	i32 830298997, ; 66: System.IO.Compression.Brotli => 0x317d5b75 => 133
	i32 869139383, ; 67: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 11
	i32 879513154, ; 68: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll => 0x346c4e42 => 70
	i32 880668424, ; 69: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 25
	i32 904024072, ; 70: System.ComponentModel.Primitives.dll => 0x35e25008 => 123
	i32 918734561, ; 71: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 22
	i32 961460050, ; 72: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 15
	i32 966729478, ; 73: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 111
	i32 967690846, ; 74: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 95
	i32 984345159, ; 75: Telerik.Zip => 0x3aabea47 => 83
	i32 990727110, ; 76: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 24
	i32 992768348, ; 77: System.Collections.dll => 0x3b2c715c => 120
	i32 994572943, ; 78: Telerik.Android.Common.dll => 0x3b47fa8f => 75
	i32 1012816738, ; 79: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 105
	i32 1019214401, ; 80: System.Drawing => 0x3cbffa41 => 131
	i32 1028951442, ; 81: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 82: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 85
	i32 1036536393, ; 83: System.Drawing.Primitives.dll => 0x3dc84a49 => 130
	i32 1043950537, ; 84: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 5
	i32 1044663988, ; 85: System.Linq.Expressions.dll => 0x3e444eb4 => 135
	i32 1052210849, ; 86: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 97
	i32 1082857460, ; 87: System.ComponentModel.TypeConverter => 0x408b17f4 => 124
	i32 1084122840, ; 88: Xamarin.Kotlin.StdLib => 0x409e66d8 => 112
	i32 1098259244, ; 89: System => 0x41761b2c => 169
	i32 1108272742, ; 90: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 27
	i32 1117529484, ; 91: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 21
	i32 1118262833, ; 92: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 17
	i32 1151062364, ; 93: Telerik.Documents.DrawingML.dll => 0x449bd15c => 63
	i32 1168523401, ; 94: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 23
	i32 1178241025, ; 95: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 102
	i32 1214827643, ; 96: CommunityToolkit.Mvvm => 0x4868cc7b => 38
	i32 1260983243, ; 97: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 3
	i32 1293217323, ; 98: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 93
	i32 1308624726, ; 99: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 12
	i32 1324164729, ; 100: System.Linq => 0x4eed2679 => 136
	i32 1336711579, ; 101: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 32
	i32 1373134921, ; 102: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 33
	i32 1376866003, ; 103: Xamarin.AndroidX.SavedState => 0x52114ed3 => 105
	i32 1406073936, ; 104: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 89
	i32 1408764838, ; 105: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 156
	i32 1430672901, ; 106: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 1
	i32 1435222561, ; 107: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 111
	i32 1452070440, ; 108: System.Formats.Asn1.dll => 0x568cd628 => 132
	i32 1458022317, ; 109: System.Net.Security.dll => 0x56e7a7ad => 144
	i32 1461004990, ; 110: es\Microsoft.Maui.Controls.resources => 0x57152abe => 7
	i32 1461234159, ; 111: System.Collections.Immutable.dll => 0x5718a9ef => 117
	i32 1462112819, ; 112: System.IO.Compression.dll => 0x57261233 => 134
	i32 1469204771, ; 113: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 86
	i32 1470490898, ; 114: Microsoft.Extensions.Primitives => 0x57a5e912 => 48
	i32 1470766374, ; 115: Telerik.Android.List => 0x57aa1d26 => 78
	i32 1479771757, ; 116: System.Collections.Immutable => 0x5833866d => 117
	i32 1480492111, ; 117: System.IO.Compression.Brotli.dll => 0x583e844f => 133
	i32 1526286932, ; 118: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 31
	i32 1543031311, ; 119: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 161
	i32 1604827217, ; 120: System.Net.WebClient => 0x5fa7b851 => 147
	i32 1622152042, ; 121: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 99
	i32 1623212457, ; 122: SkiaSharp.Views.Maui.Controls => 0x60c041a9 => 57
	i32 1624863272, ; 123: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 109
	i32 1634654947, ; 124: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 37
	i32 1636350590, ; 125: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 91
	i32 1639515021, ; 126: System.Net.Http.dll => 0x61b9038d => 138
	i32 1639986890, ; 127: System.Text.RegularExpressions => 0x61c036ca => 161
	i32 1641389582, ; 128: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 122
	i32 1657153582, ; 129: System.Runtime => 0x62c6282e => 157
	i32 1658251792, ; 130: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 110
	i32 1677501392, ; 131: System.Net.Primitives.dll => 0x63fca3d0 => 142
	i32 1679769178, ; 132: System.Security.Cryptography => 0x641f3e5a => 158
	i32 1705973217, ; 133: Telerik.Documents.SpreadsheetStreaming.dll => 0x65af15e1 => 73
	i32 1729485958, ; 134: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 87
	i32 1743415430, ; 135: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 2
	i32 1746316138, ; 136: Mono.Android.Export => 0x6816ab6a => 173
	i32 1763938596, ; 137: System.Diagnostics.TraceSource.dll => 0x69239124 => 129
	i32 1766324549, ; 138: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 107
	i32 1770582343, ; 139: Microsoft.Extensions.Logging.dll => 0x6988f147 => 45
	i32 1780572499, ; 140: Mono.Android.Runtime.dll => 0x6a216153 => 174
	i32 1782862114, ; 141: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 18
	i32 1788241197, ; 142: Xamarin.AndroidX.Fragment => 0x6a96652d => 94
	i32 1793755602, ; 143: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 10
	i32 1808609942, ; 144: Xamarin.AndroidX.Loader => 0x6bcd3296 => 99
	i32 1813058853, ; 145: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 112
	i32 1813201214, ; 146: Xamarin.Google.Android.Material => 0x6c13413e => 110
	i32 1818569960, ; 147: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 103
	i32 1824722060, ; 148: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 156
	i32 1828688058, ; 149: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 46
	i32 1853025655, ; 150: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 27
	i32 1858542181, ; 151: System.Linq.Expressions => 0x6ec71a65 => 135
	i32 1874600372, ; 152: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll => 0x6fbc21b4 => 64
	i32 1875935024, ; 153: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 9
	i32 1893218855, ; 154: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 3
	i32 1910275211, ; 155: System.Collections.NonGeneric.dll => 0x71dc7c8b => 118
	i32 1953182387, ; 156: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 14
	i32 1961813231, ; 157: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 106
	i32 1968388702, ; 158: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 159: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 6
	i32 2019465201, ; 160: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 97
	i32 2042042370, ; 161: Telerik.Documents.Spreadsheet.FormatProviders.Xls => 0x79b71802 => 71
	i32 2042201515, ; 162: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll => 0x79b985ab => 71
	i32 2045470958, ; 163: System.Private.Xml => 0x79eb68ee => 152
	i32 2055257422, ; 164: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 96
	i32 2058309705, ; 165: Telerik.Documents.DrawingML => 0x7aaf5049 => 63
	i32 2066184531, ; 166: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 5
	i32 2070888862, ; 167: System.Diagnostics.TraceSource => 0x7b6f419e => 129
	i32 2079903147, ; 168: System.Runtime.dll => 0x7bf8cdab => 157
	i32 2090596640, ; 169: System.Numerics.Vectors => 0x7c9bf920 => 149
	i32 2127167465, ; 170: System.Console => 0x7ec9ffe9 => 126
	i32 2142473426, ; 171: System.Collections.Specialized => 0x7fb38cd2 => 119
	i32 2159891885, ; 172: Microsoft.Maui => 0x80bd55ad => 52
	i32 2169148018, ; 173: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 13
	i32 2181898931, ; 174: Microsoft.Extensions.Options.dll => 0x820d22b3 => 47
	i32 2192057212, ; 175: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 46
	i32 2193016926, ; 176: System.ObjectModel.dll => 0x82b6c85e => 150
	i32 2201107256, ; 177: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 113
	i32 2201231467, ; 178: System.Net.Http => 0x8334206b => 138
	i32 2207618523, ; 179: it\Microsoft.Maui.Controls.resources => 0x839595db => 15
	i32 2220894804, ; 180: Telerik.Documents.Spreadsheet.dll => 0x84602a54 => 72
	i32 2222056684, ; 181: System.Threading.Tasks.Parallel => 0x8471e4ec => 163
	i32 2266799131, ; 182: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2279755925, ; 183: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 104
	i32 2295906218, ; 184: System.Net.Sockets => 0x88d8bfaa => 146
	i32 2298471582, ; 185: System.Net.Mail => 0x88ffe49e => 139
	i32 2303942373, ; 186: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 19
	i32 2305521784, ; 187: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2320631194, ; 188: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 163
	i32 2353062107, ; 189: System.Net.Primitives => 0x8c40e0db => 142
	i32 2364201794, ; 190: SkiaSharp.Views.Maui.Core => 0x8ceadb42 => 59
	i32 2366048013, ; 191: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 13
	i32 2368005991, ; 192: System.Xml.ReaderWriter.dll => 0x8d24e767 => 168
	i32 2371007202, ; 193: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2388878468, ; 194: Telerik.Android.Input.dll => 0x8e636484 => 77
	i32 2395872292, ; 195: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 14
	i32 2401565422, ; 196: System.Web.HttpUtility => 0x8f24faee => 167
	i32 2427813419, ; 197: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 11
	i32 2430693373, ; 198: Telerik.Maui.Controls => 0x90e16ffd => 81
	i32 2435356389, ; 199: System.Console.dll => 0x912896e5 => 126
	i32 2458678730, ; 200: System.Net.Sockets.dll => 0x928c75ca => 146
	i32 2471841756, ; 201: netstandard.dll => 0x93554fdc => 170
	i32 2475788418, ; 202: Java.Interop.dll => 0x93918882 => 172
	i32 2480646305, ; 203: Microsoft.Maui.Controls => 0x93dba8a1 => 50
	i32 2483903535, ; 204: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 122
	i32 2484371297, ; 205: System.Net.ServicePoint => 0x94147f61 => 145
	i32 2488179576, ; 206: Telerik.Documents.CMapUtils.dll => 0x944e9b78 => 61
	i32 2503351294, ; 207: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 17
	i32 2521915375, ; 208: SkiaSharp.Views.Maui.Controls.Compatibility => 0x96515fef => 58
	i32 2539705650, ; 209: Telerik.Maui.Core.dll => 0x9760d532 => 82
	i32 2550873716, ; 210: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 12
	i32 2560731213, ; 211: Telerik.Android.Data => 0x98a1a84d => 76
	i32 2562349572, ; 212: Microsoft.CSharp => 0x98ba5a04 => 115
	i32 2570120770, ; 213: System.Text.Encodings.Web => 0x9930ee42 => 159
	i32 2576534780, ; 214: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 16
	i32 2589602615, ; 215: System.Threading.ThreadPool => 0x9a5a3337 => 165
	i32 2593496499, ; 216: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 21
	i32 2605712449, ; 217: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 113
	i32 2617129537, ; 218: System.Private.Xml.dll => 0x9bfe3a41 => 152
	i32 2620871830, ; 219: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 91
	i32 2625339995, ; 220: SkiaSharp.Views.Maui.Core.dll => 0x9c7b825b => 59
	i32 2626831493, ; 221: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 16
	i32 2634641626, ; 222: Telerik.Documents.SpreadsheetStreaming => 0x9d0970da => 73
	i32 2647853659, ; 223: Telerik.Documents.Fixed => 0x9dd30a5b => 65
	i32 2663698177, ; 224: System.Runtime.Loader => 0x9ec4cf01 => 154
	i32 2665622720, ; 225: System.Drawing.Primitives => 0x9ee22cc0 => 130
	i32 2676780864, ; 226: System.Data.Common.dll => 0x9f8c6f40 => 127
	i32 2724373263, ; 227: System.Runtime.Numerics.dll => 0xa262a30f => 155
	i32 2732626843, ; 228: Xamarin.AndroidX.Activity => 0xa2e0939b => 84
	i32 2735172069, ; 229: System.Threading.Channels => 0xa30769e5 => 162
	i32 2737747696, ; 230: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 86
	i32 2740698338, ; 231: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 2
	i32 2744605653, ; 232: Telerik.Documents.Flow.FormatProviders.Pdf => 0xa3975bd5 => 67
	i32 2752995522, ; 233: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 22
	i32 2758225723, ; 234: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 51
	i32 2764765095, ; 235: Microsoft.Maui.dll => 0xa4caf7a7 => 52
	i32 2778768386, ; 236: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 108
	i32 2782416773, ; 237: Telerik.Documents.Flow.dll => 0xa5d84f85 => 68
	i32 2785988530, ; 238: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 28
	i32 2795602088, ; 239: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 56
	i32 2801831435, ; 240: Microsoft.Maui.Graphics => 0xa7008e0b => 54
	i32 2810250172, ; 241: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 89
	i32 2853208004, ; 242: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 108
	i32 2853767236, ; 243: Telerik.Maui.Controls.dll => 0xaa190844 => 81
	i32 2861098320, ; 244: Mono.Android.Export.dll => 0xaa88e550 => 173
	i32 2861189240, ; 245: Microsoft.Maui.Essentials => 0xaa8a4878 => 53
	i32 2866535038, ; 246: Telerik.Documents.Core => 0xaadbda7e => 62
	i32 2868488919, ; 247: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 37
	i32 2909740682, ; 248: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2912489636, ; 249: SkiaSharp.Views.Android => 0xad9910a4 => 56
	i32 2916838712, ; 250: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 109
	i32 2919462931, ; 251: System.Numerics.Vectors.dll => 0xae037813 => 149
	i32 2927181627, ; 252: Novera.dll => 0xae793f3b => 114
	i32 2959614098, ; 253: System.ComponentModel.dll => 0xb0682092 => 125
	i32 2978675010, ; 254: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 93
	i32 2987532451, ; 255: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 106
	i32 3032926982, ; 256: Telerik.Android.Chart.dll => 0xb4c6cb06 => 74
	i32 3038032645, ; 257: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 35
	i32 3053864966, ; 258: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 8
	i32 3057625584, ; 259: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 100
	i32 3059408633, ; 260: Mono.Android.Runtime => 0xb65adef9 => 174
	i32 3059793426, ; 261: System.ComponentModel.Primitives => 0xb660be12 => 123
	i32 3072870390, ; 262: Telerik.Android.Primitives.dll => 0xb72847f6 => 79
	i32 3103600923, ; 263: System.Formats.Asn1 => 0xb8fd311b => 132
	i32 3178803400, ; 264: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 101
	i32 3205570722, ; 265: Telerik.Documents.Core.dll => 0xbf1120a2 => 62
	i32 3220365878, ; 266: System.Threading => 0xbff2e236 => 166
	i32 3258312781, ; 267: Xamarin.AndroidX.CardView => 0xc235e84d => 87
	i32 3280506390, ; 268: System.ComponentModel.Annotations.dll => 0xc3888e16 => 121
	i32 3290700000, ; 269: Telerik.Documents.Flow => 0xc42418e0 => 68
	i32 3305363605, ; 270: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 8
	i32 3316684772, ; 271: System.Net.Requests.dll => 0xc5b097e4 => 143
	i32 3317135071, ; 272: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 92
	i32 3320834987, ; 273: Telerik.Zip.dll => 0xc5efebab => 83
	i32 3340387945, ; 274: SkiaSharp => 0xc71a4669 => 55
	i32 3346324047, ; 275: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 102
	i32 3347243934, ; 276: Telerik.Documents.CMapUtils => 0xc782e39e => 61
	i32 3357674450, ; 277: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 25
	i32 3358260929, ; 278: System.Text.Json => 0xc82afec1 => 160
	i32 3362522851, ; 279: Xamarin.AndroidX.Core => 0xc86c06e3 => 90
	i32 3366347497, ; 280: Java.Interop => 0xc8a662e9 => 172
	i32 3374999561, ; 281: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 104
	i32 3381016424, ; 282: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 4
	i32 3428513518, ; 283: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 284: netstandard => 0xcc7d82b4 => 170
	i32 3452344032, ; 285: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 49
	i32 3458724246, ; 286: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 23
	i32 3466574376, ; 287: SkiaSharp.Views.Maui.Controls.Compatibility.dll => 0xce9fba28 => 58
	i32 3471940407, ; 288: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 124
	i32 3473156932, ; 289: SkiaSharp.Views.Maui.Controls.dll => 0xcf042b44 => 57
	i32 3476120550, ; 290: Mono.Android => 0xcf3163e6 => 175
	i32 3484440000, ; 291: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 24
	i32 3485117614, ; 292: System.Text.Json.dll => 0xcfbaacae => 160
	i32 3580758918, ; 293: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 32
	i32 3584610821, ; 294: Telerik.Documents.Flow.FormatProviders.Doc.dll => 0xd5a8d205 => 66
	i32 3592228221, ; 295: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 34
	i32 3592435036, ; 296: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 44
	i32 3608519521, ; 297: System.Linq.dll => 0xd715a361 => 136
	i32 3641597786, ; 298: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 96
	i32 3643446276, ; 299: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 29
	i32 3643854240, ; 300: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 101
	i32 3653026799, ; 301: Telerik.Documents.Fixed.dll => 0xd9bcc3ef => 65
	i32 3657292374, ; 302: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3660523487, ; 303: System.Net.NetworkInformation => 0xda2f27df => 141
	i32 3672681054, ; 304: Mono.Android.dll => 0xdae8aa5e => 175
	i32 3724971120, ; 305: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 100
	i32 3732100267, ; 306: System.Net.NameResolution => 0xde7354ab => 140
	i32 3748608112, ; 307: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 128
	i32 3751619990, ; 308: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 4
	i32 3774509857, ; 309: Telerik.Documents.Spreadsheet => 0xe0fa7321 => 72
	i32 3776403777, ; 310: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 44
	i32 3786282454, ; 311: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 88
	i32 3792276235, ; 312: System.Collections.NonGeneric => 0xe2098b0b => 118
	i32 3800979733, ; 313: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 49
	i32 3802395368, ; 314: System.Collections.Specialized.dll => 0xe2a3f2e8 => 119
	i32 3807198597, ; 315: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 60
	i32 3817368567, ; 316: CommunityToolkit.Maui.dll => 0xe3886bf7 => 36
	i32 3823082795, ; 317: System.Security.Cryptography.dll => 0xe3df9d2b => 158
	i32 3841636137, ; 318: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 319: System.Net.Mail.dll => 0xe52378b9 => 139
	i32 3849253459, ; 320: System.Runtime.InteropServices.dll => 0xe56ef253 => 153
	i32 3874567795, ; 321: Telerik.Android.Data.dll => 0xe6f13673 => 76
	i32 3885497537, ; 322: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 148
	i32 3896106733, ; 323: System.Collections.Concurrent.dll => 0xe839deed => 116
	i32 3896760992, ; 324: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 90
	i32 3898971068, ; 325: Microsoft.Extensions.Localization.dll => 0xe86593bc => 43
	i32 3920221145, ; 326: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 20
	i32 3928044579, ; 327: System.Xml.ReaderWriter => 0xea213423 => 168
	i32 3931092270, ; 328: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 103
	i32 3954195687, ; 329: Microsoft.Extensions.Localization => 0xebb03ce7 => 43
	i32 3955647286, ; 330: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 85
	i32 4010861852, ; 331: Telerik.Android.Primitives => 0xef10e51c => 79
	i32 4025784931, ; 332: System.Memory => 0xeff49a63 => 137
	i32 4046471985, ; 333: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 51
	i32 4051204516, ; 334: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll => 0xf17879a4 => 69
	i32 4073602200, ; 335: System.Threading.dll => 0xf2ce3c98 => 166
	i32 4091086043, ; 336: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 6
	i32 4094352644, ; 337: Microsoft.Maui.Essentials.dll => 0xf40add04 => 53
	i32 4099507663, ; 338: System.Drawing.dll => 0xf45985cf => 131
	i32 4100113165, ; 339: System.Private.Uri => 0xf462c30d => 151
	i32 4103439459, ; 340: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 30
	i32 4126470640, ; 341: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4150914736, ; 342: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 30
	i32 4182413190, ; 343: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 98
	i32 4196529839, ; 344: System.Net.WebClient.dll => 0xfa21f6af => 147
	i32 4213026141, ; 345: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 128
	i32 4249188766, ; 346: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 19
	i32 4271975918, ; 347: Microsoft.Maui.Controls.dll => 0xfea12dee => 50
	i32 4274623895, ; 348: CommunityToolkit.Mvvm.dll => 0xfec99597 => 38
	i32 4274976490, ; 349: System.Runtime.Numerics => 0xfecef6ea => 155
	i32 4292120959, ; 350: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 98
	i32 4292429106 ; 351: Telerik.Documents.Flow.FormatProviders.Pdf.dll => 0xffd94532 => 67
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [352 x i32] [
	i32 141, ; 0
	i32 140, ; 1
	i32 1, ; 2
	i32 10, ; 3
	i32 164, ; 4
	i32 34, ; 5
	i32 54, ; 6
	i32 18, ; 7
	i32 153, ; 8
	i32 162, ; 9
	i32 33, ; 10
	i32 26, ; 11
	i32 148, ; 12
	i32 121, ; 13
	i32 88, ; 14
	i32 80, ; 15
	i32 107, ; 16
	i32 125, ; 17
	i32 115, ; 18
	i32 82, ; 19
	i32 66, ; 20
	i32 64, ; 21
	i32 114, ; 22
	i32 77, ; 23
	i32 31, ; 24
	i32 84, ; 25
	i32 9, ; 26
	i32 95, ; 27
	i32 145, ; 28
	i32 164, ; 29
	i32 137, ; 30
	i32 0, ; 31
	i32 165, ; 32
	i32 35, ; 33
	i32 29, ; 34
	i32 120, ; 35
	i32 94, ; 36
	i32 167, ; 37
	i32 169, ; 38
	i32 7, ; 39
	i32 150, ; 40
	i32 74, ; 41
	i32 48, ; 42
	i32 55, ; 43
	i32 28, ; 44
	i32 45, ; 45
	i32 80, ; 46
	i32 78, ; 47
	i32 75, ; 48
	i32 70, ; 49
	i32 69, ; 50
	i32 36, ; 51
	i32 92, ; 52
	i32 20, ; 53
	i32 159, ; 54
	i32 116, ; 55
	i32 144, ; 56
	i32 60, ; 57
	i32 154, ; 58
	i32 143, ; 59
	i32 134, ; 60
	i32 26, ; 61
	i32 47, ; 62
	i32 127, ; 63
	i32 151, ; 64
	i32 0, ; 65
	i32 133, ; 66
	i32 11, ; 67
	i32 70, ; 68
	i32 25, ; 69
	i32 123, ; 70
	i32 22, ; 71
	i32 15, ; 72
	i32 111, ; 73
	i32 95, ; 74
	i32 83, ; 75
	i32 24, ; 76
	i32 120, ; 77
	i32 75, ; 78
	i32 105, ; 79
	i32 131, ; 80
	i32 42, ; 81
	i32 85, ; 82
	i32 130, ; 83
	i32 5, ; 84
	i32 135, ; 85
	i32 97, ; 86
	i32 124, ; 87
	i32 112, ; 88
	i32 169, ; 89
	i32 27, ; 90
	i32 21, ; 91
	i32 17, ; 92
	i32 63, ; 93
	i32 23, ; 94
	i32 102, ; 95
	i32 38, ; 96
	i32 3, ; 97
	i32 93, ; 98
	i32 12, ; 99
	i32 136, ; 100
	i32 32, ; 101
	i32 33, ; 102
	i32 105, ; 103
	i32 89, ; 104
	i32 156, ; 105
	i32 1, ; 106
	i32 111, ; 107
	i32 132, ; 108
	i32 144, ; 109
	i32 7, ; 110
	i32 117, ; 111
	i32 134, ; 112
	i32 86, ; 113
	i32 48, ; 114
	i32 78, ; 115
	i32 117, ; 116
	i32 133, ; 117
	i32 31, ; 118
	i32 161, ; 119
	i32 147, ; 120
	i32 99, ; 121
	i32 57, ; 122
	i32 109, ; 123
	i32 37, ; 124
	i32 91, ; 125
	i32 138, ; 126
	i32 161, ; 127
	i32 122, ; 128
	i32 157, ; 129
	i32 110, ; 130
	i32 142, ; 131
	i32 158, ; 132
	i32 73, ; 133
	i32 87, ; 134
	i32 2, ; 135
	i32 173, ; 136
	i32 129, ; 137
	i32 107, ; 138
	i32 45, ; 139
	i32 174, ; 140
	i32 18, ; 141
	i32 94, ; 142
	i32 10, ; 143
	i32 99, ; 144
	i32 112, ; 145
	i32 110, ; 146
	i32 103, ; 147
	i32 156, ; 148
	i32 46, ; 149
	i32 27, ; 150
	i32 135, ; 151
	i32 64, ; 152
	i32 9, ; 153
	i32 3, ; 154
	i32 118, ; 155
	i32 14, ; 156
	i32 106, ; 157
	i32 39, ; 158
	i32 6, ; 159
	i32 97, ; 160
	i32 71, ; 161
	i32 71, ; 162
	i32 152, ; 163
	i32 96, ; 164
	i32 63, ; 165
	i32 5, ; 166
	i32 129, ; 167
	i32 157, ; 168
	i32 149, ; 169
	i32 126, ; 170
	i32 119, ; 171
	i32 52, ; 172
	i32 13, ; 173
	i32 47, ; 174
	i32 46, ; 175
	i32 150, ; 176
	i32 113, ; 177
	i32 138, ; 178
	i32 15, ; 179
	i32 72, ; 180
	i32 163, ; 181
	i32 40, ; 182
	i32 104, ; 183
	i32 146, ; 184
	i32 139, ; 185
	i32 19, ; 186
	i32 171, ; 187
	i32 163, ; 188
	i32 142, ; 189
	i32 59, ; 190
	i32 13, ; 191
	i32 168, ; 192
	i32 39, ; 193
	i32 77, ; 194
	i32 14, ; 195
	i32 167, ; 196
	i32 11, ; 197
	i32 81, ; 198
	i32 126, ; 199
	i32 146, ; 200
	i32 170, ; 201
	i32 172, ; 202
	i32 50, ; 203
	i32 122, ; 204
	i32 145, ; 205
	i32 61, ; 206
	i32 17, ; 207
	i32 58, ; 208
	i32 82, ; 209
	i32 12, ; 210
	i32 76, ; 211
	i32 115, ; 212
	i32 159, ; 213
	i32 16, ; 214
	i32 165, ; 215
	i32 21, ; 216
	i32 113, ; 217
	i32 152, ; 218
	i32 91, ; 219
	i32 59, ; 220
	i32 16, ; 221
	i32 73, ; 222
	i32 65, ; 223
	i32 154, ; 224
	i32 130, ; 225
	i32 127, ; 226
	i32 155, ; 227
	i32 84, ; 228
	i32 162, ; 229
	i32 86, ; 230
	i32 2, ; 231
	i32 67, ; 232
	i32 22, ; 233
	i32 51, ; 234
	i32 52, ; 235
	i32 108, ; 236
	i32 68, ; 237
	i32 28, ; 238
	i32 56, ; 239
	i32 54, ; 240
	i32 89, ; 241
	i32 108, ; 242
	i32 81, ; 243
	i32 173, ; 244
	i32 53, ; 245
	i32 62, ; 246
	i32 37, ; 247
	i32 171, ; 248
	i32 56, ; 249
	i32 109, ; 250
	i32 149, ; 251
	i32 114, ; 252
	i32 125, ; 253
	i32 93, ; 254
	i32 106, ; 255
	i32 74, ; 256
	i32 35, ; 257
	i32 8, ; 258
	i32 100, ; 259
	i32 174, ; 260
	i32 123, ; 261
	i32 79, ; 262
	i32 132, ; 263
	i32 101, ; 264
	i32 62, ; 265
	i32 166, ; 266
	i32 87, ; 267
	i32 121, ; 268
	i32 68, ; 269
	i32 8, ; 270
	i32 143, ; 271
	i32 92, ; 272
	i32 83, ; 273
	i32 55, ; 274
	i32 102, ; 275
	i32 61, ; 276
	i32 25, ; 277
	i32 160, ; 278
	i32 90, ; 279
	i32 172, ; 280
	i32 104, ; 281
	i32 4, ; 282
	i32 41, ; 283
	i32 170, ; 284
	i32 49, ; 285
	i32 23, ; 286
	i32 58, ; 287
	i32 124, ; 288
	i32 57, ; 289
	i32 175, ; 290
	i32 24, ; 291
	i32 160, ; 292
	i32 32, ; 293
	i32 66, ; 294
	i32 34, ; 295
	i32 44, ; 296
	i32 136, ; 297
	i32 96, ; 298
	i32 29, ; 299
	i32 101, ; 300
	i32 65, ; 301
	i32 40, ; 302
	i32 141, ; 303
	i32 175, ; 304
	i32 100, ; 305
	i32 140, ; 306
	i32 128, ; 307
	i32 4, ; 308
	i32 72, ; 309
	i32 44, ; 310
	i32 88, ; 311
	i32 118, ; 312
	i32 49, ; 313
	i32 119, ; 314
	i32 60, ; 315
	i32 36, ; 316
	i32 158, ; 317
	i32 42, ; 318
	i32 139, ; 319
	i32 153, ; 320
	i32 76, ; 321
	i32 148, ; 322
	i32 116, ; 323
	i32 90, ; 324
	i32 43, ; 325
	i32 20, ; 326
	i32 168, ; 327
	i32 103, ; 328
	i32 43, ; 329
	i32 85, ; 330
	i32 79, ; 331
	i32 137, ; 332
	i32 51, ; 333
	i32 69, ; 334
	i32 166, ; 335
	i32 6, ; 336
	i32 53, ; 337
	i32 131, ; 338
	i32 151, ; 339
	i32 30, ; 340
	i32 41, ; 341
	i32 30, ; 342
	i32 98, ; 343
	i32 147, ; 344
	i32 128, ; 345
	i32 19, ; 346
	i32 50, ; 347
	i32 38, ; 348
	i32 155, ; 349
	i32 98, ; 350
	i32 67 ; 351
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
