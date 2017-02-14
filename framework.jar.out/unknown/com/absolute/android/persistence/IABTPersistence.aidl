/**
 * IABTPersistence.aidl
 *
 * Copyright (c) Absolute Software, 2011-2015. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.IABTPersistedFile;
import com.absolute.android.persistence.IABTPersistenceLog;
import com.absolute.android.persistence.IABTPing;
import com.absolute.android.persistence.IABTResultReceiver;
import com.absolute.android.persistence.IABTGetAppInfoReceiver;
import com.absolute.android.persistence.IABTDownloadReceiver;
import com.absolute.android.persistence.AppProfile;
import com.absolute.android.persistence.MethodSpec;
import com.absolute.android.persistence.MethodReturnValue;

/**
 * This interface allows applications to interact with the Absolute
 * Persistence Service, including: getting and setting the current persistence 
 * state; specifying applications to be installed, and optionally started, 
 * persisted and monitored; and dynamically executing arbitrary methods as
 * as a system privileged process on behalf of the invoker.
 *
 * Note that use of this interface is restricted to applications that are 
 * signed with either the Absolute certificate or the system certificate.
 * Attempts to invoke any of the interface methods by any other applications
 * will result in a java.lang.SecurityException being thrown.
 *
 * Users of this interface should do so via the java class
 * {@link com.absolute.android.persistence.ABTPersistenceManager}.
 * Refer to this class for the API documentation.
 *
 */
interface IABTPersistence {

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getState()}
    */
    int getState();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#setState(int)}
    */
    void setState(in int newState);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getVersion()}
    */
    int getVersion();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getLog(String)}
    */
    IABTPersistenceLog getLog(in String logName);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#install(AppProfile, String, IABTResultReceiver)}
    */
     void install(
        in AppProfile appProfile,
        in String apkPath,
        in IABTResultReceiver resultReceiver);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#uninstall(String, boolean, IABTResultReceiver)}
    */
    void uninstall(
        in String packageName,
        in boolean deletePersistedFiles,
        in IABTResultReceiver resultReceiver);
 
   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getAllApplicationProfiles()}
    */
    AppProfile[] getAllApplicationProfiles();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getApplicationProfile(String)}
    */
    AppProfile getApplicationProfile(in String packageName);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#setApplicationProfile(AppProfile)}
    */
    void setApplicationProfile(in AppProfile appProfile);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#setPersistence(String, boolean)}
    */
    void setPersistence(
        in String packageName,
        in boolean onState);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#setAllPersistence(boolean)}
    */
    void setAllPersistence(in boolean onState);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getPersistedAppCount()}
    */
    int getPersistedAppCount();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#invokeMethodAsSystem(MethodSpec, IABTResultReceiver)}
    */
    void invokeMethodAsSystem(
        in MethodSpec methodSpec, 
        in IABTResultReceiver resultReceiver);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#registerPing(String, IABTPing, int)}
    */
    void registerPing(
        in String packageName,
        in IABTPing pingCallback,
        in int pingIntervalSecs);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#unregisterPing(String)}
    */
    void unregisterPing(in String packageName);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getPersistedFile(String, String, boolean)}
    */
    IABTPersistedFile getPersistedFile(
        in String packageName,
        in String fileName,
        in boolean append);
 
   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getDeviceId()}
    */
    String getDeviceId();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#refreshDeviceId()}
    */
    void refreshDeviceId(); 

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#testFirmwareUpdate()}
    */
    void testFirmwareUpdate();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getDiagnostics()}
    */
    String getDiagnostics();

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getAppInfo(String, String, String updateUrl, String updateIpAddress, IABTGetAppInfoReceiver)}
    * New version, getAppInfo_v2 added in APS v3133. 
    */
    void getAppInfo(
        in String packageName,
        in String accessKey,
        in String updateUrl,
        in String updateIpAddress,
        in IABTGetAppInfoReceiver appInfoResult);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#downloadApk(String, int, String, String, String, IABTDownloadReceiver, int)}
    * New version, downloadApk_v2 added in APS v3133. 
    */
    void downloadApk(
        in String packageName,
        in int version,
        in String downloadUrl,
        in String downloadIpAddress,
        in String digitalSignature,
        in IABTDownloadReceiver downloadReceiver,
        in int progresskB);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#persistApp(AppProfile)}
    */
    void persistApp(in AppProfile appProfile);
    
   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getSystemFile(String, boolean)}
    */
    IABTPersistedFile getSystemFile(
        in String path,
        in boolean append);
        
	/**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#getAppInfo(String, String, String updateUrl, String updateIpAddress, String updateHostSPKIHash, IABTGetAppInfoReceiver)}
    */
    void getAppInfo_v2(
        in String packageName,
        in String accessKey,
        in String updateUrl,
        in String updateIpAddress,
		in String updateHostSPKIHash,
        in IABTGetAppInfoReceiver appInfoResult);

   /**
    * see {@link com.absolute.android.persistence.ABTPersistenceManager#downloadApk(String, int, String, String, String, String, IABTDownloadReceiver, int)}
    */
    void downloadApk_v2(
        in String packageName,
        in int version,
        in String downloadUrl,
        in String downloadIpAddress,
        in String downloadHostSPKIHash,
        in String digitalSignature,
        in IABTDownloadReceiver downloadReceiver,
        in int progresskB);
        
}
