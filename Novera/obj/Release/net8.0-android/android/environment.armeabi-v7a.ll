; ModuleID = 'environment.armeabi-v7a.ll'
source_filename = "environment.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.ApplicationConfig = type {
	i8, ; bool uses_mono_llvm
	i8, ; bool uses_mono_aot
	i8, ; bool aot_lazy_load
	i8, ; bool uses_assembly_preload
	i8, ; bool broken_exception_transitions
	i8, ; bool instant_run_enabled
	i8, ; bool jni_add_native_method_registration_attribute_present
	i8, ; bool have_runtime_config_blob
	i8, ; bool have_assemblies_blob
	i8, ; bool marshal_methods_enabled
	i8, ; uint8_t bound_stream_io_exception_type
	i32, ; uint32_t package_naming_policy
	i32, ; uint32_t environment_variable_count
	i32, ; uint32_t system_property_count
	i32, ; uint32_t number_of_assemblies_in_apk
	i32, ; uint32_t bundled_assembly_name_width
	i32, ; uint32_t number_of_assembly_store_files
	i32, ; uint32_t number_of_dso_cache_entries
	i32, ; uint32_t android_runtime_jnienv_class_token
	i32, ; uint32_t jnienv_initialize_method_token
	i32, ; uint32_t jnienv_registerjninatives_method_token
	i32, ; uint32_t jni_remapping_replacement_type_count
	i32, ; uint32_t jni_remapping_replacement_method_index_entry_count
	i32, ; uint32_t mono_components_mask
	ptr ; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	i32, ; uint32_t debug_data_offset
	i32, ; uint32_t debug_data_size
	i32, ; uint32_t config_data_offset
	i32 ; uint32_t config_data_size
}

%struct.AssemblyStoreRuntimeData = type {
	ptr, ; uint8_t data_start
	i32, ; uint32_t assembly_count
	ptr ; AssemblyStoreAssemblyDescriptor assemblies
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	ptr, ; uint8_t image_data
	ptr, ; uint8_t debug_info_data
	ptr, ; uint8_t config_data
	ptr ; AssemblyStoreAssemblyDescriptor descriptor
}

%struct.DSOCacheEntry = type {
	i64, ; uint64_t hash
	i8, ; bool ignore
	ptr, ; char* name
	ptr ; void* handle
}

%struct.XamarinAndroidBundledAssembly = type {
	i32, ; int32_t apk_fd
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	ptr, ; uint8_t data
	i32, ; uint32_t name_length
	ptr ; char* name
}

; 0x15e6972616d58
@format_tag = dso_local local_unnamed_addr constant i64 385281960275288, align 8

@mono_aot_mode_name = dso_local local_unnamed_addr constant ptr @.str.0, align 4

; Application environment variables array, name:value
@app_environment_variables = dso_local local_unnamed_addr constant [8 x ptr] [
	ptr @.env.0, ; 0
	ptr @.env.1, ; 1
	ptr @.env.2, ; 2
	ptr @.env.3, ; 3
	ptr @.env.4, ; 4
	ptr @.env.5, ; 5
	ptr @.env.6, ; 6
	ptr @.env.7 ; 7
], align 4

; System properties defined by the application
@app_system_properties = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@application_config = dso_local local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; bool uses_mono_llvm
	i8 1, ; bool uses_mono_aot
	i8 1, ; bool aot_lazy_load
	i8 0, ; bool uses_assembly_preload
	i8 0, ; bool broken_exception_transitions
	i8 0, ; bool instant_run_enabled
	i8 0, ; bool jni_add_native_method_registration_attribute_present
	i8 1, ; bool have_runtime_config_blob
	i8 1, ; bool have_assemblies_blob
	i8 0, ; bool marshal_methods_enabled
	i8 0, ; uint8_t bound_stream_io_exception_type (0x0)
	i32 3, ; uint32_t package_naming_policy (0x3)
	i32 8, ; uint32_t environment_variable_count (0x8)
	i32 0, ; uint32_t system_property_count (0x0)
	i32 175, ; uint32_t number_of_assemblies_in_apk (0xaf)
	i32 0, ; uint32_t bundled_assembly_name_width (0x0)
	i32 2, ; uint32_t number_of_assembly_store_files (0x2)
	i32 874, ; uint32_t number_of_dso_cache_entries (0x36a)
	i32 33555267, ; uint32_t android_runtime_jnienv_class_token (0x2000343)
	i32 100672392, ; uint32_t jnienv_initialize_method_token (0x6002388)
	i32 100672391, ; uint32_t jnienv_registerjninatives_method_token (0x6002387)
	i32 0, ; uint32_t jni_remapping_replacement_type_count (0x0)
	i32 0, ; uint32_t jni_remapping_replacement_method_index_entry_count (0x0)
	i32 0, ; uint32_t mono_components_mask (0x0)
	ptr @.ApplicationConfig.0_android_package_name; char* android_package_name
}, align 4

; DSO cache entries
@dso_cache = dso_local local_unnamed_addr global [874 x %struct.DSOCacheEntry] [
	%struct.DSOCacheEntry {
		i64 2598410, ; hash 0x27a60a, from name: aot-Telerik.Documents.SpreadsheetStreaming
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 0
	%struct.DSOCacheEntry {
		i64 8289632, ; hash 0x7e7d60, from name: aot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1
	%struct.DSOCacheEntry {
		i64 9857046, ; hash 0x966816, from name: libaot-CommunityToolkit.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 2
	%struct.DSOCacheEntry {
		i64 16828988, ; hash 0x100ca3c, from name: libaot-Telerik.Android.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 3
	%struct.DSOCacheEntry {
		i64 20489825, ; hash 0x138a661, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 4
	%struct.DSOCacheEntry {
		i64 29424343, ; hash 0x1c0fad7, from name: libaot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 5
	%struct.DSOCacheEntry {
		i64 36746888, ; hash 0x230b688, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 6
	%struct.DSOCacheEntry {
		i64 42639949, ; hash 0x28aa24d, from name: System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 7
	%struct.DSOCacheEntry {
		i64 43338150, ; hash 0x29549a6, from name: aot-Telerik.Android.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 8
	%struct.DSOCacheEntry {
		i64 56327589, ; hash 0x35b7da5, from name: System.ComponentModel.EventBasedAsync.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 9
	%struct.DSOCacheEntry {
		i64 56604468, ; hash 0x35fb734, from name: libaot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 10
	%struct.DSOCacheEntry {
		i64 62269959, ; hash 0x3b62a07, from name: libaot-Telerik.Android.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 11
	%struct.DSOCacheEntry {
		i64 62384850, ; hash 0x3b7ead2, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 12
	%struct.DSOCacheEntry {
		i64 68258583, ; hash 0x4118b17, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 13
	%struct.DSOCacheEntry {
		i64 75018296, ; hash 0x478b038, from name: libaot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 14
	%struct.DSOCacheEntry {
		i64 94620481, ; hash 0x5a3cb41, from name: aot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 15
	%struct.DSOCacheEntry {
		i64 103263224, ; hash 0x627abf8, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 16
	%struct.DSOCacheEntry {
		i64 116541649, ; hash 0x6f248d1, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 17
	%struct.DSOCacheEntry {
		i64 117323195, ; hash 0x6fe35bb, from name: aot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 18
	%struct.DSOCacheEntry {
		i64 117431740, ; hash 0x6ffddbc, from name: System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 19
	%struct.DSOCacheEntry {
		i64 132747680, ; hash 0x7e991a0, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 20
	%struct.DSOCacheEntry {
		i64 142721839, ; hash 0x881c32f, from name: System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 21
	%struct.DSOCacheEntry {
		i64 153552311, ; hash 0x92705b7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 22
	%struct.DSOCacheEntry {
		i64 154543565, ; hash 0x93625cd, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 23
	%struct.DSOCacheEntry {
		i64 155166714, ; hash 0x93fa7fa, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 24
	%struct.DSOCacheEntry {
		i64 159306688, ; hash 0x97ed3c0, from name: System.ComponentModel.Annotations
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 25
	%struct.DSOCacheEntry {
		i64 160724438, ; hash 0x99475d6, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 26
	%struct.DSOCacheEntry {
		i64 165120050, ; hash 0x9d78832, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 27
	%struct.DSOCacheEntry {
		i64 176815410, ; hash 0xa89fd32, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 28
	%struct.DSOCacheEntry {
		i64 195166226, ; hash 0xba20012, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 29
	%struct.DSOCacheEntry {
		i64 197501317, ; hash 0xbc5a185, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 30
	%struct.DSOCacheEntry {
		i64 200694997, ; hash 0xbf65cd5, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 31
	%struct.DSOCacheEntry {
		i64 205061960, ; hash 0xc38ff48, from name: System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 32
	%struct.DSOCacheEntry {
		i64 206071461, ; hash 0xc4866a5, from name: aot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 33
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 34
	%struct.DSOCacheEntry {
		i64 230178189, ; hash 0xdb83d8d, from name: aot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 35
	%struct.DSOCacheEntry {
		i64 231913179, ; hash 0xdd2b6db, from name: libaot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 36
	%struct.DSOCacheEntry {
		i64 233797645, ; hash 0xdef780d, from name: Telerik.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 37
	%struct.DSOCacheEntry {
		i64 234893954, ; hash 0xe003282, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 38
	%struct.DSOCacheEntry {
		i64 241552641, ; hash 0xe65cd01, from name: libaot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 39
	%struct.DSOCacheEntry {
		i64 246901797, ; hash 0xeb76c25, from name: Telerik.Documents.Flow.FormatProviders.Doc
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 40
	%struct.DSOCacheEntry {
		i64 246921316, ; hash 0xeb7b864, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 41
	%struct.DSOCacheEntry {
		i64 247378437, ; hash 0xebeb205, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 42
	%struct.DSOCacheEntry {
		i64 248274483, ; hash 0xecc5e33, from name: libaot-Telerik.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 43
	%struct.DSOCacheEntry {
		i64 250136632, ; hash 0xee8c838, from name: Telerik.Documents.Fixed.FormatProviders.Image.Skia
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 44
	%struct.DSOCacheEntry {
		i64 254718238, ; hash 0xf2eb11e, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 45
	%struct.DSOCacheEntry {
		i64 256418729, ; hash 0xf48a3a9, from name: Novera
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 46
	%struct.DSOCacheEntry {
		i64 257906758, ; hash 0xf5f5846, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 47
	%struct.DSOCacheEntry {
		i64 258230989, ; hash 0xf644acd, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 48
	%struct.DSOCacheEntry {
		i64 270150149, ; hash 0x101a2a05, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 49
	%struct.DSOCacheEntry {
		i64 274845747, ; hash 0x1061d033, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 50
	%struct.DSOCacheEntry {
		i64 278310601, ; hash 0x1096aec9, from name: Telerik.Android.Input
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 51
	%struct.DSOCacheEntry {
		i64 278844578, ; hash 0x109ed4a2, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 52
	%struct.DSOCacheEntry {
		i64 282800165, ; hash 0x10db3025, from name: System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 53
	%struct.DSOCacheEntry {
		i64 291348661, ; hash 0x115da0b5, from name: aot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 54
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 55
	%struct.DSOCacheEntry {
		i64 298174602, ; hash 0x11c5c88a, from name: aot-Telerik.Android.List.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 56
	%struct.DSOCacheEntry {
		i64 310239907, ; hash 0x127de2a3, from name: SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 57
	%struct.DSOCacheEntry {
		i64 315333590, ; hash 0x12cb9bd6, from name: aot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 58
	%struct.DSOCacheEntry {
		i64 319734269, ; hash 0x130ec1fd, from name: libaot-System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 59
	%struct.DSOCacheEntry {
		i64 321003452, ; hash 0x13221fbc, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 60
	%struct.DSOCacheEntry {
		i64 323716037, ; hash 0x134b83c5, from name: libaot-System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 61
	%struct.DSOCacheEntry {
		i64 334172448, ; hash 0x13eb1120, from name: aot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 62
	%struct.DSOCacheEntry {
		i64 337425530, ; hash 0x141cb47a, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 63
	%struct.DSOCacheEntry {
		i64 341082126, ; hash 0x1454800e, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 64
	%struct.DSOCacheEntry {
		i64 342366114, ; hash 0x146817a2, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 65
	%struct.DSOCacheEntry {
		i64 349605155, ; hash 0x14d68d23, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 66
	%struct.DSOCacheEntry {
		i64 357937157, ; hash 0x1555b005, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 67
	%struct.DSOCacheEntry {
		i64 359463689, ; hash 0x156cfb09, from name: libaot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 68
	%struct.DSOCacheEntry {
		i64 367117185, ; hash 0x15e1c381, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 69
	%struct.DSOCacheEntry {
		i64 369872811, ; hash 0x160bcfab, from name: System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 70
	%struct.DSOCacheEntry {
		i64 373418536, ; hash 0x1641ea28, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 71
	%struct.DSOCacheEntry {
		i64 390538561, ; hash 0x17472541, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 72
	%struct.DSOCacheEntry {
		i64 391888984, ; hash 0x175bc058, from name: mono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 73
	%struct.DSOCacheEntry {
		i64 395744057, ; hash 0x17969339, from name: _Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 74
	%struct.DSOCacheEntry {
		i64 400507790, ; hash 0x17df438e, from name: aot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 75
	%struct.DSOCacheEntry {
		i64 407227773, ; hash 0x1845cd7d, from name: System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 76
	%struct.DSOCacheEntry {
		i64 426289886, ; hash 0x1968aade, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 77
	%struct.DSOCacheEntry {
		i64 426763054, ; hash 0x196fe32e, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 78
	%struct.DSOCacheEntry {
		i64 428806289, ; hash 0x198f1091, from name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 79
	%struct.DSOCacheEntry {
		i64 442565967, ; hash 0x1a61054f, from name: System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 80
	%struct.DSOCacheEntry {
		i64 451696200, ; hash 0x1aec5648, from name: libaot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 81
	%struct.DSOCacheEntry {
		i64 459786305, ; hash 0x1b67c841, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 82
	%struct.DSOCacheEntry {
		i64 463154707, ; hash 0x1b9b2e13, from name: aot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 83
	%struct.DSOCacheEntry {
		i64 467362390, ; hash 0x1bdb6256, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 84
	%struct.DSOCacheEntry {
		i64 467725327, ; hash 0x1be0ec0f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 85
	%struct.DSOCacheEntry {
		i64 468077253, ; hash 0x1be64ac5, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 86
	%struct.DSOCacheEntry {
		i64 481548157, ; hash 0x1cb3d77d, from name: libaot-SkiaSharp.Views.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 87
	%struct.DSOCacheEntry {
		i64 490025168, ; hash 0x1d3530d0, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 88
	%struct.DSOCacheEntry {
		i64 492719914, ; hash 0x1d5e4f2a, from name: aot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 89
	%struct.DSOCacheEntry {
		i64 497222055, ; hash 0x1da301a7, from name: libaot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 90
	%struct.DSOCacheEntry {
		i64 498788369, ; hash 0x1dbae811, from name: System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 91
	%struct.DSOCacheEntry {
		i64 500153091, ; hash 0x1dcfbb03, from name: Telerik.Android.Chart
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 92
	%struct.DSOCacheEntry {
		i64 500609955, ; hash 0x1dd6b3a3, from name: System.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 93
	%struct.DSOCacheEntry {
		i64 521683614, ; hash 0x1f18429e, from name: aot-Telerik.Zip
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 94
	%struct.DSOCacheEntry {
		i64 539058512, ; hash 0x20216150, from name: Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 95
	%struct.DSOCacheEntry {
		i64 540199569, ; hash 0x2032ca91, from name: Telerik.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 96
	%struct.DSOCacheEntry {
		i64 542686644, ; hash 0x2058bdb4, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 97
	%struct.DSOCacheEntry {
		i64 543811501, ; hash 0x2069e7ad, from name: CommunityToolkit.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 98
	%struct.DSOCacheEntry {
		i64 553863972, ; hash 0x21034b24, from name: aot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 99
	%struct.DSOCacheEntry {
		i64 554840301, ; hash 0x211230ed, from name: aot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 100
	%struct.DSOCacheEntry {
		i64 563700166, ; hash 0x219961c6, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 101
	%struct.DSOCacheEntry {
		i64 567308075, ; hash 0x21d06f2b, from name: aot-Telerik.Android.Chart
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 102
	%struct.DSOCacheEntry {
		i64 578054144, ; hash 0x22746800, from name: aot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 103
	%struct.DSOCacheEntry {
		i64 578095993, ; hash 0x22750b79, from name: Telerik.Android.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 104
	%struct.DSOCacheEntry {
		i64 580362983, ; hash 0x2297a2e7, from name: Telerik.Documents.Spreadsheet.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 105
	%struct.DSOCacheEntry {
		i64 584906687, ; hash 0x22dcf7bf, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 106
	%struct.DSOCacheEntry {
		i64 584914887, ; hash 0x22dd17c7, from name: aot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 107
	%struct.DSOCacheEntry {
		i64 588324302, ; hash 0x23111dce, from name: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 108
	%struct.DSOCacheEntry {
		i64 589614471, ; hash 0x2324cd87, from name: libaot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 109
	%struct.DSOCacheEntry {
		i64 595217260, ; hash 0x237a4b6c, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 110
	%struct.DSOCacheEntry {
		i64 597488923, ; hash 0x239cf51b, from name: CommunityToolkit.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 111
	%struct.DSOCacheEntry {
		i64 599950454, ; hash 0x23c28476, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 112
	%struct.DSOCacheEntry {
		i64 602566721, ; hash 0x23ea7041, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 113
	%struct.DSOCacheEntry {
		i64 613407657, ; hash 0x248fdba9, from name: aot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 114
	%struct.DSOCacheEntry {
		i64 619290284, ; hash 0x24e99eac, from name: Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 115
	%struct.DSOCacheEntry {
		i64 622561209, ; hash 0x251b87b9, from name: aot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 116
	%struct.DSOCacheEntry {
		i64 627609679, ; hash 0x2568904f, from name: Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 117
	%struct.DSOCacheEntry {
		i64 629828598, ; hash 0x258a6bf6, from name: Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 118
	%struct.DSOCacheEntry {
		i64 640731770, ; hash 0x2630ca7a, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 119
	%struct.DSOCacheEntry {
		i64 641339015, ; hash 0x263a0e87, from name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 120
	%struct.DSOCacheEntry {
		i64 641360513, ; hash 0x263a6281, from name: aot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 121
	%struct.DSOCacheEntry {
		i64 644399814, ; hash 0x2668c2c6, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 122
	%struct.DSOCacheEntry {
		i64 645288582, ; hash 0x26765286, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 123
	%struct.DSOCacheEntry {
		i64 653179915, ; hash 0x26eebc0b, from name: Telerik.Zip.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 124
	%struct.DSOCacheEntry {
		i64 657767393, ; hash 0x2734bbe1, from name: aot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 125
	%struct.DSOCacheEntry {
		i64 660366738, ; hash 0x275c6592, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 126
	%struct.DSOCacheEntry {
		i64 672442732, ; hash 0x2814a96c, from name: System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 127
	%struct.DSOCacheEntry {
		i64 674191088, ; hash 0x282f56f0, from name: aot-Xamarin.Google.Crypto.Tink.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 128
	%struct.DSOCacheEntry {
		i64 675916518, ; hash 0x2849aae6, from name: System.Net.Mail.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 129
	%struct.DSOCacheEntry {
		i64 675936804, ; hash 0x2849fa24, from name: System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 130
	%struct.DSOCacheEntry {
		i64 676159250, ; hash 0x284d5f12, from name: aot-Telerik.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 131
	%struct.DSOCacheEntry {
		i64 676732119, ; hash 0x28561cd7, from name: libaot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 132
	%struct.DSOCacheEntry {
		i64 679655364, ; hash 0x2882b7c4, from name: aot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 133
	%struct.DSOCacheEntry {
		i64 683518922, ; hash 0x28bdabca, from name: System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 134
	%struct.DSOCacheEntry {
		i64 687776088, ; hash 0x28fea158, from name: libaot-Telerik.Android.Chart.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 135
	%struct.DSOCacheEntry {
		i64 701782426, ; hash 0x29d4599a, from name: libaot-Telerik.Android.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 136
	%struct.DSOCacheEntry {
		i64 705390751, ; hash 0x2a0b689f, from name: aot-Telerik.Documents.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 137
	%struct.DSOCacheEntry {
		i64 713144928, ; hash 0x2a81ba60, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 138
	%struct.DSOCacheEntry {
		i64 716907915, ; hash 0x2abb258b, from name: libaot-SkiaSharp.Views.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 139
	%struct.DSOCacheEntry {
		i64 724168210, ; hash 0x2b29ee12, from name: aot-System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 140
	%struct.DSOCacheEntry {
		i64 738081746, ; hash 0x2bfe3bd2, from name: libaot-Telerik.Android.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 141
	%struct.DSOCacheEntry {
		i64 738487011, ; hash 0x2c046ae3, from name: aot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 142
	%struct.DSOCacheEntry {
		i64 740429482, ; hash 0x2c220eaa, from name: aot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 143
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 144
	%struct.DSOCacheEntry {
		i64 759156225, ; hash 0x2d3fce01, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 145
	%struct.DSOCacheEntry {
		i64 759454413, ; hash 0x2d445acd, from name: System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 146
	%struct.DSOCacheEntry {
		i64 761332650, ; hash 0x2d6103aa, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 147
	%struct.DSOCacheEntry {
		i64 771447594, ; hash 0x2dfb5b2a, from name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 148
	%struct.DSOCacheEntry {
		i64 772696399, ; hash 0x2e0e694f, from name: aot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 149
	%struct.DSOCacheEntry {
		i64 775507847, ; hash 0x2e394f87, from name: System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 150
	%struct.DSOCacheEntry {
		i64 782594815, ; hash 0x2ea572ff, from name: SkiaSharp.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 151
	%struct.DSOCacheEntry {
		i64 789074706, ; hash 0x2f085312, from name: aot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 152
	%struct.DSOCacheEntry {
		i64 789151979, ; hash 0x2f0980eb, from name: Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 153
	%struct.DSOCacheEntry {
		i64 797938066, ; hash 0x2f8f9192, from name: System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 154
	%struct.DSOCacheEntry {
		i64 802286629, ; hash 0x2fd1ec25, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 155
	%struct.DSOCacheEntry {
		i64 804715423, ; hash 0x2ff6fb9f, from name: System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 156
	%struct.DSOCacheEntry {
		i64 811095842, ; hash 0x30585722, from name: aot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 157
	%struct.DSOCacheEntry {
		i64 822718149, ; hash 0x3109aec5, from name: aot-Telerik.Documents.DrawingML.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 158
	%struct.DSOCacheEntry {
		i64 825453070, ; hash 0x31336a0e, from name: aot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 159
	%struct.DSOCacheEntry {
		i64 826035354, ; hash 0x313c4c9a, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 160
	%struct.DSOCacheEntry {
		i64 830298997, ; hash 0x317d5b75, from name: System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 161
	%struct.DSOCacheEntry {
		i64 837478634, ; hash 0x31eae8ea, from name: libaot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 162
	%struct.DSOCacheEntry {
		i64 838232158, ; hash 0x31f6685e, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 163
	%struct.DSOCacheEntry {
		i64 845614355, ; hash 0x32670d13, from name: aot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 164
	%struct.DSOCacheEntry {
		i64 846646212, ; hash 0x3276cbc4, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 165
	%struct.DSOCacheEntry {
		i64 847242641, ; hash 0x327fe591, from name: libaot-CommunityToolkit.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 166
	%struct.DSOCacheEntry {
		i64 850113928, ; hash 0x32abb588, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 167
	%struct.DSOCacheEntry {
		i64 855910803, ; hash 0x33042993, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 168
	%struct.DSOCacheEntry {
		i64 862126818, ; hash 0x336302e2, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 169
	%struct.DSOCacheEntry {
		i64 866894703, ; hash 0x33abc36f, from name: System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 170
	%struct.DSOCacheEntry {
		i64 869473018, ; hash 0x33d31afa, from name: aot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 171
	%struct.DSOCacheEntry {
		i64 870587408, ; hash 0x33e41c10, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 172
	%struct.DSOCacheEntry {
		i64 874318146, ; hash 0x341d0942, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 173
	%struct.DSOCacheEntry {
		i64 876853269, ; hash 0x3443b815, from name: libaot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 174
	%struct.DSOCacheEntry {
		i64 880254817, ; hash 0x34779f61, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 175
	%struct.DSOCacheEntry {
		i64 881313881, ; hash 0x3487c859, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 176
	%struct.DSOCacheEntry {
		i64 881630661, ; hash 0x348c9dc5, from name: aot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 177
	%struct.DSOCacheEntry {
		i64 884884248, ; hash 0x34be4318, from name: aot-Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 178
	%struct.DSOCacheEntry {
		i64 885184054, ; hash 0x34c2d636, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 179
	%struct.DSOCacheEntry {
		i64 899702261, ; hash 0x35a05df5, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 180
	%struct.DSOCacheEntry {
		i64 907714710, ; hash 0x361aa096, from name: libaot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 181
	%struct.DSOCacheEntry {
		i64 924403869, ; hash 0x3719489d, from name: aot-Telerik.Documents.Fixed
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 182
	%struct.DSOCacheEntry {
		i64 929955844, ; hash 0x376e0004, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 183
	%struct.DSOCacheEntry {
		i64 940742254, ; hash 0x3812966e, from name: libaot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 184
	%struct.DSOCacheEntry {
		i64 950134675, ; hash 0x38a1e793, from name: libaot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 185
	%struct.DSOCacheEntry {
		i64 956022431, ; hash 0x38fbbe9f, from name: aot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 186
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 187
	%struct.DSOCacheEntry {
		i64 966729478, ; hash 0x399f1f06, from name: Xamarin.Google.Crypto.Tink.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 188
	%struct.DSOCacheEntry {
		i64 970896636, ; hash 0x39deb4fc, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 189
	%struct.DSOCacheEntry {
		i64 971085789, ; hash 0x39e197dd, from name: libaot-Telerik.Zip
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 190
	%struct.DSOCacheEntry {
		i64 984345159, ; hash 0x3aabea47, from name: Telerik.Zip
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 191
	%struct.DSOCacheEntry {
		i64 991024368, ; hash 0x3b11d4f0, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 192
	%struct.DSOCacheEntry {
		i64 991370235, ; hash 0x3b171bfb, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 193
	%struct.DSOCacheEntry {
		i64 992066656, ; hash 0x3b21bc60, from name: Telerik.Android.Input.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 194
	%struct.DSOCacheEntry {
		i64 999807200, ; hash 0x3b97d8e0, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 195
	%struct.DSOCacheEntry {
		i64 1000172987, ; hash 0x3b9d6dbb, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 196
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 197
	%struct.DSOCacheEntry {
		i64 1014632550, ; hash 0x3c7a1066, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 198
	%struct.DSOCacheEntry {
		i64 1019214401, ; hash 0x3cbffa41, from name: System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 199
	%struct.DSOCacheEntry {
		i64 1020599761, ; hash 0x3cd51dd1, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 200
	%struct.DSOCacheEntry {
		i64 1021628303, ; hash 0x3ce4cf8f, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 201
	%struct.DSOCacheEntry {
		i64 1027261693, ; hash 0x3d3ac4fd, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 202
	%struct.DSOCacheEntry {
		i64 1028951442, ; hash 0x3d548d92, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 203
	%struct.DSOCacheEntry {
		i64 1035644815, ; hash 0x3dbaaf8f, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 204
	%struct.DSOCacheEntry {
		i64 1039941999, ; hash 0x3dfc416f, from name: libaot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 205
	%struct.DSOCacheEntry {
		i64 1045652830, ; hash 0x3e53655e, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 206
	%struct.DSOCacheEntry {
		i64 1064597976, ; hash 0x3f7479d8, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 207
	%struct.DSOCacheEntry {
		i64 1074670799, ; hash 0x400e2ccf, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 208
	%struct.DSOCacheEntry {
		i64 1076071578, ; hash 0x40238c9a, from name: libaot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 209
	%struct.DSOCacheEntry {
		i64 1079503280, ; hash 0x4057e9b0, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 210
	%struct.DSOCacheEntry {
		i64 1082857460, ; hash 0x408b17f4, from name: System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 211
	%struct.DSOCacheEntry {
		i64 1084122840, ; hash 0x409e66d8, from name: Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 212
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 213
	%struct.DSOCacheEntry {
		i64 1107211101, ; hash 0x41feb35d, from name: aot-Novera
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 214
	%struct.DSOCacheEntry {
		i64 1107286201, ; hash 0x41ffd8b9, from name: libaot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 215
	%struct.DSOCacheEntry {
		i64 1121069432, ; hash 0x42d22978, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 216
	%struct.DSOCacheEntry {
		i64 1136326207, ; hash 0x43baf63f, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 217
	%struct.DSOCacheEntry {
		i64 1144657884, ; hash 0x443a17dc, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 218
	%struct.DSOCacheEntry {
		i64 1158083819, ; hash 0x4506f4eb, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 219
	%struct.DSOCacheEntry {
		i64 1162145747, ; hash 0x4544efd3, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 220
	%struct.DSOCacheEntry {
		i64 1163002600, ; hash 0x455202e8, from name: libaot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 221
	%struct.DSOCacheEntry {
		i64 1166279424, ; hash 0x45840300, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 222
	%struct.DSOCacheEntry {
		i64 1166903420, ; hash 0x458d887c, from name: System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 223
	%struct.DSOCacheEntry {
		i64 1168283859, ; hash 0x45a298d3, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 224
	%struct.DSOCacheEntry {
		i64 1169748878, ; hash 0x45b8f38e, from name: libaot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 225
	%struct.DSOCacheEntry {
		i64 1180927843, ; hash 0x46638763, from name: Telerik.Documents.SpreadsheetStreaming.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 226
	%struct.DSOCacheEntry {
		i64 1187864381, ; hash 0x46cd5f3d, from name: Telerik.Android.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 227
	%struct.DSOCacheEntry {
		i64 1194435441, ; hash 0x4731a371, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 228
	%struct.DSOCacheEntry {
		i64 1197858586, ; hash 0x4765df1a, from name: libaot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 229
	%struct.DSOCacheEntry {
		i64 1214827643, ; hash 0x4868cc7b, from name: CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 230
	%struct.DSOCacheEntry {
		i64 1217560739, ; hash 0x489280a3, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 231
	%struct.DSOCacheEntry {
		i64 1221399229, ; hash 0x48cd12bd, from name: netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 232
	%struct.DSOCacheEntry {
		i64 1222125446, ; hash 0x48d82786, from name: libaot-Microsoft.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 233
	%struct.DSOCacheEntry {
		i64 1233065700, ; hash 0x497f16e4, from name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 234
	%struct.DSOCacheEntry {
		i64 1248415137, ; hash 0x4a694da1, from name: aot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 235
	%struct.DSOCacheEntry {
		i64 1248505390, ; hash 0x4a6aae2e, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 236
	%struct.DSOCacheEntry {
		i64 1249626734, ; hash 0x4a7bca6e, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 237
	%struct.DSOCacheEntry {
		i64 1251805992, ; hash 0x4a9d0b28, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 238
	%struct.DSOCacheEntry {
		i64 1264007745, ; hash 0x4b573a41, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 239
	%struct.DSOCacheEntry {
		i64 1264963479, ; hash 0x4b65cf97, from name: aot-System.Net.Mail.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 240
	%struct.DSOCacheEntry {
		i64 1268771501, ; hash 0x4b9feaad, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 241
	%struct.DSOCacheEntry {
		i64 1268789972, ; hash 0x4ba032d4, from name: aot-Telerik.Android.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 242
	%struct.DSOCacheEntry {
		i64 1280454680, ; hash 0x4c523018, from name: aot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 243
	%struct.DSOCacheEntry {
		i64 1281955724, ; hash 0x4c69178c, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 244
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 245
	%struct.DSOCacheEntry {
		i64 1303631868, ; hash 0x4db3d7fc, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 246
	%struct.DSOCacheEntry {
		i64 1318013593, ; hash 0x4e8f4a99, from name: aot-System.ComponentModel.EventBasedAsync
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 247
	%struct.DSOCacheEntry {
		i64 1324164729, ; hash 0x4eed2679, from name: System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 248
	%struct.DSOCacheEntry {
		i64 1326422064, ; hash 0x4f0f9830, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 249
	%struct.DSOCacheEntry {
		i64 1330538025, ; hash 0x4f4e6629, from name: libaot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 250
	%struct.DSOCacheEntry {
		i64 1331715804, ; hash 0x4f605edc, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 251
	%struct.DSOCacheEntry {
		i64 1341817829, ; hash 0x4ffa83e5, from name: Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 252
	%struct.DSOCacheEntry {
		i64 1351248141, ; hash 0x508a690d, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 253
	%struct.DSOCacheEntry {
		i64 1356877886, ; hash 0x50e0503e, from name: aot-System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 254
	%struct.DSOCacheEntry {
		i64 1356916091, ; hash 0x50e0e57b, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 255
	%struct.DSOCacheEntry {
		i64 1360868007, ; hash 0x511d32a7, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 256
	%struct.DSOCacheEntry {
		i64 1363166739, ; hash 0x51404613, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 257
	%struct.DSOCacheEntry {
		i64 1364629429, ; hash 0x515697b5, from name: System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 258
	%struct.DSOCacheEntry {
		i64 1369292404, ; hash 0x519dbe74, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 259
	%struct.DSOCacheEntry {
		i64 1369565496, ; hash 0x51a1e938, from name: System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 260
	%struct.DSOCacheEntry {
		i64 1373613485, ; hash 0x51dfadad, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 261
	%struct.DSOCacheEntry {
		i64 1376113003, ; hash 0x5205d16b, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 262
	%struct.DSOCacheEntry {
		i64 1376238345, ; hash 0x5207bb09, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 263
	%struct.DSOCacheEntry {
		i64 1376866003, ; hash 0x52114ed3, from name: Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 264
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 265
	%struct.DSOCacheEntry {
		i64 1383267250, ; hash 0x5272fbb2, from name: aot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 266
	%struct.DSOCacheEntry {
		i64 1386166540, ; hash 0x529f390c, from name: libaot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 267
	%struct.DSOCacheEntry {
		i64 1387503972, ; hash 0x52b3a164, from name: System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 268
	%struct.DSOCacheEntry {
		i64 1388636356, ; hash 0x52c4e8c4, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 269
	%struct.DSOCacheEntry {
		i64 1393725720, ; hash 0x53129118, from name: aot-Telerik.Documents.CMapUtils
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 270
	%struct.DSOCacheEntry {
		i64 1395919151, ; hash 0x5334092f, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 271
	%struct.DSOCacheEntry {
		i64 1396668899, ; hash 0x533f79e3, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 272
	%struct.DSOCacheEntry {
		i64 1398864029, ; hash 0x5360f89d, from name: System.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 273
	%struct.DSOCacheEntry {
		i64 1401968973, ; hash 0x5390594d, from name: System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 274
	%struct.DSOCacheEntry {
		i64 1406073936, ; hash 0x53cefc50, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 275
	%struct.DSOCacheEntry {
		i64 1409736290, ; hash 0x5406de62, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 276
	%struct.DSOCacheEntry {
		i64 1427200648, ; hash 0x55115a88, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 277
	%struct.DSOCacheEntry {
		i64 1443565528, ; hash 0x560b0fd8, from name: aot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 278
	%struct.DSOCacheEntry {
		i64 1450763449, ; hash 0x5678e4b9, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 279
	%struct.DSOCacheEntry {
		i64 1452208284, ; hash 0x568ef09c, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 280
	%struct.DSOCacheEntry {
		i64 1457035958, ; hash 0x56d89ab6, from name: libaot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 281
	%struct.DSOCacheEntry {
		i64 1457202274, ; hash 0x56db2462, from name: aot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 282
	%struct.DSOCacheEntry {
		i64 1469204771, ; hash 0x57924923, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 283
	%struct.DSOCacheEntry {
		i64 1470490898, ; hash 0x57a5e912, from name: Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 284
	%struct.DSOCacheEntry {
		i64 1470766374, ; hash 0x57aa1d26, from name: Telerik.Android.List
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 285
	%struct.DSOCacheEntry {
		i64 1478410651, ; hash 0x581ec19b, from name: libaot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 286
	%struct.DSOCacheEntry {
		i64 1478865992, ; hash 0x5825b448, from name: libmono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 287
	%struct.DSOCacheEntry {
		i64 1479771757, ; hash 0x5833866d, from name: System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 288
	%struct.DSOCacheEntry {
		i64 1480146353, ; hash 0x58393db1, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 289
	%struct.DSOCacheEntry {
		i64 1483886350, ; hash 0x58724f0e, from name: System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 290
	%struct.DSOCacheEntry {
		i64 1485787675, ; hash 0x588f521b, from name: System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 291
	%struct.DSOCacheEntry {
		i64 1488589746, ; hash 0x58ba13b2, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 292
	%struct.DSOCacheEntry {
		i64 1498647657, ; hash 0x59538c69, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 293
	%struct.DSOCacheEntry {
		i64 1503716941, ; hash 0x59a0e64d, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 294
	%struct.DSOCacheEntry {
		i64 1503765866, ; hash 0x59a1a56a, from name: aot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 295
	%struct.DSOCacheEntry {
		i64 1512975453, ; hash 0x5a2e2c5d, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 296
	%struct.DSOCacheEntry {
		i64 1518218766, ; hash 0x5a7e2e0e, from name: libaot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 297
	%struct.DSOCacheEntry {
		i64 1522261449, ; hash 0x5abbddc9, from name: aot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 298
	%struct.DSOCacheEntry {
		i64 1525880992, ; hash 0x5af318a0, from name: aot-System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 299
	%struct.DSOCacheEntry {
		i64 1536876128, ; hash 0x5b9ade60, from name: libSystem.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 300
	%struct.DSOCacheEntry {
		i64 1540666863, ; hash 0x5bd4b5ef, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 301
	%struct.DSOCacheEntry {
		i64 1564715082, ; hash 0x5d43a84a, from name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 302
	%struct.DSOCacheEntry {
		i64 1579885024, ; hash 0x5e2b21e0, from name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 303
	%struct.DSOCacheEntry {
		i64 1581662828, ; hash 0x5e46426c, from name: aot-Telerik.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 304
	%struct.DSOCacheEntry {
		i64 1588531880, ; hash 0x5eaf12a8, from name: libaot-Telerik.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 305
	%struct.DSOCacheEntry {
		i64 1594017295, ; hash 0x5f02c60f, from name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 306
	%struct.DSOCacheEntry {
		i64 1604827217, ; hash 0x5fa7b851, from name: System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 307
	%struct.DSOCacheEntry {
		i64 1623212457, ; hash 0x60c041a9, from name: SkiaSharp.Views.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 308
	%struct.DSOCacheEntry {
		i64 1624863272, ; hash 0x60d97228, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 309
	%struct.DSOCacheEntry {
		i64 1636350590, ; hash 0x6188ba7e, from name: Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 310
	%struct.DSOCacheEntry {
		i64 1636385547, ; hash 0x6189430b, from name: Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 311
	%struct.DSOCacheEntry {
		i64 1636490404, ; hash 0x618adca4, from name: aot-Telerik.Zip.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 312
	%struct.DSOCacheEntry {
		i64 1637436415, ; hash 0x61994bff, from name: aot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 313
	%struct.DSOCacheEntry {
		i64 1639986890, ; hash 0x61c036ca, from name: System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 314
	%struct.DSOCacheEntry {
		i64 1643369834, ; hash 0x61f3d56a, from name: aot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 315
	%struct.DSOCacheEntry {
		i64 1651622786, ; hash 0x6271c382, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 316
	%struct.DSOCacheEntry {
		i64 1657153582, ; hash 0x62c6282e, from name: System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 317
	%struct.DSOCacheEntry {
		i64 1659216208, ; hash 0x62e5a150, from name: libaot-Telerik.Documents.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 318
	%struct.DSOCacheEntry {
		i64 1667994541, ; hash 0x636b93ad, from name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 319
	%struct.DSOCacheEntry {
		i64 1676014415, ; hash 0x63e5f34f, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 320
	%struct.DSOCacheEntry {
		i64 1679769178, ; hash 0x641f3e5a, from name: System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 321
	%struct.DSOCacheEntry {
		i64 1685358301, ; hash 0x647486dd, from name: System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 322
	%struct.DSOCacheEntry {
		i64 1690151296, ; hash 0x64bda980, from name: libaot-Telerik.Android.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 323
	%struct.DSOCacheEntry {
		i64 1695595879, ; hash 0x6510bd67, from name: Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 324
	%struct.DSOCacheEntry {
		i64 1701847939, ; hash 0x65702383, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 325
	%struct.DSOCacheEntry {
		i64 1710334420, ; hash 0x65f1a1d4, from name: Telerik.Documents.CMapUtils.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 326
	%struct.DSOCacheEntry {
		i64 1723608128, ; hash 0x66bc2c40, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 327
	%struct.DSOCacheEntry {
		i64 1741899193, ; hash 0x67d345b9, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 328
	%struct.DSOCacheEntry {
		i64 1743439659, ; hash 0x67eac72b, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 329
	%struct.DSOCacheEntry {
		i64 1746316138, ; hash 0x6816ab6a, from name: Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 330
	%struct.DSOCacheEntry {
		i64 1746885852, ; hash 0x681f5cdc, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 331
	%struct.DSOCacheEntry {
		i64 1756251935, ; hash 0x68ae471f, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 332
	%struct.DSOCacheEntry {
		i64 1757787625, ; hash 0x68c5b5e9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 333
	%struct.DSOCacheEntry {
		i64 1758908073, ; hash 0x68d6cea9, from name: aot-CommunityToolkit.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 334
	%struct.DSOCacheEntry {
		i64 1761572692, ; hash 0x68ff7754, from name: System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 335
	%struct.DSOCacheEntry {
		i64 1762368869, ; hash 0x690b9d65, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 336
	%struct.DSOCacheEntry {
		i64 1766324549, ; hash 0x6947f945, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 337
	%struct.DSOCacheEntry {
		i64 1770409065, ; hash 0x69864c69, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 338
	%struct.DSOCacheEntry {
		i64 1771950098, ; hash 0x699dd012, from name: libaot-CommunityToolkit.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 339
	%struct.DSOCacheEntry {
		i64 1785210584, ; hash 0x6a6826d8, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 340
	%struct.DSOCacheEntry {
		i64 1788241197, ; hash 0x6a96652d, from name: Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 341
	%struct.DSOCacheEntry {
		i64 1807794426, ; hash 0x6bc0c0fa, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 342
	%struct.DSOCacheEntry {
		i64 1808609942, ; hash 0x6bcd3296, from name: Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 343
	%struct.DSOCacheEntry {
		i64 1813201214, ; hash 0x6c13413e, from name: Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 344
	%struct.DSOCacheEntry {
		i64 1816605001, ; hash 0x6c473149, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 345
	%struct.DSOCacheEntry {
		i64 1822997506, ; hash 0x6ca8bc02, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 346
	%struct.DSOCacheEntry {
		i64 1824722060, ; hash 0x6cc30c8c, from name: System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 347
	%struct.DSOCacheEntry {
		i64 1830033998, ; hash 0x6d141a4e, from name: libaot-Telerik.Android.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 348
	%struct.DSOCacheEntry {
		i64 1836222811, ; hash 0x6d72895b, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 349
	%struct.DSOCacheEntry {
		i64 1838737787, ; hash 0x6d98e97b, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 350
	%struct.DSOCacheEntry {
		i64 1839365469, ; hash 0x6da27d5d, from name: aot-Telerik.Documents.CMapUtils.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 351
	%struct.DSOCacheEntry {
		i64 1851144567, ; hash 0x6e563977, from name: SkiaSharp.Views.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 352
	%struct.DSOCacheEntry {
		i64 1856510251, ; hash 0x6ea8192b, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 353
	%struct.DSOCacheEntry {
		i64 1858542181, ; hash 0x6ec71a65, from name: System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 354
	%struct.DSOCacheEntry {
		i64 1861760301, ; hash 0x6ef8352d, from name: aot-Telerik.Android.Input
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 355
	%struct.DSOCacheEntry {
		i64 1864493924, ; hash 0x6f21eb64, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 356
	%struct.DSOCacheEntry {
		i64 1866485647, ; hash 0x6f404f8f, from name: Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 357
	%struct.DSOCacheEntry {
		i64 1868438852, ; hash 0x6f5e1d44, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 358
	%struct.DSOCacheEntry {
		i64 1879211860, ; hash 0x70027f54, from name: aot-SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 359
	%struct.DSOCacheEntry {
		i64 1889411128, ; hash 0x709e2038, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 360
	%struct.DSOCacheEntry {
		i64 1893688170, ; hash 0x70df636a, from name: libaot-Telerik.Documents.Flow.FormatProviders.Doc
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 361
	%struct.DSOCacheEntry {
		i64 1896169914, ; hash 0x710541ba, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 362
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 363
	%struct.DSOCacheEntry {
		i64 1902824622, ; hash 0x716accae, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 364
	%struct.DSOCacheEntry {
		i64 1904192138, ; hash 0x717faa8a, from name: aot-CommunityToolkit.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 365
	%struct.DSOCacheEntry {
		i64 1911147258, ; hash 0x71e9cafa, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 366
	%struct.DSOCacheEntry {
		i64 1915179509, ; hash 0x722751f5, from name: System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 367
	%struct.DSOCacheEntry {
		i64 1917270479, ; hash 0x724739cf, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 368
	%struct.DSOCacheEntry {
		i64 1927204088, ; hash 0x72deccf8, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 369
	%struct.DSOCacheEntry {
		i64 1939226026, ; hash 0x73963daa, from name: aot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 370
	%struct.DSOCacheEntry {
		i64 1941252482, ; hash 0x73b52982, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 371
	%struct.DSOCacheEntry {
		i64 1947440624, ; hash 0x741395f0, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 372
	%struct.DSOCacheEntry {
		i64 1953900240, ; hash 0x747626d0, from name: aot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 373
	%struct.DSOCacheEntry {
		i64 1954803200, ; hash 0x7483ee00, from name: libaot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 374
	%struct.DSOCacheEntry {
		i64 1959705688, ; hash 0x74cebc58, from name: System.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 375
	%struct.DSOCacheEntry {
		i64 1961541945, ; hash 0x74eac139, from name: aot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 376
	%struct.DSOCacheEntry {
		i64 1967114972, ; hash 0x753fcadc, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 377
	%struct.DSOCacheEntry {
		i64 1970157169, ; hash 0x756e3671, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 378
	%struct.DSOCacheEntry {
		i64 1971847110, ; hash 0x7587ffc6, from name: aot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 379
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 380
	%struct.DSOCacheEntry {
		i64 1987401087, ; hash 0x7675557f, from name: System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 381
	%struct.DSOCacheEntry {
		i64 1998620087, ; hash 0x772085b7, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 382
	%struct.DSOCacheEntry {
		i64 2002095823, ; hash 0x77558ecf, from name: aot-Telerik.Documents.Spreadsheet
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 383
	%struct.DSOCacheEntry {
		i64 2009571110, ; hash 0x77c79f26, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 384
	%struct.DSOCacheEntry {
		i64 2014753083, ; hash 0x7816b13b, from name: aot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 385
	%struct.DSOCacheEntry {
		i64 2019465201, ; hash 0x785e97f1, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 386
	%struct.DSOCacheEntry {
		i64 2023918727, ; hash 0x78a28c87, from name: libaot-Microsoft.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 387
	%struct.DSOCacheEntry {
		i64 2027921407, ; hash 0x78df9fff, from name: Telerik.Documents.Spreadsheet.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 388
	%struct.DSOCacheEntry {
		i64 2036643236, ; hash 0x7964b5a4, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 389
	%struct.DSOCacheEntry {
		i64 2037522586, ; hash 0x7972209a, from name: libaot-Telerik.Documents.Fixed.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 390
	%struct.DSOCacheEntry {
		i64 2042042370, ; hash 0x79b71802, from name: Telerik.Documents.Spreadsheet.FormatProviders.Xls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 391
	%struct.DSOCacheEntry {
		i64 2043472270, ; hash 0x79cce98e, from name: aot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 392
	%struct.DSOCacheEntry {
		i64 2044108986, ; hash 0x79d6a0ba, from name: libSystem.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 393
	%struct.DSOCacheEntry {
		i64 2045470958, ; hash 0x79eb68ee, from name: System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 394
	%struct.DSOCacheEntry {
		i64 2058309705, ; hash 0x7aaf5049, from name: Telerik.Documents.DrawingML
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 395
	%struct.DSOCacheEntry {
		i64 2060722524, ; hash 0x7ad4215c, from name: aot-System.Net.Mail
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 396
	%struct.DSOCacheEntry {
		i64 2065818172, ; hash 0x7b21e23c, from name: libaot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 397
	%struct.DSOCacheEntry {
		i64 2068548736, ; hash 0x7b4b8c80, from name: aot-System.ComponentModel.EventBasedAsync.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 398
	%struct.DSOCacheEntry {
		i64 2070888862, ; hash 0x7b6f419e, from name: System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 399
	%struct.DSOCacheEntry {
		i64 2071976611, ; hash 0x7b7fdaa3, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 400
	%struct.DSOCacheEntry {
		i64 2072777569, ; hash 0x7b8c1361, from name: System.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 401
	%struct.DSOCacheEntry {
		i64 2078610628, ; hash 0x7be514c4, from name: libmono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 402
	%struct.DSOCacheEntry {
		i64 2082659839, ; hash 0x7c22ddff, from name: Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 403
	%struct.DSOCacheEntry {
		i64 2090596640, ; hash 0x7c9bf920, from name: System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 404
	%struct.DSOCacheEntry {
		i64 2097043733, ; hash 0x7cfe5915, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 405
	%struct.DSOCacheEntry {
		i64 2097650127, ; hash 0x7d0799cf, from name: aot-Telerik.Documents.Fixed.FormatProviders.Image.Skia
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 406
	%struct.DSOCacheEntry {
		i64 2100120213, ; hash 0x7d2d4a95, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 407
	%struct.DSOCacheEntry {
		i64 2101192894, ; hash 0x7d3da8be, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 408
	%struct.DSOCacheEntry {
		i64 2105884241, ; hash 0x7d853e51, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 409
	%struct.DSOCacheEntry {
		i64 2113629505, ; hash 0x7dfb6d41, from name: libaot-Xamarin.Google.Crypto.Tink.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 410
	%struct.DSOCacheEntry {
		i64 2115594265, ; hash 0x7e196819, from name: aot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 411
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 412
	%struct.DSOCacheEntry {
		i64 2127167465, ; hash 0x7ec9ffe9, from name: System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 413
	%struct.DSOCacheEntry {
		i64 2142473426, ; hash 0x7fb38cd2, from name: System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 414
	%struct.DSOCacheEntry {
		i64 2149461079, ; hash 0x801e2c57, from name: aot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 415
	%struct.DSOCacheEntry {
		i64 2159891885, ; hash 0x80bd55ad, from name: Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 416
	%struct.DSOCacheEntry {
		i64 2162156863, ; hash 0x80dfe53f, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 417
	%struct.DSOCacheEntry {
		i64 2167011298, ; hash 0x8129f7e2, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 418
	%struct.DSOCacheEntry {
		i64 2167720450, ; hash 0x8134ca02, from name: aot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 419
	%struct.DSOCacheEntry {
		i64 2167987959, ; hash 0x8138def7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 420
	%struct.DSOCacheEntry {
		i64 2170173082, ; hash 0x815a369a, from name: libaot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 421
	%struct.DSOCacheEntry {
		i64 2170792773, ; hash 0x8163ab45, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 422
	%struct.DSOCacheEntry {
		i64 2172943413, ; hash 0x81847c35, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 423
	%struct.DSOCacheEntry {
		i64 2173787133, ; hash 0x81915bfd, from name: aot-SkiaSharp.Views.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 424
	%struct.DSOCacheEntry {
		i64 2180517024, ; hash 0x81f80ca0, from name: aot-Telerik.Android.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 425
	%struct.DSOCacheEntry {
		i64 2192057212, ; hash 0x82a8237c, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 426
	%struct.DSOCacheEntry {
		i64 2192436256, ; hash 0x82adec20, from name: Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 427
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 428
	%struct.DSOCacheEntry {
		i64 2205363705, ; hash 0x83732df9, from name: SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 429
	%struct.DSOCacheEntry {
		i64 2211380618, ; hash 0x83cefd8a, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 430
	%struct.DSOCacheEntry {
		i64 2211767232, ; hash 0x83d4e3c0, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 431
	%struct.DSOCacheEntry {
		i64 2222056684, ; hash 0x8471e4ec, from name: System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 432
	%struct.DSOCacheEntry {
		i64 2223531549, ; hash 0x8488661d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 433
	%struct.DSOCacheEntry {
		i64 2225682495, ; hash 0x84a9383f, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 434
	%struct.DSOCacheEntry {
		i64 2227616244, ; hash 0x84c6b9f4, from name: aot-Telerik.Documents.SpreadsheetStreaming.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 435
	%struct.DSOCacheEntry {
		i64 2241953027, ; hash 0x85a17d03, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 436
	%struct.DSOCacheEntry {
		i64 2245181094, ; hash 0x85d2bea6, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 437
	%struct.DSOCacheEntry {
		i64 2248739311, ; hash 0x860909ef, from name: aot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 438
	%struct.DSOCacheEntry {
		i64 2254155312, ; hash 0x865bae30, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 439
	%struct.DSOCacheEntry {
		i64 2265154493, ; hash 0x870383bd, from name: aot-Telerik.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 440
	%struct.DSOCacheEntry {
		i64 2265178066, ; hash 0x8703dfd2, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 441
	%struct.DSOCacheEntry {
		i64 2266799131, ; hash 0x871c9c1b, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 442
	%struct.DSOCacheEntry {
		i64 2267557044, ; hash 0x87282cb4, from name: Telerik.Android.Chart.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 443
	%struct.DSOCacheEntry {
		i64 2272382800, ; hash 0x8771cf50, from name: System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 444
	%struct.DSOCacheEntry {
		i64 2277427567, ; hash 0x87bec96f, from name: aot-Telerik.Android.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 445
	%struct.DSOCacheEntry {
		i64 2279498149, ; hash 0x87de61a5, from name: libaot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 446
	%struct.DSOCacheEntry {
		i64 2282650294, ; hash 0x880e7ab6, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 447
	%struct.DSOCacheEntry {
		i64 2283539775, ; hash 0x881c0d3f, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 448
	%struct.DSOCacheEntry {
		i64 2284562302, ; hash 0x882ba77e, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 449
	%struct.DSOCacheEntry {
		i64 2295906218, ; hash 0x88d8bfaa, from name: System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 450
	%struct.DSOCacheEntry {
		i64 2297173160, ; hash 0x88ec14a8, from name: aot-Telerik.Documents.Flow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	}, ; 451
	%struct.DSOCacheEntry {
		i64 2298471582, ; hash 0x88ffe49e, from name: System.Net.Mail
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 452
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 453
	%struct.DSOCacheEntry {
		i64 2304141806, ; hash 0x895669ee, from name: libaot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 454
	%struct.DSOCacheEntry {
		i64 2323667891, ; hash 0x8a805bb3, from name: libaot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 455
	%struct.DSOCacheEntry {
		i64 2324577555, ; hash 0x8a8e3d13, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 456
	%struct.DSOCacheEntry {
		i64 2326152406, ; hash 0x8aa644d6, from name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 457
	%struct.DSOCacheEntry {
		i64 2327830411, ; hash 0x8abfdf8b, from name: System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 458
	%struct.DSOCacheEntry {
		i64 2335779360, ; hash 0x8b392a20, from name: Telerik.Documents.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 459
	%struct.DSOCacheEntry {
		i64 2344356833, ; hash 0x8bbc0be1, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 460
	%struct.DSOCacheEntry {
		i64 2345900785, ; hash 0x8bd39af1, from name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 461
	%struct.DSOCacheEntry {
		i64 2350046653, ; hash 0x8c12ddbd, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 462
	%struct.DSOCacheEntry {
		i64 2353062107, ; hash 0x8c40e0db, from name: System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 463
	%struct.DSOCacheEntry {
		i64 2362663635, ; hash 0x8cd362d3, from name: libaot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 464
	%struct.DSOCacheEntry {
		i64 2364201794, ; hash 0x8ceadb42, from name: SkiaSharp.Views.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 465
	%struct.DSOCacheEntry {
		i64 2364304572, ; hash 0x8cec6cbc, from name: libaot-SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 466
	%struct.DSOCacheEntry {
		i64 2370763505, ; hash 0x8d4efaf1, from name: libaot-Telerik.Documents.CMapUtils
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 467
	%struct.DSOCacheEntry {
		i64 2371007202, ; hash 0x8d52b2e2, from name: Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 468
	%struct.DSOCacheEntry {
		i64 2380784797, ; hash 0x8de7e49d, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 469
	%struct.DSOCacheEntry {
		i64 2384197275, ; hash 0x8e1bf69b, from name: libaot-System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 470
	%struct.DSOCacheEntry {
		i64 2386564208, ; hash 0x8e401470, from name: libaot-System.ComponentModel.Annotations
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 471
	%struct.DSOCacheEntry {
		i64 2389733863, ; hash 0x8e7071e7, from name: aot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 472
	%struct.DSOCacheEntry {
		i64 2396723635, ; hash 0x8edb19b3, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 473
	%struct.DSOCacheEntry {
		i64 2398397622, ; hash 0x8ef4a4b6, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 474
	%struct.DSOCacheEntry {
		i64 2401565422, ; hash 0x8f24faee, from name: System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 475
	%struct.DSOCacheEntry {
		i64 2406593473, ; hash 0x8f71b3c1, from name: libaot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 476
	%struct.DSOCacheEntry {
		i64 2406870559, ; hash 0x8f75ee1f, from name: aot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 477
	%struct.DSOCacheEntry {
		i64 2408375621, ; hash 0x8f8ce545, from name: System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 478
	%struct.DSOCacheEntry {
		i64 2426026431, ; hash 0x909a39bf, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 479
	%struct.DSOCacheEntry {
		i64 2427544092, ; hash 0x90b1621c, from name: libaot-SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 480
	%struct.DSOCacheEntry {
		i64 2430242750, ; hash 0x90da8fbe, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 481
	%struct.DSOCacheEntry {
		i64 2430693373, ; hash 0x90e16ffd, from name: Telerik.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 482
	%struct.DSOCacheEntry {
		i64 2432891663, ; hash 0x9102fb0f, from name: aot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 483
	%struct.DSOCacheEntry {
		i64 2435557735, ; hash 0x912ba967, from name: Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so
		ptr null; void* handle (0x0)
	}, ; 484
	%struct.DSOCacheEntry {
		i64 2437406362, ; hash 0x9147de9a, from name: libaot-System.Net.Mail
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 485
	%struct.DSOCacheEntry {
		i64 2438431458, ; hash 0x915782e2, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 486
	%struct.DSOCacheEntry {
		i64 2447287240, ; hash 0x91dea3c8, from name: aot-Telerik.Documents.DrawingML
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 487
	%struct.DSOCacheEntry {
		i64 2448201744, ; hash 0x91ec9810, from name: System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 488
	%struct.DSOCacheEntry {
		i64 2448937778, ; hash 0x91f7d332, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 489
	%struct.DSOCacheEntry {
		i64 2451871379, ; hash 0x92249693, from name: Telerik.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 490
	%struct.DSOCacheEntry {
		i64 2452809944, ; hash 0x9232e8d8, from name: aot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 491
	%struct.DSOCacheEntry {
		i64 2453033447, ; hash 0x923651e7, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 492
	%struct.DSOCacheEntry {
		i64 2458563039, ; hash 0x928ab1df, from name: System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 493
	%struct.DSOCacheEntry {
		i64 2463331002, ; hash 0x92d372ba, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 494
	%struct.DSOCacheEntry {
		i64 2473124778, ; hash 0x9368e3aa, from name: System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 495
	%struct.DSOCacheEntry {
		i64 2480646305, ; hash 0x93dba8a1, from name: Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 496
	%struct.DSOCacheEntry {
		i64 2483446373, ; hash 0x94066265, from name: libaot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 497
	%struct.DSOCacheEntry {
		i64 2483903535, ; hash 0x940d5c2f, from name: System.ComponentModel.EventBasedAsync
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 498
	%struct.DSOCacheEntry {
		i64 2484371297, ; hash 0x94147f61, from name: System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 499
	%struct.DSOCacheEntry {
		i64 2488050476, ; hash 0x944ca32c, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 500
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 501
	%struct.DSOCacheEntry {
		i64 2497312536, ; hash 0x94d9f718, from name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 502
	%struct.DSOCacheEntry {
		i64 2504646341, ; hash 0x9549dec5, from name: aot-SkiaSharp.Views.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 503
	%struct.DSOCacheEntry {
		i64 2513131084, ; hash 0x95cb564c, from name: aot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 504
	%struct.DSOCacheEntry {
		i64 2515941137, ; hash 0x95f63711, from name: libaot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 505
	%struct.DSOCacheEntry {
		i64 2519378085, ; hash 0x962aa8a5, from name: libaot-System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 506
	%struct.DSOCacheEntry {
		i64 2521915375, ; hash 0x96515fef, from name: SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 507
	%struct.DSOCacheEntry {
		i64 2531051056, ; hash 0x96dcc630, from name: libaot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 508
	%struct.DSOCacheEntry {
		i64 2536927006, ; hash 0x97366f1e, from name: aot-CommunityToolkit.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 509
	%struct.DSOCacheEntry {
		i64 2539653622, ; hash 0x976009f6, from name: aot-Telerik.Documents.Flow.FormatProviders.Doc
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 510
	%struct.DSOCacheEntry {
		i64 2547110758, ; hash 0x97d1d366, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 511
	%struct.DSOCacheEntry {
		i64 2550858588, ; hash 0x980b035c, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 512
	%struct.DSOCacheEntry {
		i64 2552580572, ; hash 0x982549dc, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 513
	%struct.DSOCacheEntry {
		i64 2560731213, ; hash 0x98a1a84d, from name: Telerik.Android.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Telerik.Android.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 514
	%struct.DSOCacheEntry {
		i64 2560787540, ; hash 0x98a28454, from name: aot-SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 515
	%struct.DSOCacheEntry {
		i64 2562349572, ; hash 0x98ba5a04, from name: Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 516
	%struct.DSOCacheEntry {
		i64 2570120770, ; hash 0x9930ee42, from name: System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 517
	%struct.DSOCacheEntry {
		i64 2573143246, ; hash 0x995f0cce, from name: Telerik.Android.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 518
	%struct.DSOCacheEntry {
		i64 2578174356, ; hash 0x99abd194, from name: System.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 519
	%struct.DSOCacheEntry {
		i64 2579183305, ; hash 0x99bb36c9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 520
	%struct.DSOCacheEntry {
		i64 2580278470, ; hash 0x99cbecc6, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 521
	%struct.DSOCacheEntry {
		i64 2583342705, ; hash 0x99faae71, from name: System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 522
	%struct.DSOCacheEntry {
		i64 2584814180, ; hash 0x9a112264, from name: libaot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 523
	%struct.DSOCacheEntry {
		i64 2586467844, ; hash 0x9a2a5e04, from name: aot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 524
	%struct.DSOCacheEntry {
		i64 2589602615, ; hash 0x9a5a3337, from name: System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 525
	%struct.DSOCacheEntry {
		i64 2594649809, ; hash 0x9aa736d1, from name: aot-Microsoft.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 526
	%struct.DSOCacheEntry {
		i64 2596751594, ; hash 0x9ac748ea, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 527
	%struct.DSOCacheEntry {
		i64 2598466835, ; hash 0x9ae17513, from name: aot-Telerik.Documents.Fixed.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 528
	%struct.DSOCacheEntry {
		i64 2602792014, ; hash 0x9b23744e, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 529
	%struct.DSOCacheEntry {
		i64 2605712449, ; hash 0x9b500441, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 530
	%struct.DSOCacheEntry {
		i64 2610841110, ; hash 0x9b9e4616, from name: aot-Novera.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 531
	%struct.DSOCacheEntry {
		i64 2617498295, ; hash 0x9c03dab7, from name: Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 532
	%struct.DSOCacheEntry {
		i64 2617927111, ; hash 0x9c0a65c7, from name: Microsoft.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 533
	%struct.DSOCacheEntry {
		i64 2619685556, ; hash 0x9c253ab4, from name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 534
	%struct.DSOCacheEntry {
		i64 2620018659, ; hash 0x9c2a4fe3, from name: System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 535
	%struct.DSOCacheEntry {
		i64 2628907994, ; hash 0x9cb1f3da, from name: aot-Telerik.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 536
	%struct.DSOCacheEntry {
		i64 2630231106, ; hash 0x9cc62442, from name: System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 537
	%struct.DSOCacheEntry {
		i64 2634641626, ; hash 0x9d0970da, from name: Telerik.Documents.SpreadsheetStreaming
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 538
	%struct.DSOCacheEntry {
		i64 2638514212, ; hash 0x9d448824, from name: libaot-Telerik.Documents.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 539
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 540
	%struct.DSOCacheEntry {
		i64 2639724514, ; hash 0x9d56ffe2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 541
	%struct.DSOCacheEntry {
		i64 2646943518, ; hash 0x9dc5271e, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 542
	%struct.DSOCacheEntry {
		i64 2647853659, ; hash 0x9dd30a5b, from name: Telerik.Documents.Fixed
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 543
	%struct.DSOCacheEntry {
		i64 2650836102, ; hash 0x9e008c86, from name: libaot-Telerik.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 544
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 545
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 546
	%struct.DSOCacheEntry {
		i64 2663698177, ; hash 0x9ec4cf01, from name: System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 547
	%struct.DSOCacheEntry {
		i64 2665622720, ; hash 0x9ee22cc0, from name: System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 548
	%struct.DSOCacheEntry {
		i64 2677175713, ; hash 0x9f9275a1, from name: libaot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 549
	%struct.DSOCacheEntry {
		i64 2678767976, ; hash 0x9faac168, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 550
	%struct.DSOCacheEntry {
		i64 2688478343, ; hash 0xa03eec87, from name: aot-SkiaSharp.Views.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 551
	%struct.DSOCacheEntry {
		i64 2692189915, ; hash 0xa0778edb, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 552
	%struct.DSOCacheEntry {
		i64 2692951224, ; hash 0xa0832cb8, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 553
	%struct.DSOCacheEntry {
		i64 2705630008, ; hash 0xa144a338, from name: aot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 554
	%struct.DSOCacheEntry {
		i64 2708530770, ; hash 0xa170e652, from name: libaot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 555
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 556
	%struct.DSOCacheEntry {
		i64 2713623161, ; hash 0xa1be9a79, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 557
	%struct.DSOCacheEntry {
		i64 2722617920, ; hash 0xa247da40, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 558
	%struct.DSOCacheEntry {
		i64 2723361050, ; hash 0xa253311a, from name: aot-Telerik.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 559
	%struct.DSOCacheEntry {
		i64 2727849096, ; hash 0xa297ac88, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 560
	%struct.DSOCacheEntry {
		i64 2729274564, ; hash 0xa2ad6cc4, from name: Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 561
	%struct.DSOCacheEntry {
		i64 2732626843, ; hash 0xa2e0939b, from name: Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 562
	%struct.DSOCacheEntry {
		i64 2732977029, ; hash 0xa2e5eb85, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 563
	%struct.DSOCacheEntry {
		i64 2735172069, ; hash 0xa30769e5, from name: System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 564
	%struct.DSOCacheEntry {
		i64 2735279357, ; hash 0xa3090cfd, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 565
	%struct.DSOCacheEntry {
		i64 2743508320, ; hash 0xa3869d60, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 566
	%struct.DSOCacheEntry {
		i64 2744605653, ; hash 0xa3975bd5, from name: Telerik.Documents.Flow.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 567
	%struct.DSOCacheEntry {
		i64 2747803411, ; hash 0xa3c82713, from name: Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 568
	%struct.DSOCacheEntry {
		i64 2756708150, ; hash 0xa4500736, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 569
	%struct.DSOCacheEntry {
		i64 2758225723, ; hash 0xa4672f3b, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 570
	%struct.DSOCacheEntry {
		i64 2760088126, ; hash 0xa4839a3e, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 571
	%struct.DSOCacheEntry {
		i64 2767247566, ; hash 0xa4f0d8ce, from name: libaot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 572
	%struct.DSOCacheEntry {
		i64 2771312189, ; hash 0xa52ede3d, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 573
	%struct.DSOCacheEntry {
		i64 2778337824, ; hash 0xa59a1220, from name: aot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 574
	%struct.DSOCacheEntry {
		i64 2788267156, ; hash 0xa6319494, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 575
	%struct.DSOCacheEntry {
		i64 2789345642, ; hash 0xa642096a, from name: aot-Telerik.Documents.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 576
	%struct.DSOCacheEntry {
		i64 2801831435, ; hash 0xa7008e0b, from name: Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 577
	%struct.DSOCacheEntry {
		i64 2803929169, ; hash 0xa7209051, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 578
	%struct.DSOCacheEntry {
		i64 2811243932, ; hash 0xa7902d9c, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 579
	%struct.DSOCacheEntry {
		i64 2811640309, ; hash 0xa79639f5, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 580
	%struct.DSOCacheEntry {
		i64 2815256798, ; hash 0xa7cd68de, from name: libaot-Telerik.Android.List.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 581
	%struct.DSOCacheEntry {
		i64 2816977087, ; hash 0xa7e7a8bf, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 582
	%struct.DSOCacheEntry {
		i64 2820403756, ; hash 0xa81bf22c, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 583
	%struct.DSOCacheEntry {
		i64 2825784484, ; hash 0xa86e0ca4, from name: aot-System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 584
	%struct.DSOCacheEntry {
		i64 2831113488, ; hash 0xa8bf5d10, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 585
	%struct.DSOCacheEntry {
		i64 2831658147, ; hash 0xa8c7aca3, from name: aot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 586
	%struct.DSOCacheEntry {
		i64 2840175643, ; hash 0xa949a41b, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 587
	%struct.DSOCacheEntry {
		i64 2843443372, ; hash 0xa97b80ac, from name: aot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 588
	%struct.DSOCacheEntry {
		i64 2844128629, ; hash 0xa985f575, from name: Telerik.Documents.Fixed.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 589
	%struct.DSOCacheEntry {
		i64 2853208004, ; hash 0xaa107fc4, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 590
	%struct.DSOCacheEntry {
		i64 2853773753, ; hash 0xaa1921b9, from name: libaot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 591
	%struct.DSOCacheEntry {
		i64 2861189240, ; hash 0xaa8a4878, from name: Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 592
	%struct.DSOCacheEntry {
		i64 2866113648, ; hash 0xaad56c70, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 593
	%struct.DSOCacheEntry {
		i64 2866400460, ; hash 0xaad9cccc, from name: libaot-SkiaSharp.Views.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 594
	%struct.DSOCacheEntry {
		i64 2866535038, ; hash 0xaadbda7e, from name: Telerik.Documents.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Telerik.Documents.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 595
	%struct.DSOCacheEntry {
		i64 2868488919, ; hash 0xaaf9aad7, from name: CommunityToolkit.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 596
	%struct.DSOCacheEntry {
		i64 2882500561, ; hash 0xabcf77d1, from name: System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 597
	%struct.DSOCacheEntry {
		i64 2886400886, ; hash 0xac0afb76, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 598
	%struct.DSOCacheEntry {
		i64 2894204443, ; hash 0xac820e1b, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 599
	%struct.DSOCacheEntry {
		i64 2895201896, ; hash 0xac914668, from name: libaot-CommunityToolkit.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 600
	%struct.DSOCacheEntry {
		i64 2905256141, ; hash 0xad2ab0cd, from name: System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 601
	%struct.DSOCacheEntry {
		i64 2907369062, ; hash 0xad4aee66, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 602
	%struct.DSOCacheEntry {
		i64 2909740682, ; hash 0xad6f1e8a, from name: System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 603
	%struct.DSOCacheEntry {
		i64 2911927123, ; hash 0xad907b53, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 604
	%struct.DSOCacheEntry {
		i64 2912026555, ; hash 0xad91ffbb, from name: libaot-System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 605
	%struct.DSOCacheEntry {
		i64 2912489636, ; hash 0xad9910a4, from name: SkiaSharp.Views.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 606
	%struct.DSOCacheEntry {
		i64 2932769875, ; hash 0xaece8453, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 607
	%struct.DSOCacheEntry {
		i64 2938740861, ; hash 0xaf29a07d, from name: libSystem.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 608
	%struct.DSOCacheEntry {
		i64 2939899433, ; hash 0xaf3b4e29, from name: System.ComponentModel.Annotations.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 609
	%struct.DSOCacheEntry {
		i64 2942668026, ; hash 0xaf658cfa, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 610
	%struct.DSOCacheEntry {
		i64 2945162751, ; hash 0xaf8b9dff, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 611
	%struct.DSOCacheEntry {
		i64 2950894636, ; hash 0xafe3142c, from name: libSystem.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 612
	%struct.DSOCacheEntry {
		i64 2951189309, ; hash 0xafe7933d, from name: aot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 613
	%struct.DSOCacheEntry {
		i64 2965141360, ; hash 0xb0bc7770, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 614
	%struct.DSOCacheEntry {
		i64 2967395179, ; hash 0xb0dedb6b, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 615
	%struct.DSOCacheEntry {
		i64 2968962103, ; hash 0xb0f6c437, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 616
	%struct.DSOCacheEntry {
		i64 2974011576, ; hash 0xb143d0b8, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 617
	%struct.DSOCacheEntry {
		i64 2978675010, ; hash 0xb18af942, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 618
	%struct.DSOCacheEntry {
		i64 2979843530, ; hash 0xb19ccdca, from name: aot-SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 619
	%struct.DSOCacheEntry {
		i64 2980543348, ; hash 0xb1a77b74, from name: Novera.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 620
	%struct.DSOCacheEntry {
		i64 2980629364, ; hash 0xb1a8cb74, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 621
	%struct.DSOCacheEntry {
		i64 2982794884, ; hash 0xb1c9d684, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 622
	%struct.DSOCacheEntry {
		i64 2985735645, ; hash 0xb1f6b5dd, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 623
	%struct.DSOCacheEntry {
		i64 2987532451, ; hash 0xb21220a3, from name: Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 624
	%struct.DSOCacheEntry {
		i64 3002033339, ; hash 0xb2ef64bb, from name: aot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 625
	%struct.DSOCacheEntry {
		i64 3006052287, ; hash 0xb32cb7bf, from name: SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 626
	%struct.DSOCacheEntry {
		i64 3011705742, ; hash 0xb382fb8e, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 627
	%struct.DSOCacheEntry {
		i64 3011708098, ; hash 0xb38304c2, from name: aot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 628
	%struct.DSOCacheEntry {
		i64 3024529297, ; hash 0xb446a791, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 629
	%struct.DSOCacheEntry {
		i64 3025818980, ; hash 0xb45a5564, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 630
	%struct.DSOCacheEntry {
		i64 3039880711, ; hash 0xb530e607, from name: aot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 631
	%struct.DSOCacheEntry {
		i64 3040261996, ; hash 0xb536b76c, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 632
	%struct.DSOCacheEntry {
		i64 3040983544, ; hash 0xb541b9f8, from name: libSkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 633
	%struct.DSOCacheEntry {
		i64 3044365891, ; hash 0xb5755643, from name: aot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 634
	%struct.DSOCacheEntry {
		i64 3050332087, ; hash 0xb5d05fb7, from name: libSkiaSharp.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 635
	%struct.DSOCacheEntry {
		i64 3051226419, ; hash 0xb5de0533, from name: System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 636
	%struct.DSOCacheEntry {
		i64 3055345804, ; hash 0xb61ce08c, from name: libaot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 637
	%struct.DSOCacheEntry {
		i64 3056290812, ; hash 0xb62b4bfc, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 638
	%struct.DSOCacheEntry {
		i64 3057625584, ; hash 0xb63fa9f0, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 639
	%struct.DSOCacheEntry {
		i64 3057718947, ; hash 0xb64116a3, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 640
	%struct.DSOCacheEntry {
		i64 3058175140, ; hash 0xb6480ca4, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 641
	%struct.DSOCacheEntry {
		i64 3059168881, ; hash 0xb6573671, from name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 642
	%struct.DSOCacheEntry {
		i64 3059408633, ; hash 0xb65adef9, from name: Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 643
	%struct.DSOCacheEntry {
		i64 3059793426, ; hash 0xb660be12, from name: System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 644
	%struct.DSOCacheEntry {
		i64 3073434459, ; hash 0xb730e35b, from name: aot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 645
	%struct.DSOCacheEntry {
		i64 3077587711, ; hash 0xb77042ff, from name: libaot-Telerik.Android.Input
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 646
	%struct.DSOCacheEntry {
		i64 3089352571, ; hash 0xb823c77b, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 647
	%struct.DSOCacheEntry {
		i64 3095590497, ; hash 0xb882f661, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 648
	%struct.DSOCacheEntry {
		i64 3097746105, ; hash 0xb8a3dab9, from name: System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 649
	%struct.DSOCacheEntry {
		i64 3103429300, ; hash 0xb8fa92b4, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 650
	%struct.DSOCacheEntry {
		i64 3103600923, ; hash 0xb8fd311b, from name: System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 651
	%struct.DSOCacheEntry {
		i64 3118795923, ; hash 0xb9e50c93, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 652
	%struct.DSOCacheEntry {
		i64 3119114540, ; hash 0xb9e9e92c, from name: aot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 653
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 654
	%struct.DSOCacheEntry {
		i64 3122244214, ; hash 0xba19aa76, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 655
	%struct.DSOCacheEntry {
		i64 3127835167, ; hash 0xba6efa1f, from name: System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 656
	%struct.DSOCacheEntry {
		i64 3129695436, ; hash 0xba8b5ccc, from name: libaot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 657
	%struct.DSOCacheEntry {
		i64 3137986923, ; hash 0xbb09e16b, from name: libaot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 658
	%struct.DSOCacheEntry {
		i64 3152424524, ; hash 0xbbe62e4c, from name: libaot-SkiaSharp.Views.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-SkiaSharp.Views.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 659
	%struct.DSOCacheEntry {
		i64 3158948091, ; hash 0xbc49b8fb, from name: aot-Telerik.Android.List
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 660
	%struct.DSOCacheEntry {
		i64 3163975039, ; hash 0xbc966d7f, from name: libaot-Telerik.Android.List
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 661
	%struct.DSOCacheEntry {
		i64 3177211174, ; hash 0xbd606526, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 662
	%struct.DSOCacheEntry {
		i64 3188889127, ; hash 0xbe129627, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 663
	%struct.DSOCacheEntry {
		i64 3194979304, ; hash 0xbe6f83e8, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 664
	%struct.DSOCacheEntry {
		i64 3206754851, ; hash 0xbf233223, from name: aot-Telerik.Documents.Spreadsheet.FormatProviders.Xls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so
		ptr null; void* handle (0x0)
	}, ; 665
	%struct.DSOCacheEntry {
		i64 3212987759, ; hash 0xbf824d6f, from name: aot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 666
	%struct.DSOCacheEntry {
		i64 3216491085, ; hash 0xbfb7c24d, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 667
	%struct.DSOCacheEntry {
		i64 3220365878, ; hash 0xbff2e236, from name: System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 668
	%struct.DSOCacheEntry {
		i64 3222235573, ; hash 0xc00f69b5, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 669
	%struct.DSOCacheEntry {
		i64 3234506695, ; hash 0xc0caa7c7, from name: aot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 670
	%struct.DSOCacheEntry {
		i64 3240981972, ; hash 0xc12d75d4, from name: aot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 671
	%struct.DSOCacheEntry {
		i64 3258312781, ; hash 0xc235e84d, from name: Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 672
	%struct.DSOCacheEntry {
		i64 3259652464, ; hash 0xc24a5970, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 673
	%struct.DSOCacheEntry {
		i64 3260469511, ; hash 0xc256d107, from name: libaot-Telerik.Documents.Flow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	}, ; 674
	%struct.DSOCacheEntry {
		i64 3260489497, ; hash 0xc2571f19, from name: libaot-Novera.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 675
	%struct.DSOCacheEntry {
		i64 3268042121, ; hash 0xc2ca5d89, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 676
	%struct.DSOCacheEntry {
		i64 3269735711, ; hash 0xc2e4351f, from name: libaot-Telerik.Android.Chart
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 677
	%struct.DSOCacheEntry {
		i64 3274854694, ; hash 0xc3325126, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 678
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 679
	%struct.DSOCacheEntry {
		i64 3286878306, ; hash 0xc3e9c862, from name: Telerik.Android.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 680
	%struct.DSOCacheEntry {
		i64 3290700000, ; hash 0xc42418e0, from name: Telerik.Documents.Flow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	}, ; 681
	%struct.DSOCacheEntry {
		i64 3294137703, ; hash 0xc4588d67, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 682
	%struct.DSOCacheEntry {
		i64 3306304978, ; hash 0xc51235d2, from name: aot-Telerik.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 683
	%struct.DSOCacheEntry {
		i64 3315762753, ; hash 0xc5a28641, from name: CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 684
	%struct.DSOCacheEntry {
		i64 3320200080, ; hash 0xc5e63b90, from name: System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 685
	%struct.DSOCacheEntry {
		i64 3321336018, ; hash 0xc5f790d2, from name: aot-Telerik.Android.Chart.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Telerik.Android.Chart.dll.so
		ptr null; void* handle (0x0)
	}, ; 686
	%struct.DSOCacheEntry {
		i64 3321816931, ; hash 0xc5fee763, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 687
	%struct.DSOCacheEntry {
		i64 3325410123, ; hash 0xc635bb4b, from name: libaot-Telerik.Documents.Spreadsheet.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 688
	%struct.DSOCacheEntry {
		i64 3330991993, ; hash 0xc68ae779, from name: libaot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 689
	%struct.DSOCacheEntry {
		i64 3340387945, ; hash 0xc71a4669, from name: SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 690
	%struct.DSOCacheEntry {
		i64 3340387945, ; hash 0xc71a4669, from name: SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 691
	%struct.DSOCacheEntry {
		i64 3346324047, ; hash 0xc774da4f, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 692
	%struct.DSOCacheEntry {
		i64 3347243934, ; hash 0xc782e39e, from name: Telerik.Documents.CMapUtils
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 693
	%struct.DSOCacheEntry {
		i64 3354602862, ; hash 0xc7f32d6e, from name: aot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 694
	%struct.DSOCacheEntry {
		i64 3358260929, ; hash 0xc82afec1, from name: System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 695
	%struct.DSOCacheEntry {
		i64 3362522851, ; hash 0xc86c06e3, from name: Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 696
	%struct.DSOCacheEntry {
		i64 3365984895, ; hash 0xc8a0da7f, from name: libaot-System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 697
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 698
	%struct.DSOCacheEntry {
		i64 3366547669, ; hash 0xc8a970d5, from name: libaot-System.Net.Mail.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 699
	%struct.DSOCacheEntry {
		i64 3370380301, ; hash 0xc8e3ec0d, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 700
	%struct.DSOCacheEntry {
		i64 3374999561, ; hash 0xc92a6809, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 701
	%struct.DSOCacheEntry {
		i64 3375993706, ; hash 0xc939936a, from name: libaot-Telerik.Android.Input.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 702
	%struct.DSOCacheEntry {
		i64 3390663103, ; hash 0xca1969bf, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 703
	%struct.DSOCacheEntry {
		i64 3394171410, ; hash 0xca4ef212, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 704
	%struct.DSOCacheEntry {
		i64 3396494892, ; hash 0xca72662c, from name: System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 705
	%struct.DSOCacheEntry {
		i64 3401606454, ; hash 0xcac06536, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 706
	%struct.DSOCacheEntry {
		i64 3403922660, ; hash 0xcae3bce4, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 707
	%struct.DSOCacheEntry {
		i64 3410432226, ; hash 0xcb4710e2, from name: aot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 708
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 709
	%struct.DSOCacheEntry {
		i64 3430777524, ; hash 0xcc7d82b4, from name: netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 710
	%struct.DSOCacheEntry {
		i64 3445624513, ; hash 0xcd600ec1, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 711
	%struct.DSOCacheEntry {
		i64 3447642345, ; hash 0xcd7ed8e9, from name: libaot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 712
	%struct.DSOCacheEntry {
		i64 3448212429, ; hash 0xcd878bcd, from name: aot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 713
	%struct.DSOCacheEntry {
		i64 3471140502, ; hash 0xcee56696, from name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 714
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 715
	%struct.DSOCacheEntry {
		i64 3490240475, ; hash 0xd008d7db, from name: aot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 716
	%struct.DSOCacheEntry {
		i64 3498419225, ; hash 0xd085a419, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 717
	%struct.DSOCacheEntry {
		i64 3498459181, ; hash 0xd086402d, from name: Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so
		ptr null; void* handle (0x0)
	}, ; 718
	%struct.DSOCacheEntry {
		i64 3520309273, ; hash 0xd1d3a819, from name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so
		ptr null; void* handle (0x0)
	}, ; 719
	%struct.DSOCacheEntry {
		i64 3525911345, ; hash 0xd2292331, from name: aot-SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 720
	%struct.DSOCacheEntry {
		i64 3527981548, ; hash 0xd248b9ec, from name: System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 721
	%struct.DSOCacheEntry {
		i64 3531467364, ; hash 0xd27dea64, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 722
	%struct.DSOCacheEntry {
		i64 3538012924, ; hash 0xd2e1cafc, from name: System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 723
	%struct.DSOCacheEntry {
		i64 3540360104, ; hash 0xd3059ba8, from name: aot-System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 724
	%struct.DSOCacheEntry {
		i64 3554143940, ; hash 0xd3d7eec4, from name: libaot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 725
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 726
	%struct.DSOCacheEntry {
		i64 3563790061, ; hash 0xd46b1eed, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 727
	%struct.DSOCacheEntry {
		i64 3569135103, ; hash 0xd4bcadff, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 728
	%struct.DSOCacheEntry {
		i64 3572051858, ; hash 0xd4e92f92, from name: aot-Telerik.Android.Input.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Telerik.Android.Input.dll.so
		ptr null; void* handle (0x0)
	}, ; 729
	%struct.DSOCacheEntry {
		i64 3574279395, ; hash 0xd50b2ce3, from name: libaot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 730
	%struct.DSOCacheEntry {
		i64 3577516252, ; hash 0xd53c90dc, from name: libaot-Novera
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-Novera.dll.so
		ptr null; void* handle (0x0)
	}, ; 731
	%struct.DSOCacheEntry {
		i64 3580899767, ; hash 0xd57031b7, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 732
	%struct.DSOCacheEntry {
		i64 3580928879, ; hash 0xd570a36f, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 733
	%struct.DSOCacheEntry {
		i64 3581103432, ; hash 0xd5734d48, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 734
	%struct.DSOCacheEntry {
		i64 3582297397, ; hash 0xd5858535, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 735
	%struct.DSOCacheEntry {
		i64 3589949538, ; hash 0xd5fa4862, from name: Telerik.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Telerik.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 736
	%struct.DSOCacheEntry {
		i64 3592435036, ; hash 0xd620355c, from name: Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 737
	%struct.DSOCacheEntry {
		i64 3610022767, ; hash 0xd72c936f, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 738
	%struct.DSOCacheEntry {
		i64 3623194064, ; hash 0xd7f58dd0, from name: libaot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 739
	%struct.DSOCacheEntry {
		i64 3628358221, ; hash 0xd8445a4d, from name: System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 740
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 741
	%struct.DSOCacheEntry {
		i64 3640201741, ; hash 0xd8f9120d, from name: libaot-Telerik.Documents.SpreadsheetStreaming
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Telerik.Documents.SpreadsheetStreaming.dll.so
		ptr null; void* handle (0x0)
	}, ; 742
	%struct.DSOCacheEntry {
		i64 3641597786, ; hash 0xd90e5f5a, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 743
	%struct.DSOCacheEntry {
		i64 3643854240, ; hash 0xd930cda0, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 744
	%struct.DSOCacheEntry {
		i64 3646060755, ; hash 0xd95278d3, from name: aot-System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 745
	%struct.DSOCacheEntry {
		i64 3647597548, ; hash 0xd969ebec, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 746
	%struct.DSOCacheEntry {
		i64 3648098342, ; hash 0xd9719026, from name: libaot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 747
	%struct.DSOCacheEntry {
		i64 3650306124, ; hash 0xd993404c, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 748
	%struct.DSOCacheEntry {
		i64 3653271801, ; hash 0xd9c080f9, from name: System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 749
	%struct.DSOCacheEntry {
		i64 3653801034, ; hash 0xd9c8944a, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 750
	%struct.DSOCacheEntry {
		i64 3660523487, ; hash 0xda2f27df, from name: System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 751
	%struct.DSOCacheEntry {
		i64 3662939194, ; hash 0xda54043a, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 752
	%struct.DSOCacheEntry {
		i64 3667786986, ; hash 0xda9dfcea, from name: aot-System.ComponentModel.Annotations
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 753
	%struct.DSOCacheEntry {
		i64 3684032917, ; hash 0xdb95e195, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 754
	%struct.DSOCacheEntry {
		i64 3685223071, ; hash 0xdba80a9f, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 755
	%struct.DSOCacheEntry {
		i64 3689962629, ; hash 0xdbf05c85, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 756
	%struct.DSOCacheEntry {
		i64 3691770169, ; hash 0xdc0bf139, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 757
	%struct.DSOCacheEntry {
		i64 3705667778, ; hash 0xdce000c2, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 758
	%struct.DSOCacheEntry {
		i64 3720997800, ; hash 0xddc9eba8, from name: aot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 759
	%struct.DSOCacheEntry {
		i64 3722992606, ; hash 0xdde85bde, from name: aot-Telerik.Documents.Flow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	}, ; 760
	%struct.DSOCacheEntry {
		i64 3723482926, ; hash 0xddefd72e, from name: SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 761
	%struct.DSOCacheEntry {
		i64 3732100267, ; hash 0xde7354ab, from name: System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 762
	%struct.DSOCacheEntry {
		i64 3737238990, ; hash 0xdec1bdce, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 763
	%struct.DSOCacheEntry {
		i64 3744678207, ; hash 0xdf33413f, from name: aot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 764
	%struct.DSOCacheEntry {
		i64 3748608112, ; hash 0xdf6f3870, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 765
	%struct.DSOCacheEntry {
		i64 3751129079, ; hash 0xdf95aff7, from name: libaot-Telerik.Documents.Spreadsheet
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 766
	%struct.DSOCacheEntry {
		i64 3774509857, ; hash 0xe0fa7321, from name: Telerik.Documents.Spreadsheet
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 767
	%struct.DSOCacheEntry {
		i64 3781344553, ; hash 0xe162bd29, from name: Telerik.Documents.DrawingML.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 768
	%struct.DSOCacheEntry {
		i64 3786282454, ; hash 0xe1ae15d6, from name: Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 769
	%struct.DSOCacheEntry {
		i64 3786898687, ; hash 0xe1b77cff, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 770
	%struct.DSOCacheEntry {
		i64 3788641884, ; hash 0xe1d2165c, from name: _Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 771
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 772
	%struct.DSOCacheEntry {
		i64 3792276235, ; hash 0xe2098b0b, from name: System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 773
	%struct.DSOCacheEntry {
		i64 3795497088, ; hash 0xe23ab080, from name: aot-System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 774
	%struct.DSOCacheEntry {
		i64 3800979733, ; hash 0xe28e5915, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 775
	%struct.DSOCacheEntry {
		i64 3807198597, ; hash 0xe2ed3d85, from name: System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 776
	%struct.DSOCacheEntry {
		i64 3808105303, ; hash 0xe2fb1357, from name: libaot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 777
	%struct.DSOCacheEntry {
		i64 3808542031, ; hash 0xe301bd4f, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 778
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 779
	%struct.DSOCacheEntry {
		i64 3824070419, ; hash 0xe3eeaf13, from name: aot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 780
	%struct.DSOCacheEntry {
		i64 3827383881, ; hash 0xe4213e49, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 781
	%struct.DSOCacheEntry {
		i64 3831263026, ; hash 0xe45c6f32, from name: System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 782
	%struct.DSOCacheEntry {
		i64 3849019133, ; hash 0xe56b5efd, from name: aot-Telerik.Documents.Flow.FormatProviders.Pdf
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 783
	%struct.DSOCacheEntry {
		i64 3859835501, ; hash 0xe6106a6d, from name: Telerik.Android.List.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Telerik.Android.List.dll.so
		ptr null; void* handle (0x0)
	}, ; 784
	%struct.DSOCacheEntry {
		i64 3881546260, ; hash 0xe75bb214, from name: libaot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 785
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 786
	%struct.DSOCacheEntry {
		i64 3889554181, ; hash 0xe7d5e305, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 787
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 788
	%struct.DSOCacheEntry {
		i64 3894530715, ; hash 0xe821d29b, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 789
	%struct.DSOCacheEntry {
		i64 3909437042, ; hash 0xe9054672, from name: libaot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 790
	%struct.DSOCacheEntry {
		i64 3914547747, ; hash 0xe9534223, from name: aot-Telerik.Android.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Telerik.Android.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 791
	%struct.DSOCacheEntry {
		i64 3915264716, ; hash 0xe95e32cc, from name: aot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 792
	%struct.DSOCacheEntry {
		i64 3915353232, ; hash 0xe95f8c90, from name: libaot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 793
	%struct.DSOCacheEntry {
		i64 3925077246, ; hash 0xe9f3ecfe, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 794
	%struct.DSOCacheEntry {
		i64 3928044579, ; hash 0xea213423, from name: System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 795
	%struct.DSOCacheEntry {
		i64 3930233922, ; hash 0xea429c42, from name: libaot-Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 796
	%struct.DSOCacheEntry {
		i64 3931092270, ; hash 0xea4fb52e, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 797
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 798
	%struct.DSOCacheEntry {
		i64 3936467727, ; hash 0xeaa1bb0f, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 799
	%struct.DSOCacheEntry {
		i64 3949469681, ; hash 0xeb681ff1, from name: aot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 800
	%struct.DSOCacheEntry {
		i64 3954195687, ; hash 0xebb03ce7, from name: Microsoft.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 801
	%struct.DSOCacheEntry {
		i64 3956193289, ; hash 0xebceb809, from name: libaot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 802
	%struct.DSOCacheEntry {
		i64 3961462390, ; hash 0xec1f1e76, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 803
	%struct.DSOCacheEntry {
		i64 3964477410, ; hash 0xec4d1fe2, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 804
	%struct.DSOCacheEntry {
		i64 3965177611, ; hash 0xec57cf0b, from name: aot-Telerik.Documents.Spreadsheet.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-Telerik.Documents.Spreadsheet.dll.so
		ptr null; void* handle (0x0)
	}, ; 805
	%struct.DSOCacheEntry {
		i64 3974764755, ; hash 0xecea18d3, from name: aot-SkiaSharp.Views.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 806
	%struct.DSOCacheEntry {
		i64 3980510446, ; hash 0xed41c4ee, from name: aot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 807
	%struct.DSOCacheEntry {
		i64 3983590109, ; hash 0xed70c2dd, from name: libaot-Telerik.Documents.DrawingML.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 808
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 809
	%struct.DSOCacheEntry {
		i64 3984671697, ; hash 0xed8143d1, from name: libaot-Telerik.Documents.Fixed
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Telerik.Documents.Fixed.dll.so
		ptr null; void* handle (0x0)
	}, ; 810
	%struct.DSOCacheEntry {
		i64 3993813431, ; hash 0xee0cc1b7, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 811
	%struct.DSOCacheEntry {
		i64 3996561484, ; hash 0xee36b04c, from name: aot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 812
	%struct.DSOCacheEntry {
		i64 3996883099, ; hash 0xee3b989b, from name: libaot-System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 813
	%struct.DSOCacheEntry {
		i64 3998220530, ; hash 0xee5000f2, from name: libaot-Telerik.Zip.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Telerik.Zip.dll.so
		ptr null; void* handle (0x0)
	}, ; 814
	%struct.DSOCacheEntry {
		i64 4008891760, ; hash 0xeef2d570, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 815
	%struct.DSOCacheEntry {
		i64 4010861852, ; hash 0xef10e51c, from name: Telerik.Android.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 816
	%struct.DSOCacheEntry {
		i64 4014362288, ; hash 0xef464eb0, from name: CommunityToolkit.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommunityToolkit.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 817
	%struct.DSOCacheEntry {
		i64 4024005801, ; hash 0xefd974a9, from name: libaot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 818
	%struct.DSOCacheEntry {
		i64 4025784931, ; hash 0xeff49a63, from name: System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 819
	%struct.DSOCacheEntry {
		i64 4025829586, ; hash 0xeff548d2, from name: aot-Microsoft.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 820
	%struct.DSOCacheEntry {
		i64 4027140892, ; hash 0xf0094b1c, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 821
	%struct.DSOCacheEntry {
		i64 4031292811, ; hash 0xf048a58b, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 822
	%struct.DSOCacheEntry {
		i64 4038958928, ; hash 0xf0bd9f50, from name: libaot-Telerik.Documents.DrawingML
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Telerik.Documents.DrawingML.dll.so
		ptr null; void* handle (0x0)
	}, ; 823
	%struct.DSOCacheEntry {
		i64 4042557652, ; hash 0xf0f488d4, from name: libaot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 824
	%struct.DSOCacheEntry {
		i64 4047756703, ; hash 0xf143dd9f, from name: libaot-System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 825
	%struct.DSOCacheEntry {
		i64 4051817882, ; hash 0xf181d59a, from name: Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 826
	%struct.DSOCacheEntry {
		i64 4057390768, ; hash 0xf1d6deb0, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 827
	%struct.DSOCacheEntry {
		i64 4063454328, ; hash 0xf2336478, from name: aot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 828
	%struct.DSOCacheEntry {
		i64 4080782894, ; hash 0xf33bce2e, from name: aot-Telerik.Android.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Telerik.Android.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 829
	%struct.DSOCacheEntry {
		i64 4087202641, ; hash 0xf39dc351, from name: mono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 830
	%struct.DSOCacheEntry {
		i64 4100113165, ; hash 0xf462c30d, from name: System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 831
	%struct.DSOCacheEntry {
		i64 4112220824, ; hash 0xf51b8298, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 832
	%struct.DSOCacheEntry {
		i64 4113193990, ; hash 0xf52a5c06, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 833
	%struct.DSOCacheEntry {
		i64 4117511225, ; hash 0xf56c3c39, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 834
	%struct.DSOCacheEntry {
		i64 4124759570, ; hash 0xf5dad612, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 835
	%struct.DSOCacheEntry {
		i64 4125976845, ; hash 0xf5ed690d, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 836
	%struct.DSOCacheEntry {
		i64 4126470640, ; hash 0xf5f4f1f0, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 837
	%struct.DSOCacheEntry {
		i64 4126614450, ; hash 0xf5f723b2, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 838
	%struct.DSOCacheEntry {
		i64 4127599839, ; hash 0xf6062cdf, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 839
	%struct.DSOCacheEntry {
		i64 4134727668, ; hash 0xf672eff4, from name: libaot-Telerik.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 840
	%struct.DSOCacheEntry {
		i64 4135156596, ; hash 0xf6797b74, from name: libaot-Telerik.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Telerik.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 841
	%struct.DSOCacheEntry {
		i64 4138757595, ; hash 0xf6b06ddb, from name: libaot-Telerik.Documents.Flow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	}, ; 842
	%struct.DSOCacheEntry {
		i64 4141496111, ; hash 0xf6da372f, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 843
	%struct.DSOCacheEntry {
		i64 4147491756, ; hash 0xf735b3ac, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 844
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 845
	%struct.DSOCacheEntry {
		i64 4155826038, ; hash 0xf7b4df76, from name: Telerik.Maui.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Telerik.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 846
	%struct.DSOCacheEntry {
		i64 4158287357, ; hash 0xf7da6dfd, from name: aot-CommunityToolkit.Maui.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Maui.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 847
	%struct.DSOCacheEntry {
		i64 4159683834, ; hash 0xf7efbcfa, from name: libaot-System.ComponentModel.EventBasedAsync
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 848
	%struct.DSOCacheEntry {
		i64 4161309507, ; hash 0xf8088b43, from name: libaot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 849
	%struct.DSOCacheEntry {
		i64 4168181461, ; hash 0xf87166d5, from name: libaot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 850
	%struct.DSOCacheEntry {
		i64 4169082996, ; hash 0xf87f2874, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 851
	%struct.DSOCacheEntry {
		i64 4173297316, ; hash 0xf8bf76a4, from name: libaot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 852
	%struct.DSOCacheEntry {
		i64 4174629528, ; hash 0xf8d3ca98, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 853
	%struct.DSOCacheEntry {
		i64 4185748872, ; hash 0xf97d7588, from name: libaot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 854
	%struct.DSOCacheEntry {
		i64 4193960527, ; hash 0xf9fac24f, from name: aot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 855
	%struct.DSOCacheEntry {
		i64 4198755985, ; hash 0xfa43ee91, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 856
	%struct.DSOCacheEntry {
		i64 4203668311, ; hash 0xfa8ee357, from name: libaot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 857
	%struct.DSOCacheEntry {
		i64 4224035530, ; hash 0xfbc5aaca, from name: aot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 858
	%struct.DSOCacheEntry {
		i64 4235562953, ; hash 0xfc758fc9, from name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so
		ptr null; void* handle (0x0)
	}, ; 859
	%struct.DSOCacheEntry {
		i64 4238303082, ; hash 0xfc9f5f6a, from name: aot-System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 860
	%struct.DSOCacheEntry {
		i64 4254568634, ; hash 0xfd9790ba, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 861
	%struct.DSOCacheEntry {
		i64 4254738242, ; hash 0xfd9a2742, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 862
	%struct.DSOCacheEntry {
		i64 4254998718, ; hash 0xfd9e20be, from name: libaot-Telerik.Documents.CMapUtils.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Telerik.Documents.CMapUtils.dll.so
		ptr null; void* handle (0x0)
	}, ; 863
	%struct.DSOCacheEntry {
		i64 4264044254, ; hash 0xfe2826de, from name: libaot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 864
	%struct.DSOCacheEntry {
		i64 4265809558, ; hash 0xfe431696, from name: aot-SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 865
	%struct.DSOCacheEntry {
		i64 4270991500, ; hash 0xfe92288c, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 866
	%struct.DSOCacheEntry {
		i64 4274976490, ; hash 0xfecef6ea, from name: System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 867
	%struct.DSOCacheEntry {
		i64 4280470307, ; hash 0xff22cb23, from name: libaot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 868
	%struct.DSOCacheEntry {
		i64 4288835934, ; hash 0xffa2715e, from name: System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 869
	%struct.DSOCacheEntry {
		i64 4289040471, ; hash 0xffa59057, from name: aot-System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 870
	%struct.DSOCacheEntry {
		i64 4292120959, ; hash 0xffd4917f, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 871
	%struct.DSOCacheEntry {
		i64 4294570506, ; hash 0xfff9f20a, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 872
	%struct.DSOCacheEntry {
		i64 4294692451, ; hash 0xfffbce63, from name: Telerik.Documents.Flow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Telerik.Documents.Flow.dll.so
		ptr null; void* handle (0x0)
	} ; 873
], align 8

; Bundled assembly name buffers, all empty (unused when assembly stores are enabled)
@bundled_assemblies = dso_local local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 4

@assembly_store_bundled_assemblies = dso_local local_unnamed_addr global [175 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

@assembly_stores = dso_local local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

; Strings
@.str.0 = private unnamed_addr constant [7 x i8] c"normal\00", align 1

; Application environment variables name:value pairs
@.env.0 = private unnamed_addr constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@.env.1 = private unnamed_addr constant [21 x i8] c"major=marksweep-conc\00", align 1
@.env.2 = private unnamed_addr constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@.env.3 = private unnamed_addr constant [37 x i8] c"528ad834-38ed-4006-ba70-c5131cca7479\00", align 1
@.env.4 = private unnamed_addr constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@.env.5 = private unnamed_addr constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 1
@.env.6 = private unnamed_addr constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@.env.7 = private unnamed_addr constant [15 x i8] c"LowercaseCrc64\00", align 1

;ApplicationConfig
@.ApplicationConfig.0_android_package_name = private unnamed_addr constant [23 x i8] c"com.companyname.novera\00", align 1

;DSOCacheEntry
@.DSOCacheEntry.0_name = private unnamed_addr constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@.DSOCacheEntry.1_name = private unnamed_addr constant [20 x i8] c"libSystem.Native.so\00", align 1
@.DSOCacheEntry.2_name = private unnamed_addr constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@.DSOCacheEntry.3_name = private unnamed_addr constant [35 x i8] c"libmono-component-marshal-ilgen.so\00", align 1
@.DSOCacheEntry.4_name = private unnamed_addr constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@.DSOCacheEntry.5_name = private unnamed_addr constant [16 x i8] c"libmonodroid.so\00", align 1
@.DSOCacheEntry.6_name = private unnamed_addr constant [16 x i8] c"libSkiaSharp.so\00", align 1
@.DSOCacheEntry.7_name = private unnamed_addr constant [51 x i8] c"libaot-_Microsoft.Android.Resource.Designer.dll.so\00", align 1
@.DSOCacheEntry.8_name = private unnamed_addr constant [21 x i8] c"libaot-Novera.dll.so\00", align 1
@.DSOCacheEntry.9_name = private unnamed_addr constant [36 x i8] c"libaot-CommunityToolkit.Maui.dll.so\00", align 1
@.DSOCacheEntry.10_name = private unnamed_addr constant [41 x i8] c"libaot-CommunityToolkit.Maui.Core.dll.so\00", align 1
@.DSOCacheEntry.11_name = private unnamed_addr constant [36 x i8] c"libaot-CommunityToolkit.Mvvm.dll.so\00", align 1
@.DSOCacheEntry.12_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 1
@.DSOCacheEntry.13_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.14_name = private unnamed_addr constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 1
@.DSOCacheEntry.15_name = private unnamed_addr constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.16_name = private unnamed_addr constant [48 x i8] c"libaot-Microsoft.Extensions.Localization.dll.so\00", align 1
@.DSOCacheEntry.17_name = private unnamed_addr constant [61 x i8] c"libaot-Microsoft.Extensions.Localization.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.18_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 1
@.DSOCacheEntry.19_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.20_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 1
@.DSOCacheEntry.21_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 1
@.DSOCacheEntry.22_name = private unnamed_addr constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 1
@.DSOCacheEntry.23_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 1
@.DSOCacheEntry.24_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 1
@.DSOCacheEntry.25_name = private unnamed_addr constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 1
@.DSOCacheEntry.26_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 1
@.DSOCacheEntry.27_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 1
@.DSOCacheEntry.28_name = private unnamed_addr constant [24 x i8] c"libaot-SkiaSharp.dll.so\00", align 1
@.DSOCacheEntry.29_name = private unnamed_addr constant [38 x i8] c"libaot-SkiaSharp.Views.Android.dll.so\00", align 1
@.DSOCacheEntry.30_name = private unnamed_addr constant [44 x i8] c"libaot-SkiaSharp.Views.Maui.Controls.dll.so\00", align 1
@.DSOCacheEntry.31_name = private unnamed_addr constant [58 x i8] c"libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so\00", align 1
@.DSOCacheEntry.32_name = private unnamed_addr constant [40 x i8] c"libaot-SkiaSharp.Views.Maui.Core.dll.so\00", align 1
@.DSOCacheEntry.33_name = private unnamed_addr constant [48 x i8] c"libaot-System.Security.Cryptography.Pkcs.dll.so\00", align 1
@.DSOCacheEntry.34_name = private unnamed_addr constant [42 x i8] c"libaot-Telerik.Documents.CMapUtils.dll.so\00", align 1
@.DSOCacheEntry.35_name = private unnamed_addr constant [37 x i8] c"libaot-Telerik.Documents.Core.dll.so\00", align 1
@.DSOCacheEntry.36_name = private unnamed_addr constant [42 x i8] c"libaot-Telerik.Documents.DrawingML.dll.so\00", align 1
@.DSOCacheEntry.37_name = private unnamed_addr constant [65 x i8] c"libaot-Telerik.Documents.Fixed.FormatProviders.Image.Skia.dll.so\00", align 1
@.DSOCacheEntry.38_name = private unnamed_addr constant [38 x i8] c"libaot-Telerik.Documents.Fixed.dll.so\00", align 1
@.DSOCacheEntry.39_name = private unnamed_addr constant [57 x i8] c"libaot-Telerik.Documents.Flow.FormatProviders.Doc.dll.so\00", align 1
@.DSOCacheEntry.40_name = private unnamed_addr constant [57 x i8] c"libaot-Telerik.Documents.Flow.FormatProviders.Pdf.dll.so\00", align 1
@.DSOCacheEntry.41_name = private unnamed_addr constant [37 x i8] c"libaot-Telerik.Documents.Flow.dll.so\00", align 1
@.DSOCacheEntry.42_name = private unnamed_addr constant [68 x i8] c"libaot-Telerik.Documents.Spreadsheet.FormatProviders.OpenXml.dll.so\00", align 1
@.DSOCacheEntry.43_name = private unnamed_addr constant [64 x i8] c"libaot-Telerik.Documents.Spreadsheet.FormatProviders.Pdf.dll.so\00", align 1
@.DSOCacheEntry.44_name = private unnamed_addr constant [64 x i8] c"libaot-Telerik.Documents.Spreadsheet.FormatProviders.Xls.dll.so\00", align 1
@.DSOCacheEntry.45_name = private unnamed_addr constant [44 x i8] c"libaot-Telerik.Documents.Spreadsheet.dll.so\00", align 1
@.DSOCacheEntry.46_name = private unnamed_addr constant [53 x i8] c"libaot-Telerik.Documents.SpreadsheetStreaming.dll.so\00", align 1
@.DSOCacheEntry.47_name = private unnamed_addr constant [36 x i8] c"libaot-Telerik.Android.Chart.dll.so\00", align 1
@.DSOCacheEntry.48_name = private unnamed_addr constant [37 x i8] c"libaot-Telerik.Android.Common.dll.so\00", align 1
@.DSOCacheEntry.49_name = private unnamed_addr constant [35 x i8] c"libaot-Telerik.Android.Data.dll.so\00", align 1
@.DSOCacheEntry.50_name = private unnamed_addr constant [36 x i8] c"libaot-Telerik.Android.Input.dll.so\00", align 1
@.DSOCacheEntry.51_name = private unnamed_addr constant [35 x i8] c"libaot-Telerik.Android.List.dll.so\00", align 1
@.DSOCacheEntry.52_name = private unnamed_addr constant [41 x i8] c"libaot-Telerik.Android.Primitives.dll.so\00", align 1
@.DSOCacheEntry.53_name = private unnamed_addr constant [50 x i8] c"libaot-Telerik.Maui.Controls.Compatibility.dll.so\00", align 1
@.DSOCacheEntry.54_name = private unnamed_addr constant [36 x i8] c"libaot-Telerik.Maui.Controls.dll.so\00", align 1
@.DSOCacheEntry.55_name = private unnamed_addr constant [32 x i8] c"libaot-Telerik.Maui.Core.dll.so\00", align 1
@.DSOCacheEntry.56_name = private unnamed_addr constant [26 x i8] c"libaot-Telerik.Zip.dll.so\00", align 1
@.DSOCacheEntry.57_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@.DSOCacheEntry.58_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@.DSOCacheEntry.59_name = private unnamed_addr constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@.DSOCacheEntry.60_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@.DSOCacheEntry.61_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 1
@.DSOCacheEntry.62_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@.DSOCacheEntry.63_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@.DSOCacheEntry.64_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 1
@.DSOCacheEntry.65_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@.DSOCacheEntry.66_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@.DSOCacheEntry.67_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1
@.DSOCacheEntry.68_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@.DSOCacheEntry.69_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@.DSOCacheEntry.70_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@.DSOCacheEntry.71_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 1
@.DSOCacheEntry.72_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@.DSOCacheEntry.73_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 1
@.DSOCacheEntry.74_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 1
@.DSOCacheEntry.75_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 1
@.DSOCacheEntry.76_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 1
@.DSOCacheEntry.77_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@.DSOCacheEntry.78_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@.DSOCacheEntry.79_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so\00", align 1
@.DSOCacheEntry.80_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@.DSOCacheEntry.81_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@.DSOCacheEntry.82_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 1
@.DSOCacheEntry.83_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@.DSOCacheEntry.84_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.Google.Crypto.Tink.Android.dll.so\00", align 1
@.DSOCacheEntry.85_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 1
@.DSOCacheEntry.86_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 1
@.DSOCacheEntry.87_name = private unnamed_addr constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@.DSOCacheEntry.88_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@.DSOCacheEntry.89_name = private unnamed_addr constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@.DSOCacheEntry.90_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@.DSOCacheEntry.91_name = private unnamed_addr constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@.DSOCacheEntry.92_name = private unnamed_addr constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@.DSOCacheEntry.93_name = private unnamed_addr constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 1
@.DSOCacheEntry.94_name = private unnamed_addr constant [52 x i8] c"libaot-System.ComponentModel.EventBasedAsync.dll.so\00", align 1
@.DSOCacheEntry.95_name = private unnamed_addr constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@.DSOCacheEntry.96_name = private unnamed_addr constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@.DSOCacheEntry.97_name = private unnamed_addr constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@.DSOCacheEntry.98_name = private unnamed_addr constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@.DSOCacheEntry.99_name = private unnamed_addr constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@.DSOCacheEntry.100_name = private unnamed_addr constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 1
@.DSOCacheEntry.101_name = private unnamed_addr constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@.DSOCacheEntry.102_name = private unnamed_addr constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@.DSOCacheEntry.103_name = private unnamed_addr constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@.DSOCacheEntry.104_name = private unnamed_addr constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@.DSOCacheEntry.105_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 1
@.DSOCacheEntry.106_name = private unnamed_addr constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@.DSOCacheEntry.107_name = private unnamed_addr constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@.DSOCacheEntry.108_name = private unnamed_addr constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@.DSOCacheEntry.109_name = private unnamed_addr constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 1
@.DSOCacheEntry.110_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@.DSOCacheEntry.111_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Mail.dll.so\00", align 1
@.DSOCacheEntry.112_name = private unnamed_addr constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 1
@.DSOCacheEntry.113_name = private unnamed_addr constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 1
@.DSOCacheEntry.114_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@.DSOCacheEntry.115_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@.DSOCacheEntry.116_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 1
@.DSOCacheEntry.117_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 1
@.DSOCacheEntry.118_name = private unnamed_addr constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 1
@.DSOCacheEntry.119_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.WebClient.dll.so\00", align 1
@.DSOCacheEntry.120_name = private unnamed_addr constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 1
@.DSOCacheEntry.121_name = private unnamed_addr constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 1
@.DSOCacheEntry.122_name = private unnamed_addr constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@.DSOCacheEntry.123_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1
@.DSOCacheEntry.124_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@.DSOCacheEntry.125_name = private unnamed_addr constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@.DSOCacheEntry.126_name = private unnamed_addr constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 1
@.DSOCacheEntry.127_name = private unnamed_addr constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@.DSOCacheEntry.128_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@.DSOCacheEntry.129_name = private unnamed_addr constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@.DSOCacheEntry.130_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@.DSOCacheEntry.131_name = private unnamed_addr constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 1
@.DSOCacheEntry.132_name = private unnamed_addr constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 1
@.DSOCacheEntry.133_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@.DSOCacheEntry.134_name = private unnamed_addr constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 1
@.DSOCacheEntry.135_name = private unnamed_addr constant [46 x i8] c"libaot-System.Threading.Tasks.Parallel.dll.so\00", align 1
@.DSOCacheEntry.136_name = private unnamed_addr constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@.DSOCacheEntry.137_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 1
@.DSOCacheEntry.138_name = private unnamed_addr constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@.DSOCacheEntry.139_name = private unnamed_addr constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 1
@.DSOCacheEntry.140_name = private unnamed_addr constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@.DSOCacheEntry.141_name = private unnamed_addr constant [21 x i8] c"libaot-System.dll.so\00", align 1
@.DSOCacheEntry.142_name = private unnamed_addr constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@.DSOCacheEntry.143_name = private unnamed_addr constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@.DSOCacheEntry.144_name = private unnamed_addr constant [34 x i8] c"libaot-Mono.Android.Export.dll.so\00", align 1
@.DSOCacheEntry.145_name = private unnamed_addr constant [35 x i8] c"libaot-Mono.Android.Runtime.dll.so\00", align 1
@.DSOCacheEntry.146_name = private unnamed_addr constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@.DSOCacheEntry.147_name = private unnamed_addr constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1

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
