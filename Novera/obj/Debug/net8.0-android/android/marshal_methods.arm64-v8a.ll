; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [369 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [684 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 252
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 172
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 193
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 59
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 239
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 152
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 280
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 283
	i64 298476602057819868, ; 9: Novera.dll => 0x42466e35f6c06dc => 1
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 246
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 133
	i64 422779754995088667, ; 12: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 57
	i64 435118502366263740, ; 13: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 282
	i64 560278790331054453, ; 14: System.Reflection.Primitives => 0x7c6829760de3975 => 96
	i64 634308326490598313, ; 15: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 265
	i64 649145001856603771, ; 16: System.Security.SecureString => 0x90239f09b62167b => 130
	i64 750875890346172408, ; 17: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 146
	i64 798450721097591769, ; 18: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 240
	i64 799765834175365804, ; 19: System.ComponentModel.dll => 0xb1956c9f18442ac => 19
	i64 805302231655005164, ; 20: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 319
	i64 872800313462103108, ; 21: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 251
	i64 895210737996778430, ; 22: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 266
	i64 940822596282819491, ; 23: System.Transactions => 0xd0e792aa81923a3 => 151
	i64 960778385402502048, ; 24: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 105
	i64 1010599046655515943, ; 25: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 96
	i64 1120440138749646132, ; 26: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 295
	i64 1268860745194512059, ; 27: System.Drawing.dll => 0x119be62002c19ebb => 37
	i64 1301626418029409250, ; 28: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 29
	i64 1315114680217950157, ; 29: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 235
	i64 1369545283391376210, ; 30: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 273
	i64 1404195534211153682, ; 31: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 51
	i64 1425944114962822056, ; 32: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 116
	i64 1426308605732942162, ; 33: Telerik.Android.Data => 0x13cb441eb8cb7152 => 216
	i64 1476839205573959279, ; 34: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 71
	i64 1479219296523606517, ; 35: Novera => 0x14873e1cea3159f5 => 1
	i64 1486715745332614827, ; 36: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 190
	i64 1492954217099365037, ; 37: System.Net.HttpListener => 0x14b809f350210aad => 66
	i64 1513467482682125403, ; 38: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 171
	i64 1537168428375924959, ; 39: System.Threading.Thread.dll => 0x15551e8a954ae0df => 146
	i64 1576750169145655260, ; 40: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 294
	i64 1624659445732251991, ; 41: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 234
	i64 1628611045998245443, ; 42: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 269
	i64 1636321030536304333, ; 43: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 259
	i64 1651782184287836205, ; 44: System.Globalization.Calendars => 0x16ec4f2524cb982d => 41
	i64 1659332977923810219, ; 45: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 90
	i64 1682513316613008342, ; 46: System.Net.dll => 0x17597cf276952bd6 => 82
	i64 1735388228521408345, ; 47: System.Net.Mail.dll => 0x181556663c69b759 => 67
	i64 1743969030606105336, ; 48: System.Memory.dll => 0x1833d297e88f2af8 => 63
	i64 1757657332641132034, ; 49: Telerik.Documents.Flow => 0x1864740814ef6e02 => 208
	i64 1767386781656293639, ; 50: System.Private.Uri.dll => 0x188704e9f5582107 => 87
	i64 1795316252682057001, ; 51: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 233
	i64 1825687700144851180, ; 52: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 107
	i64 1835311033149317475, ; 53: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 313
	i64 1836611346387731153, ; 54: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 280
	i64 1854145951182283680, ; 55: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 103
	i64 1875417405349196092, ; 56: System.Drawing.Primitives => 0x1a06d2319b6c713c => 36
	i64 1875917498431009007, ; 57: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 230
	i64 1881198190668717030, ; 58: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 335
	i64 1897575647115118287, ; 59: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 282
	i64 1920760634179481754, ; 60: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 191
	i64 1930726298510463061, ; 61: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 176
	i64 1972385128188460614, ; 62: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 120
	i64 1981742497975770890, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 267
	i64 2016094873913193346, ; 64: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll => 0x1bfa9b9b2914f382 => 211
	i64 2040001226662520565, ; 65: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 143
	i64 2062890601515140263, ; 66: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 142
	i64 2064708342624596306, ; 67: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 303
	i64 2080945842184875448, ; 68: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 54
	i64 2102659300918482391, ; 69: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 36
	i64 2106033277907880740, ; 70: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 142
	i64 2165310824878145998, ; 71: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 227
	i64 2165725771938924357, ; 72: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 237
	i64 2200176636225660136, ; 73: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 186
	i64 2248236514743090012, ; 74: Telerik.Android.Chart => 0x1f335732d052fb5c => 214
	i64 2262844636196693701, ; 75: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 251
	i64 2287834202362508563, ; 76: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 9
	i64 2287887973817120656, ; 77: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 15
	i64 2304837677853103545, ; 78: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 279
	i64 2315304989185124968, ; 79: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 52
	i64 2329709569556905518, ; 80: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 262
	i64 2335503487726329082, ; 81: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 137
	i64 2337758774805907496, ; 82: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 102
	i64 2470498323731680442, ; 83: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 244
	i64 2479423007379663237, ; 84: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 289
	i64 2497223385847772520, ; 85: System.Runtime => 0x22a7eb7046413568 => 117
	i64 2547086958574651984, ; 86: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 228
	i64 2584818638823695362, ; 87: Telerik.Android.Chart.dll => 0x23df1edb67e52402 => 214
	i64 2592350477072141967, ; 88: System.Xml.dll => 0x23f9e10627330e8f => 164
	i64 2602673633151553063, ; 89: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 334
	i64 2624866290265602282, ; 90: mscorlib.dll => 0x246d65fbde2db8ea => 167
	i64 2632269733008246987, ; 91: System.Net.NameResolution => 0x2487b36034f808cb => 68
	i64 2656907746661064104, ; 92: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 180
	i64 2662981627730767622, ; 93: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 309
	i64 2706075432581334785, ; 94: System.Net.WebSockets => 0x258de944be6c0701 => 81
	i64 2751819668598402442, ; 95: Telerik.Android.Common.dll => 0x26306d68a8bdad8a => 215
	i64 2783046991838674048, ; 96: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 102
	i64 2787234703088983483, ; 97: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 284
	i64 2815524396660695947, ; 98: System.Security.AccessControl => 0x2712c0857f68238b => 118
	i64 2895129759130297543, ; 99: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 314
	i64 2923871038697555247, ; 100: Jsr305Binding => 0x2893ad37e69ec52f => 296
	i64 3017136373564924869, ; 101: System.Net.WebProxy => 0x29df058bd93f63c5 => 79
	i64 3017704767998173186, ; 102: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 295
	i64 3106852385031680087, ; 103: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 115
	i64 3110390492489056344, ; 104: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 122
	i64 3135773902340015556, ; 105: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 49
	i64 3222498811760126034, ; 106: Telerik.Documents.SpreadsheetStreaming.dll => 0x2cb89d988414a852 => 213
	i64 3254037935674351285, ; 107: SkiaSharp.Views.Maui.Controls.Compatibility.dll => 0x2d28aa430983deb5 => 198
	i64 3281594302220646930, ; 108: System.Security.Principal => 0x2d8a90a198ceba12 => 129
	i64 3289520064315143713, ; 109: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 260
	i64 3303437397778967116, ; 110: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 231
	i64 3311221304742556517, ; 111: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 83
	i64 3325875462027654285, ; 112: System.Runtime.Numerics => 0x2e27e21c8958b48d => 111
	i64 3328853167529574890, ; 113: System.Net.Sockets.dll => 0x2e327651a008c1ea => 76
	i64 3344514922410554693, ; 114: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 306
	i64 3414639567687375782, ; 115: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 197
	i64 3429672777697402584, ; 116: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 193
	i64 3437845325506641314, ; 117: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 54
	i64 3493805808809882663, ; 118: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 286
	i64 3494946837667399002, ; 119: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 178
	i64 3508450208084372758, ; 120: System.Net.Ping => 0x30b084e02d03ad16 => 70
	i64 3522470458906976663, ; 121: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 285
	i64 3531994851595924923, ; 122: System.Numerics => 0x31042a9aade235bb => 84
	i64 3551103847008531295, ; 123: System.Private.CoreLib.dll => 0x31480e226177735f => 173
	i64 3567343442040498961, ; 124: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 329
	i64 3571415421602489686, ; 125: System.Runtime.dll => 0x319037675df7e556 => 117
	i64 3638003163729360188, ; 126: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 179
	i64 3647754201059316852, ; 127: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 157
	i64 3655542548057982301, ; 128: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 178
	i64 3659371656528649588, ; 129: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 225
	i64 3716579019761409177, ; 130: netstandard.dll => 0x3393f0ed5c8c5c99 => 168
	i64 3727469159507183293, ; 131: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 278
	i64 3772598417116884899, ; 132: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 252
	i64 3869221888984012293, ; 133: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 184
	i64 3869649043256705283, ; 134: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 33
	i64 3890352374528606784, ; 135: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 191
	i64 3904626980117740842, ; 136: Telerik.Android.Input => 0x3630058d0252fd2a => 217
	i64 3919223565570527920, ; 137: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 123
	i64 3933965368022646939, ; 138: System.Net.Requests => 0x369840a8bfadc09b => 73
	i64 3966267475168208030, ; 139: System.Memory => 0x370b03412596249e => 63
	i64 4006972109285359177, ; 140: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 162
	i64 4009997192427317104, ; 141: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 114
	i64 4070326265757318011, ; 142: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 310
	i64 4073500526318903918, ; 143: System.Private.Xml.dll => 0x3887fb25779ae26e => 89
	i64 4073631083018132676, ; 144: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 189
	i64 4120493066591692148, ; 145: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 340
	i64 4148881117810174540, ; 146: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 106
	i64 4154383907710350974, ; 147: System.ComponentModel => 0x39a7562737acb67e => 19
	i64 4167269041631776580, ; 148: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 147
	i64 4168469861834746866, ; 149: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 119
	i64 4187479170553454871, ; 150: System.Linq.Expressions => 0x3a1cea1e912fa117 => 59
	i64 4201423742386704971, ; 151: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 246
	i64 4205801962323029395, ; 152: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 18
	i64 4235503420553921860, ; 153: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 53
	i64 4276655546545176254, ; 154: Telerik.Documents.Spreadsheet.dll => 0x3b59bb8f96877ebe => 212
	i64 4282138915307457788, ; 155: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 93
	i64 4360412976914417659, ; 156: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 335
	i64 4373617458794931033, ; 157: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 56
	i64 4388833520688958302, ; 158: Telerik.Android.List => 0x3ce844d582fe0b5e => 218
	i64 4397634830160618470, ; 159: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 130
	i64 4408641050721538416, ; 160: Telerik.Documents.CMapUtils.dll => 0x3d2ea3ad7a765170 => 201
	i64 4477672992252076438, ; 161: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 153
	i64 4484706122338676047, ; 162: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 42
	i64 4533124835995628778, ; 163: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 93
	i64 4636684751163556186, ; 164: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 290
	i64 4672453897036726049, ; 165: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 51
	i64 4716677666592453464, ; 166: System.Xml.XmlSerializer => 0x417501590542f358 => 163
	i64 4743821336939966868, ; 167: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 14
	i64 4759461199762736555, ; 168: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 264
	i64 4794310189461587505, ; 169: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 228
	i64 4795410492532947900, ; 170: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 285
	i64 4809057822547766521, ; 171: System.Drawing => 0x42bd349c3145ecf9 => 37
	i64 4814660307502931973, ; 172: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 68
	i64 4853321196694829351, ; 173: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 110
	i64 4871824391508510238, ; 174: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 325
	i64 4937377294538952812, ; 175: Telerik.Zip.dll => 0x4485167d7312d06c => 223
	i64 4953714692329509532, ; 176: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 333
	i64 5055365687667823624, ; 177: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 229
	i64 5081566143765835342, ; 178: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 100
	i64 5099468265966638712, ; 179: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 100
	i64 5103417709280584325, ; 180: System.Collections.Specialized => 0x46d2fb5e161b6285 => 12
	i64 5182934613077526976, ; 181: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 12
	i64 5205316157927637098, ; 182: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 271
	i64 5220528816406009119, ; 183: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml => 0x48730b4c8992151f => 209
	i64 5244375036463807528, ; 184: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 26
	i64 5262971552273843408, ; 185: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 129
	i64 5278787618751394462, ; 186: System.Net.WebClient.dll => 0x4942055efc68329e => 77
	i64 5280980186044710147, ; 187: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 263
	i64 5290786973231294105, ; 188: System.Runtime.Loader => 0x496ca6b869b72699 => 110
	i64 5376510917114486089, ; 189: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 289
	i64 5408338804355907810, ; 190: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 287
	i64 5423376490970181369, ; 191: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 107
	i64 5440320908473006344, ; 192: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 3
	i64 5446034149219586269, ; 193: System.Diagnostics.Debug => 0x4b94333452e150dd => 27
	i64 5451019430259338467, ; 194: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 242
	i64 5457765010617926378, ; 195: System.Xml.Serialization => 0x4bbde05c557002ea => 158
	i64 5471532531798518949, ; 196: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 333
	i64 5507995362134886206, ; 197: System.Core.dll => 0x4c705499688c873e => 22
	i64 5522859530602327440, ; 198: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 336
	i64 5527431512186326818, ; 199: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 50
	i64 5570799893513421663, ; 200: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 44
	i64 5573260873512690141, ; 201: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 127
	i64 5574231584441077149, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 232
	i64 5591791169662171124, ; 203: System.Linq.Parallel => 0x4d9a087135e137f4 => 60
	i64 5650097808083101034, ; 204: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 120
	i64 5692067934154308417, ; 205: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 292
	i64 5724799082821825042, ; 206: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 255
	i64 5741990095351817038, ; 207: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 183
	i64 5757522595884336624, ; 208: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 241
	i64 5783556987928984683, ; 209: Microsoft.VisualBasic => 0x504352701bbc3c6b => 4
	i64 5896680224035167651, ; 210: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 261
	i64 5959344983920014087, ; 211: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 281
	i64 5964285404991333262, ; 212: Telerik.Documents.Core.dll => 0x52c565f9c78e238e => 202
	i64 5979151488806146654, ; 213: System.Formats.Asn1 => 0x52fa3699a489d25e => 39
	i64 5984759512290286505, ; 214: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 125
	i64 6102788177522843259, ; 215: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 281
	i64 6200764641006662125, ; 216: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 330
	i64 6222399776351216807, ; 217: System.Text.Json.dll => 0x565a67a0ffe264a7 => 138
	i64 6251069312384999852, ; 218: System.Transactions.Local => 0x56c0426b870da1ac => 150
	i64 6278736998281604212, ; 219: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 86
	i64 6284145129771520194, ; 220: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 91
	i64 6293646004048624906, ; 221: Telerik.Maui.Controls.Compatibility.dll => 0x575785b20d5ffd0a => 220
	i64 6300676701234028427, ; 222: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 313
	i64 6319713645133255417, ; 223: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 265
	i64 6339806692430442412, ; 224: Telerik.Documents.DrawingML => 0x57fb8498d6f5efac => 203
	i64 6357457916754632952, ; 225: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 341
	i64 6401687960814735282, ; 226: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 262
	i64 6471714727257221498, ; 227: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 314
	i64 6478287442656530074, ; 228: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 318
	i64 6504860066809920875, ; 229: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 237
	i64 6548213210057960872, ; 230: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 248
	i64 6557084851308642443, ; 231: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 293
	i64 6560151584539558821, ; 232: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 187
	i64 6589202984700901502, ; 233: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 298
	i64 6591971792923354531, ; 234: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 263
	i64 6617685658146568858, ; 235: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 134
	i64 6660874382371599727, ; 236: Telerik.Android.Input.dll => 0x5c702df5bec2356f => 217
	i64 6671798237668743565, ; 237: SkiaSharp => 0x5c96fd260152998d => 195
	i64 6713440830605852118, ; 238: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 97
	i64 6739853162153639747, ; 239: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 4
	i64 6743165466166707109, ; 240: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 326
	i64 6772837112740759457, ; 241: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 106
	i64 6786606130239981554, ; 242: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 34
	i64 6798329586179154312, ; 243: System.Windows => 0x5e5884bd523ca188 => 155
	i64 6814185388980153342, ; 244: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 159
	i64 6876862101832370452, ; 245: System.Xml.Linq => 0x5f6f85a57d108914 => 156
	i64 6884668433786926920, ; 246: Telerik.Maui.Core => 0x5f8b4176c836f748 => 222
	i64 6894844156784520562, ; 247: System.Numerics.Vectors => 0x5faf683aead1ad72 => 83
	i64 7011053663211085209, ; 248: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 257
	i64 7060896174307865760, ; 249: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 144
	i64 7083547580668757502, ; 250: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 88
	i64 7101497697220435230, ; 251: System.Configuration => 0x628d9687c0141d1e => 20
	i64 7103753931438454322, ; 252: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 258
	i64 7105430439328552570, ; 253: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 200
	i64 7112547816752919026, ; 254: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 52
	i64 7136185682594785577, ; 255: Telerik.Documents.Flow.FormatProviders.Pdf => 0x6308d311b64a6929 => 207
	i64 7192745174564810625, ; 256: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 227
	i64 7270811800166795866, ; 257: System.Linq => 0x64e71ccf51a90a5a => 62
	i64 7299370801165188114, ; 258: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 55
	i64 7301769407013149520, ; 259: Novera.resources.dll => 0x65551896d8d55b50 => 0
	i64 7314237870106916923, ; 260: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 199
	i64 7316205155833392065, ; 261: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 5
	i64 7338192458477945005, ; 262: System.Reflection => 0x65d67f295d0740ad => 98
	i64 7349431895026339542, ; 263: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 226
	i64 7377312882064240630, ; 264: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 18
	i64 7384551144889700488, ; 265: Telerik.Documents.Fixed.FormatProviders.Image.Skia => 0x667b322428dad088 => 204
	i64 7399759355131470155, ; 266: Telerik.Android.List.dll => 0x66b139ed89fc214b => 218
	i64 7488575175965059935, ; 267: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 156
	i64 7489048572193775167, ; 268: System.ObjectModel => 0x67ee71ff6b419e3f => 85
	i64 7592577537120840276, ; 269: System.Diagnostics.Process => 0x695e410af5b2aa54 => 30
	i64 7637303409920963731, ; 270: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 46
	i64 7654504624184590948, ; 271: System.Net.Http => 0x6a3a4366801b8264 => 65
	i64 7694700312542370399, ; 272: System.Net.Mail => 0x6ac9112a7e2cda5f => 67
	i64 7714652370974252055, ; 273: System.Private.CoreLib => 0x6b0ff375198b9c17 => 173
	i64 7723873813026311384, ; 274: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 197
	i64 7725404731275645577, ; 275: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 266
	i64 7735176074855944702, ; 276: Microsoft.CSharp => 0x6b58dda848e391fe => 2
	i64 7735352534559001595, ; 277: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 301
	i64 7742555799473854801, ; 278: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 321
	i64 7791074099216502080, ; 279: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 48
	i64 7820441508502274321, ; 280: System.Data => 0x6c87ca1e14ff8111 => 25
	i64 7836164640616011524, ; 281: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 234
	i64 7927939710195668715, ; 282: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 196
	i64 7975724199463739455, ; 283: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 332
	i64 8025517457475554965, ; 284: WindowsBase => 0x6f605d9b4786ce95 => 166
	i64 8031450141206250471, ; 285: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 109
	i64 8064050204834738623, ; 286: System.Collections.dll => 0x6fe942efa61731bf => 13
	i64 8083354569033831015, ; 287: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 260
	i64 8085230611270010360, ; 288: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 64
	i64 8087206902342787202, ; 289: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 28
	i64 8103644804370223335, ; 290: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 24
	i64 8108129031893776750, ; 291: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 323
	i64 8113615946733131500, ; 292: System.Reflection.Extensions => 0x70995ab73cf916ec => 94
	i64 8167236081217502503, ; 293: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 169
	i64 8185542183669246576, ; 294: System.Collections => 0x7198e33f4794aa70 => 13
	i64 8187640529827139739, ; 295: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 305
	i64 8246048515196606205, ; 296: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 194
	i64 8264926008854159966, ; 297: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 30
	i64 8290740647658429042, ; 298: System.Runtime.Extensions => 0x730ea0b15c929a72 => 104
	i64 8318905602908530212, ; 299: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 15
	i64 8365124861150488793, ; 300: Telerik.Documents.Core => 0x7416e4bdaaa9e8d9 => 202
	i64 8368701292315763008, ; 301: System.Security.Cryptography => 0x7423997c6fd56140 => 127
	i64 8386351099740279196, ; 302: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 338
	i64 8398329775253868912, ; 303: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 243
	i64 8400357532724379117, ; 304: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 275
	i64 8410671156615598628, ; 305: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 92
	i64 8426919725312979251, ; 306: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 264
	i64 8518412311883997971, ; 307: System.Collections.Immutable => 0x76377add7c28e313 => 10
	i64 8563666267364444763, ; 308: System.Private.Uri => 0x76d841191140ca5b => 87
	i64 8598790081731763592, ; 309: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 254
	i64 8599632406834268464, ; 310: CommunityToolkit.Maui => 0x7758081c784b4930 => 174
	i64 8601935802264776013, ; 311: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 287
	i64 8623059219396073920, ; 312: System.Net.Quic.dll => 0x77ab42ac514299c0 => 72
	i64 8626175481042262068, ; 313: Java.Interop => 0x77b654e585b55834 => 169
	i64 8638972117149407195, ; 314: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 2
	i64 8639588376636138208, ; 315: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 274
	i64 8648495978913578441, ; 316: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 6
	i64 8677882282824630478, ; 317: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 328
	i64 8684531736582871431, ; 318: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 45
	i64 8725526185868997716, ; 319: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 28
	i64 8770615334550455251, ; 320: Telerik.Documents.Flow.FormatProviders.Doc.dll => 0x79b77c2d957943d3 => 206
	i64 8853378295825400934, ; 321: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 302
	i64 8941376889969657626, ; 322: System.Xml.XDocument => 0x7c1626e87187471a => 159
	i64 8951477988056063522, ; 323: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 277
	i64 8954753533646919997, ; 324: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 113
	i64 9045785047181495996, ; 325: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 338
	i64 9138683372487561558, ; 326: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 122
	i64 9312692141327339315, ; 327: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 292
	i64 9324707631942237306, ; 328: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 233
	i64 9344347229943845669, ; 329: Telerik.Documents.Spreadsheet.FormatProviders.Xls => 0x81adca4c12b55325 => 211
	i64 9362451939117115337, ; 330: Telerik.Maui.Controls.dll => 0x81ee1c6f29be27c9 => 221
	i64 9363564275759486853, ; 331: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 312
	i64 9380750071725139124, ; 332: Telerik.Documents.Spreadsheet.FormatProviders.Pdf => 0x822f1e7d27e5a4b4 => 210
	i64 9468215723722196442, ; 333: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 160
	i64 9551379474083066910, ; 334: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 336
	i64 9554839972845591462, ; 335: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 132
	i64 9575902398040817096, ; 336: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 297
	i64 9584643793929893533, ; 337: System.IO.dll => 0x85037ebfbbd7f69d => 58
	i64 9659729154652888475, ; 338: System.Text.RegularExpressions => 0x860e407c9991dd9b => 139
	i64 9662334977499516867, ; 339: System.Numerics.dll => 0x8617827802b0cfc3 => 84
	i64 9667360217193089419, ; 340: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 31
	i64 9678050649315576968, ; 341: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 244
	i64 9702891218465930390, ; 342: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 11
	i64 9773637193738963987, ; 343: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 308
	i64 9780093022148426479, ; 344: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 294
	i64 9808709177481450983, ; 345: Mono.Android.dll => 0x881f890734e555e7 => 172
	i64 9825649861376906464, ; 346: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 241
	i64 9834056768316610435, ; 347: System.Transactions.dll => 0x8879968718899783 => 151
	i64 9836529246295212050, ; 348: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 95
	i64 9907349773706910547, ; 349: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 254
	i64 9933555792566666578, ; 350: System.Linq.Queryable.dll => 0x89db145cf475c552 => 61
	i64 9956195530459977388, ; 351: Microsoft.Maui => 0x8a2b8315b36616ac => 192
	i64 9974604633896246661, ; 352: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 158
	i64 10017511394021241210, ; 353: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 186
	i64 10038780035334861115, ; 354: System.Net.Http.dll => 0x8b50e941206af13b => 65
	i64 10051358222726253779, ; 355: System.Private.Xml => 0x8b7d990c97ccccd3 => 89
	i64 10078727084704864206, ; 356: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 80
	i64 10089571585547156312, ; 357: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 48
	i64 10092835686693276772, ; 358: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 190
	i64 10105485790837105934, ; 359: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 144
	i64 10143853363526200146, ; 360: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 310
	i64 10209869394718195525, ; 361: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 326
	i64 10226222362177979215, ; 362: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 303
	i64 10229024438826829339, ; 363: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 248
	i64 10236703004850800690, ; 364: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 75
	i64 10245369515835430794, ; 365: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 92
	i64 10321854143672141184, ; 366: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 300
	i64 10360651442923773544, ; 367: System.Text.Encoding => 0x8fc86d98211c1e68 => 136
	i64 10364469296367737616, ; 368: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 91
	i64 10376576884623852283, ; 369: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 286
	i64 10406448008575299332, ; 370: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 306
	i64 10430153318873392755, ; 371: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 245
	i64 10506226065143327199, ; 372: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 308
	i64 10546663366131771576, ; 373: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 113
	i64 10566960649245365243, ; 374: System.Globalization.dll => 0x92a562b96dcd13fb => 43
	i64 10595762989148858956, ; 375: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 160
	i64 10670374202010151210, ; 376: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 5
	i64 10714184849103829812, ; 377: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 104
	i64 10726309646227589800, ; 378: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll => 0x94db81caf63dcaa8 => 210
	i64 10761706286639228993, ; 379: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 340
	i64 10785150219063592792, ; 380: System.Net.Primitives => 0x95ac8cfb68830758 => 71
	i64 10822644899632537592, ; 381: System.Linq.Queryable => 0x9631c23204ca5ff8 => 61
	i64 10830817578243619689, ; 382: System.Formats.Tar => 0x964ecb340a447b69 => 40
	i64 10836702154884303777, ; 383: Telerik.Android.Common => 0x9663b331ce96cba1 => 215
	i64 10847732767863316357, ; 384: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 235
	i64 10880838204485145808, ; 385: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 174
	i64 10899834349646441345, ; 386: System.Web => 0x9743fd975946eb81 => 154
	i64 10943875058216066601, ; 387: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 57
	i64 10964653383833615866, ; 388: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 35
	i64 11002576679268595294, ; 389: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 185
	i64 11009005086950030778, ; 390: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 192
	i64 11019817191295005410, ; 391: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 232
	i64 11023048688141570732, ; 392: System.Core => 0x98f9bc61168392ac => 22
	i64 11037814507248023548, ; 393: System.Xml => 0x992e31d0412bf7fc => 164
	i64 11071824625609515081, ; 394: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 298
	i64 11103970607964515343, ; 395: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 319
	i64 11136029745144976707, ; 396: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 296
	i64 11156122287428000958, ; 397: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 334
	i64 11157797727133427779, ; 398: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 315
	i64 11162124722117608902, ; 399: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 291
	i64 11188319605227840848, ; 400: System.Threading.Overlapped => 0x9b44e5671724e550 => 141
	i64 11220793807500858938, ; 401: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 322
	i64 11226290749488709958, ; 402: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 187
	i64 11235648312900863002, ; 403: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 90
	i64 11287285751767514268, ; 404: Telerik.Documents.DrawingML.dll => 0x9ca47e96b06e3c9c => 203
	i64 11329751333533450475, ; 405: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 148
	i64 11340910727871153756, ; 406: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 247
	i64 11347436699239206956, ; 407: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 163
	i64 11392833485892708388, ; 408: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 276
	i64 11432101114902388181, ; 409: System.AppContext => 0x9ea6fb64e61a9dd5 => 7
	i64 11446671985764974897, ; 410: Mono.Android.Export => 0x9edabf8623efc131 => 170
	i64 11448276831755070604, ; 411: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 32
	i64 11485890710487134646, ; 412: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 108
	i64 11501770418187005580, ; 413: Telerik.Documents.Flow.dll => 0x9f9e7f41a021ee8c => 208
	i64 11508496261504176197, ; 414: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 257
	i64 11518296021396496455, ; 415: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 320
	i64 11520491446140113101, ; 416: Telerik.Documents.CMapUtils => 0x9fe101ee9d1b90cd => 201
	i64 11529969570048099689, ; 417: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 291
	i64 11530571088791430846, ; 418: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 184
	i64 11580057168383206117, ; 419: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 230
	i64 11591352189662810718, ; 420: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 284
	i64 11597940890313164233, ; 421: netstandard => 0xa0f429ca8d1805c9 => 168
	i64 11672361001936329215, ; 422: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 258
	i64 11692977985522001935, ; 423: System.Threading.Overlapped.dll => 0xa245cd869980680f => 141
	i64 11707554492040141440, ; 424: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 60
	i64 11743665907891708234, ; 425: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 145
	i64 11855031688536399763, ; 426: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 337
	i64 11991047634523762324, ; 427: System.Net => 0xa668c24ad493ae94 => 82
	i64 12004812399771082834, ; 428: Telerik.Maui.Controls.Compatibility => 0xa699a945fb8f6052 => 220
	i64 12040886584167504988, ; 429: System.Net.ServicePoint => 0xa719d28d8e121c5c => 75
	i64 12063623837170009990, ; 430: System.Security => 0xa76a99f6ce740786 => 131
	i64 12096697103934194533, ; 431: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 26
	i64 12102847907131387746, ; 432: System.Buffers => 0xa7f5f40c43256f62 => 8
	i64 12123043025855404482, ; 433: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 94
	i64 12137774235383566651, ; 434: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 288
	i64 12145679461940342714, ; 435: System.Text.Json => 0xa88e1f1ebcb62fba => 138
	i64 12191646537372739477, ; 436: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 224
	i64 12201331334810686224, ; 437: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 114
	i64 12269460666702402136, ; 438: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 10
	i64 12310909314810916455, ; 439: Microsoft.Extensions.Localization.dll => 0xaad922cbbb5a2e67 => 182
	i64 12332222936682028543, ; 440: System.Runtime.Handles => 0xab24db6c07db5dff => 105
	i64 12341818387765915815, ; 441: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 175
	i64 12375446203996702057, ; 442: System.Configuration.dll => 0xabbe6ac12e2e0569 => 20
	i64 12451044538927396471, ; 443: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 256
	i64 12466513435562512481, ; 444: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 270
	i64 12475113361194491050, ; 445: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 341
	i64 12487638416075308985, ; 446: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 250
	i64 12517810545449516888, ; 447: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 34
	i64 12538491095302438457, ; 448: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 238
	i64 12550732019250633519, ; 449: System.IO.Compression => 0xae2d28465e8e1b2f => 47
	i64 12699904666978134734, ; 450: Telerik.Documents.Spreadsheet => 0xb03f2001f48eaace => 212
	i64 12699999919562409296, ; 451: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 31
	i64 12700543734426720211, ; 452: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 239
	i64 12708238894395270091, ; 453: System.IO => 0xb05cbbf17d3ba3cb => 58
	i64 12708922737231849740, ; 454: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 135
	i64 12717050818822477433, ; 455: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 115
	i64 12753841065332862057, ; 456: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 293
	i64 12828192437253469131, ; 457: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 304
	i64 12835242264250840079, ; 458: System.IO.Pipes => 0xb21ff0d5d6c0740f => 56
	i64 12843321153144804894, ; 459: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 460: System.AppContext.dll => 0xb23e3d357debf39d => 7
	i64 12859557719246324186, ; 461: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 78
	i64 12982280885948128408, ; 462: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 249
	i64 12989346753972519995, ; 463: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 307
	i64 13005833372463390146, ; 464: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 328
	i64 13068258254871114833, ; 465: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 112
	i64 13129914918964716986, ; 466: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 253
	i64 13173818576982874404, ; 467: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 103
	i64 13343850469010654401, ; 468: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 171
	i64 13370592475155966277, ; 469: System.Runtime.Serialization => 0xb98de304062ea945 => 116
	i64 13381594904270902445, ; 470: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 316
	i64 13401370062847626945, ; 471: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 288
	i64 13404347523447273790, ; 472: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 243
	i64 13431476299110033919, ; 473: System.Net.WebClient => 0xba663087f18829ff => 77
	i64 13454009404024712428, ; 474: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 299
	i64 13463706743370286408, ; 475: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 86
	i64 13465488254036897740, ; 476: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 301
	i64 13491513212026656886, ; 477: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 236
	i64 13540124433173649601, ; 478: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 337
	i64 13572454107664307259, ; 479: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 278
	i64 13578472628727169633, ; 480: System.Xml.XPath => 0xbc706ce9fba5c261 => 161
	i64 13580399111273692417, ; 481: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 3
	i64 13621154251410165619, ; 482: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 249
	i64 13647894001087880694, ; 483: System.Data.dll => 0xbd670f48cb071df6 => 25
	i64 13675589307506966157, ; 484: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 229
	i64 13681443392888828423, ; 485: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll => 0xbdde404747c0f207 => 209
	i64 13702626353344114072, ; 486: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 33
	i64 13710614125866346983, ; 487: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 118
	i64 13713329104121190199, ; 488: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 38
	i64 13717397318615465333, ; 489: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 17
	i64 13768883594457632599, ; 490: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 53
	i64 13828521679616088467, ; 491: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 302
	i64 13881769479078963060, ; 492: System.Console.dll => 0xc0a5f3cade5c6774 => 21
	i64 13911222732217019342, ; 493: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 124
	i64 13926059544445948811, ; 494: Telerik.Android.Data.dll => 0xc1434d5f4ba3938b => 216
	i64 13928444506500929300, ; 495: System.Windows.dll => 0xc14bc67b8bba9714 => 155
	i64 13959074834287824816, ; 496: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 256
	i64 14075334701871371868, ; 497: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 132
	i64 14124974489674258913, ; 498: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 238
	i64 14125464355221830302, ; 499: System.Threading.dll => 0xc407bafdbc707a9e => 149
	i64 14178052285788134900, ; 500: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 225
	i64 14212104595480609394, ; 501: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 121
	i64 14220608275227875801, ; 502: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 29
	i64 14226382999226559092, ; 503: System.ServiceProcess => 0xc56e43f6938e2a74 => 133
	i64 14232023429000439693, ; 504: System.Resources.Writer.dll => 0xc5824de7789ba78d => 101
	i64 14254574811015963973, ; 505: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 135
	i64 14261073672896646636, ; 506: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 276
	i64 14298246716367104064, ; 507: System.Web.dll => 0xc66d93a217f4e840 => 154
	i64 14327695147300244862, ; 508: System.Reflection.dll => 0xc6d632d338eb4d7e => 98
	i64 14327709162229390963, ; 509: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 126
	i64 14331727281556788554, ; 510: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 226
	i64 14346402571976470310, ; 511: System.Net.Ping.dll => 0xc718a920f3686f26 => 70
	i64 14349907877893689639, ; 512: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 330
	i64 14365648620315232603, ; 513: Telerik.Documents.Fixed => 0xc75d094ec5f8495b => 205
	i64 14461014870687870182, ; 514: System.Net.Requests.dll => 0xc8afd8683afdece6 => 73
	i64 14464374589798375073, ; 515: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 331
	i64 14486659737292545672, ; 516: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 261
	i64 14491877563792607819, ; 517: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 339
	i64 14495724990987328804, ; 518: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 279
	i64 14551742072151931844, ; 519: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 137
	i64 14552901170081803662, ; 520: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 199
	i64 14556034074661724008, ; 521: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 175
	i64 14561513370130550166, ; 522: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 125
	i64 14574160591280636898, ; 523: System.Net.Quic => 0xca41d1d72ec783e2 => 72
	i64 14610046442689856844, ; 524: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 309
	i64 14622043554576106986, ; 525: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 112
	i64 14644440854989303794, ; 526: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 271
	i64 14669215534098758659, ; 527: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 180
	i64 14690985099581930927, ; 528: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 153
	i64 14705122255218365489, ; 529: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 323
	i64 14735017007120366644, ; 530: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 322
	i64 14744092281598614090, ; 531: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 339
	i64 14792063746108907174, ; 532: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 299
	i64 14832630590065248058, ; 533: System.Security.Claims => 0xcdd816ef5d6e873a => 119
	i64 14846885518376783421, ; 534: Telerik.Documents.SpreadsheetStreaming => 0xce0abbb77fbd4e3d => 213
	i64 14852515768018889994, ; 535: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 247
	i64 14889905118082851278, ; 536: GoogleGson.dll => 0xcea391d0969961ce => 177
	i64 14904040806490515477, ; 537: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 307
	i64 14912225920358050525, ; 538: System.Security.Principal.Windows => 0xcef2de7759506add => 128
	i64 14935719434541007538, ; 539: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 134
	i64 14954917835170835695, ; 540: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 181
	i64 14984936317414011727, ; 541: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 78
	i64 14987728460634540364, ; 542: System.IO.Compression.dll => 0xcfff1ba06622494c => 47
	i64 14988210264188246988, ; 543: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 250
	i64 15015154896917945444, ; 544: System.Net.Security.dll => 0xd0608bd33642dc64 => 74
	i64 15024878362326791334, ; 545: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 64
	i64 15071021337266399595, ; 546: System.Resources.Reader.dll => 0xd127060e7a18a96b => 99
	i64 15076659072870671916, ; 547: System.ObjectModel.dll => 0xd13b0d8c1620662c => 85
	i64 15111608613780139878, ; 548: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 324
	i64 15115185479366240210, ; 549: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 44
	i64 15133485256822086103, ; 550: System.Linq.dll => 0xd204f0a9127dd9d7 => 62
	i64 15150743910298169673, ; 551: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 277
	i64 15203009853192377507, ; 552: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 329
	i64 15227001540531775957, ; 553: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 179
	i64 15234786388537674379, ; 554: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 38
	i64 15250465174479574862, ; 555: System.Globalization.Calendars.dll => 0xd3a489469852174e => 41
	i64 15272359115529052076, ; 556: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 240
	i64 15279429628684179188, ; 557: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 305
	i64 15279945280394896426, ; 558: Telerik.Zip => 0xd40d4546a158242a => 223
	i64 15299439993936780255, ; 559: System.Xml.XPath.dll => 0xd452879d55019bdf => 161
	i64 15338463749992804988, ; 560: System.Resources.Reader => 0xd4dd2b839286f27c => 99
	i64 15370028218478381000, ; 561: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 183
	i64 15370334346939861994, ; 562: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 245
	i64 15391712275433856905, ; 563: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 181
	i64 15526743539506359484, ; 564: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 136
	i64 15527772828719725935, ; 565: System.Console => 0xd77dbb1e38cd3d6f => 21
	i64 15530465045505749832, ; 566: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 66
	i64 15536481058354060254, ; 567: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 311
	i64 15541854775306130054, ; 568: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 126
	i64 15557562860424774966, ; 569: System.Net.Sockets => 0xd7e790fe7a6dc536 => 76
	i64 15582737692548360875, ; 570: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 269
	i64 15609085926864131306, ; 571: System.dll => 0xd89e9cf3334914ea => 165
	i64 15661133872274321916, ; 572: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 157
	i64 15710114879900314733, ; 573: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 6
	i64 15735700225633954557, ; 574: Microsoft.Extensions.Localization => 0xda606ffbe0f22afd => 182
	i64 15755368083429170162, ; 575: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 50
	i64 15777549416145007739, ; 576: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 283
	i64 15783653065526199428, ; 577: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 312
	i64 15817206913877585035, ; 578: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 145
	i64 15847085070278954535, ; 579: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 140
	i64 15885744048853936810, ; 580: System.Resources.Writer => 0xdc75800bd0b6eaaa => 101
	i64 15928521404965645318, ; 581: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 189
	i64 15934062614519587357, ; 582: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 124
	i64 15937190497610202713, ; 583: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 121
	i64 15963349826457351533, ; 584: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 143
	i64 15971679995444160383, ; 585: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 40
	i64 16018552496348375205, ; 586: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 69
	i64 16054465462676478687, ; 587: System.Globalization.Extensions => 0xdecceb47319bdadf => 42
	i64 16056281320585338352, ; 588: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 331
	i64 16154507427712707110, ; 589: System => 0xe03056ea4e39aa26 => 165
	i64 16219561732052121626, ; 590: System.Net.Security => 0xe1177575db7c781a => 74
	i64 16221492710126381338, ; 591: Novera.resources => 0xe11e51acb9abe91a => 0
	i64 16228073745853882457, ; 592: Telerik.Documents.Fixed.dll => 0xe135b3178276a059 => 205
	i64 16236984353984608938, ; 593: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll => 0xe1555b3e22d3faaa => 204
	i64 16288847719894691167, ; 594: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 325
	i64 16315482530584035869, ; 595: WindowsBase.dll => 0xe26c3ceb1e8d821d => 166
	i64 16321164108206115771, ; 596: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 185
	i64 16324796876805858114, ; 597: SkiaSharp.dll => 0xe28d5444586b6342 => 195
	i64 16337011941688632206, ; 598: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 128
	i64 16361933716545543812, ; 599: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 255
	i64 16423015068819898779, ; 600: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 304
	i64 16454459195343277943, ; 601: System.Net.NetworkInformation => 0xe459fb756d988f77 => 69
	i64 16496768397145114574, ; 602: Mono.Android.Export.dll => 0xe4f04b741db987ce => 170
	i64 16523066248396519716, ; 603: Telerik.Maui.Core.dll => 0xe54db935bfebb924 => 222
	i64 16589693266713801121, ; 604: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 268
	i64 16601460575841364625, ; 605: Telerik.Documents.Flow.FormatProviders.Pdf.dll => 0xe6643c6f77ad2a91 => 207
	i64 16621146507174665210, ; 606: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 242
	i64 16648892297579399389, ; 607: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 176
	i64 16649148416072044166, ; 608: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 194
	i64 16677317093839702854, ; 609: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 275
	i64 16692042661323983851, ; 610: Telerik.Android.Primitives.dll => 0xe7a60c5cbbe1cbeb => 219
	i64 16702652415771857902, ; 611: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 152
	i64 16709499819875633724, ; 612: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 46
	i64 16737807731308835127, ; 613: System.Runtime.Intrinsics => 0xe848a3736f733137 => 109
	i64 16758309481308491337, ; 614: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 49
	i64 16762783179241323229, ; 615: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 97
	i64 16765015072123548030, ; 616: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 32
	i64 16803648858859583026, ; 617: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 324
	i64 16822611501064131242, ; 618: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 24
	i64 16833383113903931215, ; 619: mscorlib => 0xe99c30c1484d7f4f => 167
	i64 16856067890322379635, ; 620: System.Data.Common.dll => 0xe9ecc87060889373 => 23
	i64 16890310621557459193, ; 621: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 139
	i64 16933958494752847024, ; 622: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 79
	i64 16942731696432749159, ; 623: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 332
	i64 16977952268158210142, ; 624: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 55
	i64 16989020923549080504, ; 625: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 268
	i64 16998075588627545693, ; 626: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 273
	i64 17008137082415910100, ; 627: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 11
	i64 17024911836938395553, ; 628: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 231
	i64 17031351772568316411, ; 629: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 272
	i64 17037200463775726619, ; 630: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 259
	i64 17062143951396181894, ; 631: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 17
	i64 17118171214553292978, ; 632: System.Threading.Channels => 0xed8ff6060fc420b2 => 140
	i64 17187273293601214786, ; 633: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 14
	i64 17201328579425343169, ; 634: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 16
	i64 17202182880784296190, ; 635: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 123
	i64 17203614576212522419, ; 636: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 327
	i64 17230721278011714856, ; 637: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 88
	i64 17234219099804750107, ; 638: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 150
	i64 17260702271250283638, ; 639: System.Data.Common => 0xef8a5543bba6bc76 => 23
	i64 17310278548634113468, ; 640: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 317
	i64 17333249706306540043, ; 641: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 35
	i64 17338386382517543202, ; 642: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 80
	i64 17342750010158924305, ; 643: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 317
	i64 17360349973592121190, ; 644: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 297
	i64 17461841247173295664, ; 645: Telerik.Android.Primitives => 0xf254ec18f6073e30 => 219
	i64 17470386307322966175, ; 646: System.Threading.Timer => 0xf27347c8d0d5709f => 148
	i64 17509662556995089465, ; 647: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 81
	i64 17514990004910432069, ; 648: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 315
	i64 17522591619082469157, ; 649: GoogleGson => 0xf32cc03d27a5bf25 => 177
	i64 17590473451926037903, ; 650: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 224
	i64 17623389608345532001, ; 651: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 327
	i64 17627500474728259406, ; 652: System.Globalization => 0xf4a176498a351f4e => 43
	i64 17670106313739811877, ; 653: Telerik.Maui.Controls => 0xf538d41275d93c25 => 221
	i64 17671790519499593115, ; 654: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 196
	i64 17685921127322830888, ; 655: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 27
	i64 17704177640604968747, ; 656: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 270
	i64 17710060891934109755, ; 657: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 267
	i64 17712670374920797664, ; 658: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 108
	i64 17777860260071588075, ; 659: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 111
	i64 17827813215687577648, ; 660: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 318
	i64 17838668724098252521, ; 661: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 8
	i64 17891337867145587222, ; 662: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 300
	i64 17928294245072900555, ; 663: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 45
	i64 17942426894774770628, ; 664: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 311
	i64 17992315986609351877, ; 665: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 162
	i64 18025913125965088385, ; 666: System.Threading => 0xfa28e87b91334681 => 149
	i64 18116111925905154859, ; 667: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 236
	i64 18121036031235206392, ; 668: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 272
	i64 18132221390331549284, ; 669: SkiaSharp.Views.Maui.Controls.Compatibility => 0xfba297492f739664 => 198
	i64 18146411883821974900, ; 670: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 39
	i64 18146811631844267958, ; 671: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 16
	i64 18203743254473369877, ; 672: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 200
	i64 18225059387460068507, ; 673: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 147
	i64 18245806341561545090, ; 674: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 9
	i64 18260797123374478311, ; 675: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 253
	i64 18305135509493619199, ; 676: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 274
	i64 18318849532986632368, ; 677: System.Security.dll => 0xfe39a097c37fa8b0 => 131
	i64 18324163916253801303, ; 678: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 321
	i64 18342408478508122430, ; 679: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 320
	i64 18358161419737137786, ; 680: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 316
	i64 18380184030268848184, ; 681: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 290
	i64 18437521474829576124, ; 682: Telerik.Documents.Flow.FormatProviders.Doc => 0xffdf3c185dda67bc => 206
	i64 18439108438687598470 ; 683: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 95
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [684 x i32] [
	i32 252, ; 0
	i32 188, ; 1
	i32 172, ; 2
	i32 193, ; 3
	i32 59, ; 4
	i32 239, ; 5
	i32 152, ; 6
	i32 280, ; 7
	i32 283, ; 8
	i32 1, ; 9
	i32 246, ; 10
	i32 133, ; 11
	i32 57, ; 12
	i32 282, ; 13
	i32 96, ; 14
	i32 265, ; 15
	i32 130, ; 16
	i32 146, ; 17
	i32 240, ; 18
	i32 19, ; 19
	i32 319, ; 20
	i32 251, ; 21
	i32 266, ; 22
	i32 151, ; 23
	i32 105, ; 24
	i32 96, ; 25
	i32 295, ; 26
	i32 37, ; 27
	i32 29, ; 28
	i32 235, ; 29
	i32 273, ; 30
	i32 51, ; 31
	i32 116, ; 32
	i32 216, ; 33
	i32 71, ; 34
	i32 1, ; 35
	i32 190, ; 36
	i32 66, ; 37
	i32 171, ; 38
	i32 146, ; 39
	i32 294, ; 40
	i32 234, ; 41
	i32 269, ; 42
	i32 259, ; 43
	i32 41, ; 44
	i32 90, ; 45
	i32 82, ; 46
	i32 67, ; 47
	i32 63, ; 48
	i32 208, ; 49
	i32 87, ; 50
	i32 233, ; 51
	i32 107, ; 52
	i32 313, ; 53
	i32 280, ; 54
	i32 103, ; 55
	i32 36, ; 56
	i32 230, ; 57
	i32 335, ; 58
	i32 282, ; 59
	i32 191, ; 60
	i32 176, ; 61
	i32 120, ; 62
	i32 267, ; 63
	i32 211, ; 64
	i32 143, ; 65
	i32 142, ; 66
	i32 303, ; 67
	i32 54, ; 68
	i32 36, ; 69
	i32 142, ; 70
	i32 227, ; 71
	i32 237, ; 72
	i32 186, ; 73
	i32 214, ; 74
	i32 251, ; 75
	i32 9, ; 76
	i32 15, ; 77
	i32 279, ; 78
	i32 52, ; 79
	i32 262, ; 80
	i32 137, ; 81
	i32 102, ; 82
	i32 244, ; 83
	i32 289, ; 84
	i32 117, ; 85
	i32 228, ; 86
	i32 214, ; 87
	i32 164, ; 88
	i32 334, ; 89
	i32 167, ; 90
	i32 68, ; 91
	i32 180, ; 92
	i32 309, ; 93
	i32 81, ; 94
	i32 215, ; 95
	i32 102, ; 96
	i32 284, ; 97
	i32 118, ; 98
	i32 314, ; 99
	i32 296, ; 100
	i32 79, ; 101
	i32 295, ; 102
	i32 115, ; 103
	i32 122, ; 104
	i32 49, ; 105
	i32 213, ; 106
	i32 198, ; 107
	i32 129, ; 108
	i32 260, ; 109
	i32 231, ; 110
	i32 83, ; 111
	i32 111, ; 112
	i32 76, ; 113
	i32 306, ; 114
	i32 197, ; 115
	i32 193, ; 116
	i32 54, ; 117
	i32 286, ; 118
	i32 178, ; 119
	i32 70, ; 120
	i32 285, ; 121
	i32 84, ; 122
	i32 173, ; 123
	i32 329, ; 124
	i32 117, ; 125
	i32 179, ; 126
	i32 157, ; 127
	i32 178, ; 128
	i32 225, ; 129
	i32 168, ; 130
	i32 278, ; 131
	i32 252, ; 132
	i32 184, ; 133
	i32 33, ; 134
	i32 191, ; 135
	i32 217, ; 136
	i32 123, ; 137
	i32 73, ; 138
	i32 63, ; 139
	i32 162, ; 140
	i32 114, ; 141
	i32 310, ; 142
	i32 89, ; 143
	i32 189, ; 144
	i32 340, ; 145
	i32 106, ; 146
	i32 19, ; 147
	i32 147, ; 148
	i32 119, ; 149
	i32 59, ; 150
	i32 246, ; 151
	i32 18, ; 152
	i32 53, ; 153
	i32 212, ; 154
	i32 93, ; 155
	i32 335, ; 156
	i32 56, ; 157
	i32 218, ; 158
	i32 130, ; 159
	i32 201, ; 160
	i32 153, ; 161
	i32 42, ; 162
	i32 93, ; 163
	i32 290, ; 164
	i32 51, ; 165
	i32 163, ; 166
	i32 14, ; 167
	i32 264, ; 168
	i32 228, ; 169
	i32 285, ; 170
	i32 37, ; 171
	i32 68, ; 172
	i32 110, ; 173
	i32 325, ; 174
	i32 223, ; 175
	i32 333, ; 176
	i32 229, ; 177
	i32 100, ; 178
	i32 100, ; 179
	i32 12, ; 180
	i32 12, ; 181
	i32 271, ; 182
	i32 209, ; 183
	i32 26, ; 184
	i32 129, ; 185
	i32 77, ; 186
	i32 263, ; 187
	i32 110, ; 188
	i32 289, ; 189
	i32 287, ; 190
	i32 107, ; 191
	i32 3, ; 192
	i32 27, ; 193
	i32 242, ; 194
	i32 158, ; 195
	i32 333, ; 196
	i32 22, ; 197
	i32 336, ; 198
	i32 50, ; 199
	i32 44, ; 200
	i32 127, ; 201
	i32 232, ; 202
	i32 60, ; 203
	i32 120, ; 204
	i32 292, ; 205
	i32 255, ; 206
	i32 183, ; 207
	i32 241, ; 208
	i32 4, ; 209
	i32 261, ; 210
	i32 281, ; 211
	i32 202, ; 212
	i32 39, ; 213
	i32 125, ; 214
	i32 281, ; 215
	i32 330, ; 216
	i32 138, ; 217
	i32 150, ; 218
	i32 86, ; 219
	i32 91, ; 220
	i32 220, ; 221
	i32 313, ; 222
	i32 265, ; 223
	i32 203, ; 224
	i32 341, ; 225
	i32 262, ; 226
	i32 314, ; 227
	i32 318, ; 228
	i32 237, ; 229
	i32 248, ; 230
	i32 293, ; 231
	i32 187, ; 232
	i32 298, ; 233
	i32 263, ; 234
	i32 134, ; 235
	i32 217, ; 236
	i32 195, ; 237
	i32 97, ; 238
	i32 4, ; 239
	i32 326, ; 240
	i32 106, ; 241
	i32 34, ; 242
	i32 155, ; 243
	i32 159, ; 244
	i32 156, ; 245
	i32 222, ; 246
	i32 83, ; 247
	i32 257, ; 248
	i32 144, ; 249
	i32 88, ; 250
	i32 20, ; 251
	i32 258, ; 252
	i32 200, ; 253
	i32 52, ; 254
	i32 207, ; 255
	i32 227, ; 256
	i32 62, ; 257
	i32 55, ; 258
	i32 0, ; 259
	i32 199, ; 260
	i32 5, ; 261
	i32 98, ; 262
	i32 226, ; 263
	i32 18, ; 264
	i32 204, ; 265
	i32 218, ; 266
	i32 156, ; 267
	i32 85, ; 268
	i32 30, ; 269
	i32 46, ; 270
	i32 65, ; 271
	i32 67, ; 272
	i32 173, ; 273
	i32 197, ; 274
	i32 266, ; 275
	i32 2, ; 276
	i32 301, ; 277
	i32 321, ; 278
	i32 48, ; 279
	i32 25, ; 280
	i32 234, ; 281
	i32 196, ; 282
	i32 332, ; 283
	i32 166, ; 284
	i32 109, ; 285
	i32 13, ; 286
	i32 260, ; 287
	i32 64, ; 288
	i32 28, ; 289
	i32 24, ; 290
	i32 323, ; 291
	i32 94, ; 292
	i32 169, ; 293
	i32 13, ; 294
	i32 305, ; 295
	i32 194, ; 296
	i32 30, ; 297
	i32 104, ; 298
	i32 15, ; 299
	i32 202, ; 300
	i32 127, ; 301
	i32 338, ; 302
	i32 243, ; 303
	i32 275, ; 304
	i32 92, ; 305
	i32 264, ; 306
	i32 10, ; 307
	i32 87, ; 308
	i32 254, ; 309
	i32 174, ; 310
	i32 287, ; 311
	i32 72, ; 312
	i32 169, ; 313
	i32 2, ; 314
	i32 274, ; 315
	i32 6, ; 316
	i32 328, ; 317
	i32 45, ; 318
	i32 28, ; 319
	i32 206, ; 320
	i32 302, ; 321
	i32 159, ; 322
	i32 277, ; 323
	i32 113, ; 324
	i32 338, ; 325
	i32 122, ; 326
	i32 292, ; 327
	i32 233, ; 328
	i32 211, ; 329
	i32 221, ; 330
	i32 312, ; 331
	i32 210, ; 332
	i32 160, ; 333
	i32 336, ; 334
	i32 132, ; 335
	i32 297, ; 336
	i32 58, ; 337
	i32 139, ; 338
	i32 84, ; 339
	i32 31, ; 340
	i32 244, ; 341
	i32 11, ; 342
	i32 308, ; 343
	i32 294, ; 344
	i32 172, ; 345
	i32 241, ; 346
	i32 151, ; 347
	i32 95, ; 348
	i32 254, ; 349
	i32 61, ; 350
	i32 192, ; 351
	i32 158, ; 352
	i32 186, ; 353
	i32 65, ; 354
	i32 89, ; 355
	i32 80, ; 356
	i32 48, ; 357
	i32 190, ; 358
	i32 144, ; 359
	i32 310, ; 360
	i32 326, ; 361
	i32 303, ; 362
	i32 248, ; 363
	i32 75, ; 364
	i32 92, ; 365
	i32 300, ; 366
	i32 136, ; 367
	i32 91, ; 368
	i32 286, ; 369
	i32 306, ; 370
	i32 245, ; 371
	i32 308, ; 372
	i32 113, ; 373
	i32 43, ; 374
	i32 160, ; 375
	i32 5, ; 376
	i32 104, ; 377
	i32 210, ; 378
	i32 340, ; 379
	i32 71, ; 380
	i32 61, ; 381
	i32 40, ; 382
	i32 215, ; 383
	i32 235, ; 384
	i32 174, ; 385
	i32 154, ; 386
	i32 57, ; 387
	i32 35, ; 388
	i32 185, ; 389
	i32 192, ; 390
	i32 232, ; 391
	i32 22, ; 392
	i32 164, ; 393
	i32 298, ; 394
	i32 319, ; 395
	i32 296, ; 396
	i32 334, ; 397
	i32 315, ; 398
	i32 291, ; 399
	i32 141, ; 400
	i32 322, ; 401
	i32 187, ; 402
	i32 90, ; 403
	i32 203, ; 404
	i32 148, ; 405
	i32 247, ; 406
	i32 163, ; 407
	i32 276, ; 408
	i32 7, ; 409
	i32 170, ; 410
	i32 32, ; 411
	i32 108, ; 412
	i32 208, ; 413
	i32 257, ; 414
	i32 320, ; 415
	i32 201, ; 416
	i32 291, ; 417
	i32 184, ; 418
	i32 230, ; 419
	i32 284, ; 420
	i32 168, ; 421
	i32 258, ; 422
	i32 141, ; 423
	i32 60, ; 424
	i32 145, ; 425
	i32 337, ; 426
	i32 82, ; 427
	i32 220, ; 428
	i32 75, ; 429
	i32 131, ; 430
	i32 26, ; 431
	i32 8, ; 432
	i32 94, ; 433
	i32 288, ; 434
	i32 138, ; 435
	i32 224, ; 436
	i32 114, ; 437
	i32 10, ; 438
	i32 182, ; 439
	i32 105, ; 440
	i32 175, ; 441
	i32 20, ; 442
	i32 256, ; 443
	i32 270, ; 444
	i32 341, ; 445
	i32 250, ; 446
	i32 34, ; 447
	i32 238, ; 448
	i32 47, ; 449
	i32 212, ; 450
	i32 31, ; 451
	i32 239, ; 452
	i32 58, ; 453
	i32 135, ; 454
	i32 115, ; 455
	i32 293, ; 456
	i32 304, ; 457
	i32 56, ; 458
	i32 188, ; 459
	i32 7, ; 460
	i32 78, ; 461
	i32 249, ; 462
	i32 307, ; 463
	i32 328, ; 464
	i32 112, ; 465
	i32 253, ; 466
	i32 103, ; 467
	i32 171, ; 468
	i32 116, ; 469
	i32 316, ; 470
	i32 288, ; 471
	i32 243, ; 472
	i32 77, ; 473
	i32 299, ; 474
	i32 86, ; 475
	i32 301, ; 476
	i32 236, ; 477
	i32 337, ; 478
	i32 278, ; 479
	i32 161, ; 480
	i32 3, ; 481
	i32 249, ; 482
	i32 25, ; 483
	i32 229, ; 484
	i32 209, ; 485
	i32 33, ; 486
	i32 118, ; 487
	i32 38, ; 488
	i32 17, ; 489
	i32 53, ; 490
	i32 302, ; 491
	i32 21, ; 492
	i32 124, ; 493
	i32 216, ; 494
	i32 155, ; 495
	i32 256, ; 496
	i32 132, ; 497
	i32 238, ; 498
	i32 149, ; 499
	i32 225, ; 500
	i32 121, ; 501
	i32 29, ; 502
	i32 133, ; 503
	i32 101, ; 504
	i32 135, ; 505
	i32 276, ; 506
	i32 154, ; 507
	i32 98, ; 508
	i32 126, ; 509
	i32 226, ; 510
	i32 70, ; 511
	i32 330, ; 512
	i32 205, ; 513
	i32 73, ; 514
	i32 331, ; 515
	i32 261, ; 516
	i32 339, ; 517
	i32 279, ; 518
	i32 137, ; 519
	i32 199, ; 520
	i32 175, ; 521
	i32 125, ; 522
	i32 72, ; 523
	i32 309, ; 524
	i32 112, ; 525
	i32 271, ; 526
	i32 180, ; 527
	i32 153, ; 528
	i32 323, ; 529
	i32 322, ; 530
	i32 339, ; 531
	i32 299, ; 532
	i32 119, ; 533
	i32 213, ; 534
	i32 247, ; 535
	i32 177, ; 536
	i32 307, ; 537
	i32 128, ; 538
	i32 134, ; 539
	i32 181, ; 540
	i32 78, ; 541
	i32 47, ; 542
	i32 250, ; 543
	i32 74, ; 544
	i32 64, ; 545
	i32 99, ; 546
	i32 85, ; 547
	i32 324, ; 548
	i32 44, ; 549
	i32 62, ; 550
	i32 277, ; 551
	i32 329, ; 552
	i32 179, ; 553
	i32 38, ; 554
	i32 41, ; 555
	i32 240, ; 556
	i32 305, ; 557
	i32 223, ; 558
	i32 161, ; 559
	i32 99, ; 560
	i32 183, ; 561
	i32 245, ; 562
	i32 181, ; 563
	i32 136, ; 564
	i32 21, ; 565
	i32 66, ; 566
	i32 311, ; 567
	i32 126, ; 568
	i32 76, ; 569
	i32 269, ; 570
	i32 165, ; 571
	i32 157, ; 572
	i32 6, ; 573
	i32 182, ; 574
	i32 50, ; 575
	i32 283, ; 576
	i32 312, ; 577
	i32 145, ; 578
	i32 140, ; 579
	i32 101, ; 580
	i32 189, ; 581
	i32 124, ; 582
	i32 121, ; 583
	i32 143, ; 584
	i32 40, ; 585
	i32 69, ; 586
	i32 42, ; 587
	i32 331, ; 588
	i32 165, ; 589
	i32 74, ; 590
	i32 0, ; 591
	i32 205, ; 592
	i32 204, ; 593
	i32 325, ; 594
	i32 166, ; 595
	i32 185, ; 596
	i32 195, ; 597
	i32 128, ; 598
	i32 255, ; 599
	i32 304, ; 600
	i32 69, ; 601
	i32 170, ; 602
	i32 222, ; 603
	i32 268, ; 604
	i32 207, ; 605
	i32 242, ; 606
	i32 176, ; 607
	i32 194, ; 608
	i32 275, ; 609
	i32 219, ; 610
	i32 152, ; 611
	i32 46, ; 612
	i32 109, ; 613
	i32 49, ; 614
	i32 97, ; 615
	i32 32, ; 616
	i32 324, ; 617
	i32 24, ; 618
	i32 167, ; 619
	i32 23, ; 620
	i32 139, ; 621
	i32 79, ; 622
	i32 332, ; 623
	i32 55, ; 624
	i32 268, ; 625
	i32 273, ; 626
	i32 11, ; 627
	i32 231, ; 628
	i32 272, ; 629
	i32 259, ; 630
	i32 17, ; 631
	i32 140, ; 632
	i32 14, ; 633
	i32 16, ; 634
	i32 123, ; 635
	i32 327, ; 636
	i32 88, ; 637
	i32 150, ; 638
	i32 23, ; 639
	i32 317, ; 640
	i32 35, ; 641
	i32 80, ; 642
	i32 317, ; 643
	i32 297, ; 644
	i32 219, ; 645
	i32 148, ; 646
	i32 81, ; 647
	i32 315, ; 648
	i32 177, ; 649
	i32 224, ; 650
	i32 327, ; 651
	i32 43, ; 652
	i32 221, ; 653
	i32 196, ; 654
	i32 27, ; 655
	i32 270, ; 656
	i32 267, ; 657
	i32 108, ; 658
	i32 111, ; 659
	i32 318, ; 660
	i32 8, ; 661
	i32 300, ; 662
	i32 45, ; 663
	i32 311, ; 664
	i32 162, ; 665
	i32 149, ; 666
	i32 236, ; 667
	i32 272, ; 668
	i32 198, ; 669
	i32 39, ; 670
	i32 16, ; 671
	i32 200, ; 672
	i32 147, ; 673
	i32 9, ; 674
	i32 253, ; 675
	i32 274, ; 676
	i32 131, ; 677
	i32 321, ; 678
	i32 320, ; 679
	i32 316, ; 680
	i32 290, ; 681
	i32 206, ; 682
	i32 95 ; 683
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
