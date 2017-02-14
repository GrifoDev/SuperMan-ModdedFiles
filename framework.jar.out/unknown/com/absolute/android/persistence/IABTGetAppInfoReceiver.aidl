/**
 * IABTGetAppInfoReceiver.aidl
 *
 * Copyright (c) Absolute Software, 2013. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.AppInfoProperties;

/**
 * This interface provides a callback to receive notifications of the
 * completion of asynchronous GetAppInfo requests to the server.
 *
 * See {@link ABTPersistenceManager#getAppInfo(String, String, String, String, IABTGetAppInfoReceiver)}.
 *  
 */
interface IABTGetAppInfoReceiver {

    /**
     * Called when an asynchronous GetAppInfo request completes to provide information 
     * about application APKs that are available for download  
     * {@link ABTPersistenceManager#getAppInfo(String, String, String, String, IABTGetAppInfoReceiver)}.
     *
     * When implementing this callback method, do not invoke any long running or blocking 
     * functions.
     *
     * @param succeeded {@code true} if the operation succeeded or {@code false} if it
     *     failed.
     *
     * @param packageName The package name of the application for which the information was requested.
     *
     * @param appInfo The {@link AppInfoProperties} object describing the application APK that is available 
     * for download. This is only valid if succeeded is true, otherwise it will be null.
     *
     * @param errorMessage A failure message describing the reason for the failure if 
     *    succeeded is {@code false}. Null if the operation succeeded.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void onGetAppInfoResult(
        in boolean succeeded,
        in String packageName,
        in AppInfoProperties appInfo, 
        in String errorMessage);
        
}
