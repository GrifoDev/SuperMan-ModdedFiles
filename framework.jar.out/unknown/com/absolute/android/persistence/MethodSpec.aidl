/**
 * MethodSpec.aidl
 *
 * © Absolute Software, 2011
 * Confidential and proprietary.
 */

package com.absolute.android.persistence;

/* We just need to declare this class as parcelable here to keep the AIDL 
 * compiler happy, otherwise it complains that it cannot find the import for
 * the MethodSpec class in IABTPersistence.aidl.
 */
 
parcelable MethodSpec;

