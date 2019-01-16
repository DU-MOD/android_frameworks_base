/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.service.contentcapture;

import android.content.ComponentName;
import com.android.internal.os.IResultReceiver;

import java.util.List;

/**
 * Interface from the Content Capture service to the system.
 *
 * @hide
 */
oneway interface IContentCaptureServiceCallback {
    void setContentCaptureWhitelist(in List<String> packages, in List<ComponentName> activities);
    void setActivityContentCaptureEnabled(in ComponentName activity, boolean enabled);
    void setPackageContentCaptureEnabled(in String packageName, boolean enabled);
    void getContentCaptureDisabledActivities(in IResultReceiver receiver);
    void getContentCaptureDisabledPackages(in IResultReceiver receiver);
}
