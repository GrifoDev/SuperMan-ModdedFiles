/**
 * LogEntry.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;

/* We just need to declare this class as parcelable here to keep the AIDL 
 * compiler happy, otherwise it complains that it cannot find the import for
 * the LogEntry class in IABTPersistence.aidl.
 */
 
parcelable LogEntry;

