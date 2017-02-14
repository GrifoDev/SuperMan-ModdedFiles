/**
 * AppInfoProperties.aidl
 *
 * Copyright (c) Absolute Software, 2013. All rights reserved.
 */

package com.absolute.android.persistence;

/* We just need to declare this class as parcelable here to keep the AIDL 
 * compiler happy, otherwise it complains that it cannot find the import for
 * the AppInfoProperties class in IABTPersistence.aidl.
 */
 
parcelable AppInfoProperties;

