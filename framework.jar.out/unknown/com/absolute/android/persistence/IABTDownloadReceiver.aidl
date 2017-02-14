/**
 * IABTDownloadReceiver.aidl
 *
 * Copyright (c) Absolute Software, 2013. All rights reserved.
 */

package com.absolute.android.persistence;


/**
 * This interface provides a callback to receive notifications of progress and 
 * completion of asynchronous requests to the server to download an APK.
 *
 * See {@link ABTPersistenceManager#downloadApk(String, int, String, String, String, IABTDownloadReceiver, int)}.
 *  
 */
interface IABTDownloadReceiver {

    /**
     * Called to provide updates on the progress of requests to download application APKs from the server
     * at the interval specified by the progressIntervalKb argument in the 
     * {@link ABTPersistenceManager#downloadApk(String, int, String, String, String, IABTDownloadReceiver, int)}
     * request.
     *
     * When implementing this callback method, do not invoke any long running or blocking 
     * functions.
     *
     * @param packageName The package name of the application that is being downloaded.
     *
     * @param version The version number (Android versionCode) code of the application that is being downloaded.
     *
     * @param totalBytes The size of the file being downloaded in bytes.
     *
     * @param downloadedBytes The number of bytes that have been downloaded.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void onDownloadProgress(
        in String packageName,
        in int version,
        in int totalBytes,
        in int downloadedBytes);
        
    /**
     * Called to provide notification of the completion of requests to download application APKs 
     * from the server.
     * {@link ABTPersistenceManager#downloadApk(String, int, String, String, String, IABTDownloadReceiver, int)}.
     *
     * When implementing this callback method, do not invoke any long running or blocking 
     * functions.
     *
     * @param succeeded {@code true} if the download succeeded or {@code false} if it
     *     failed.
     *
     * @param packageName The package name of the downloaded application.
     *
     * @param version The version number (Android versionCode) code of the downloaded application.
     *
     * @param apkPath The path to the location on the device file system where the APK has been
     * downloaded to. This will be null if the download failed.
     *
     * @param errorMessage A failure message describing the reason for the failure if 
     *    succeeded is {@code false}. Null if the download succeeded.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void onDownloadResult(
        in boolean succeeded,
        in String packageName,
        in int version,
        in String apkPath, 
        in String errorMessage);
}
