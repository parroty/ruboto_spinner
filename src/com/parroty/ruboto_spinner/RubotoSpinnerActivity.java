package com.parroty.ruboto_spinner;

import android.os.Bundle;

public class RubotoSpinnerActivity extends org.ruboto.EntryPointActivity {
	public void onCreate(Bundle bundle) {
		getScriptInfo().setRubyClassName(getClass().getSimpleName());
	    super.onCreate(bundle);
	}
}
