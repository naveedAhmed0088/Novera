package crc643961f13c85a497f7;


public class AndroidRendererBase_2
	extends crc64e1fb321c08285b90.ViewRenderer_2
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onMeasure:(II)V:GetOnMeasure_IIHandler\n" +
			"";
		mono.android.Runtime.register ("Telerik.Maui.Controls.Compatibility.Common.Android.AndroidRendererBase`2, Telerik.Maui.Controls.Compatibility", AndroidRendererBase_2.class, __md_methods);
	}


	public AndroidRendererBase_2 (android.content.Context p0, android.util.AttributeSet p1, int p2, int p3)
	{
		super (p0, p1, p2, p3);
		if (getClass () == AndroidRendererBase_2.class) {
			mono.android.TypeManager.Activate ("Telerik.Maui.Controls.Compatibility.Common.Android.AndroidRendererBase`2, Telerik.Maui.Controls.Compatibility", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2, p3 });
		}
	}


	public AndroidRendererBase_2 (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == AndroidRendererBase_2.class) {
			mono.android.TypeManager.Activate ("Telerik.Maui.Controls.Compatibility.Common.Android.AndroidRendererBase`2, Telerik.Maui.Controls.Compatibility", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public AndroidRendererBase_2 (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == AndroidRendererBase_2.class) {
			mono.android.TypeManager.Activate ("Telerik.Maui.Controls.Compatibility.Common.Android.AndroidRendererBase`2, Telerik.Maui.Controls.Compatibility", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public AndroidRendererBase_2 (android.content.Context p0)
	{
		super (p0);
		if (getClass () == AndroidRendererBase_2.class) {
			mono.android.TypeManager.Activate ("Telerik.Maui.Controls.Compatibility.Common.Android.AndroidRendererBase`2, Telerik.Maui.Controls.Compatibility", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public void onMeasure (int p0, int p1)
	{
		n_onMeasure (p0, p1);
	}

	private native void n_onMeasure (int p0, int p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
