/**
 * IABTResultReceiver.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.MethodSpec;
import com.absolute.android.persistence.MethodReturnValue;

/**
 * This interface provides a callback to receive notifications of the results of 
 * completion of an asynchronous install or uninstall operation, or the results of 
 * asynchronous invocation of invokeMethodAsSystem.
 * 
 * See {@link ABTPersistenceManager#install(AppProfile, String, IABTResultReceiver)},
 * {@link ABTPersistenceManager#uninstall(String, boolean, IABTResultReceiver)} and 
 * {@link ABTPersistenceManager#invokeMethodAsSystem(MethodSpec, IABTResultReceiver)}.
 *  
 */
interface IABTResultReceiver {

    /**
     * Called when the results of an asynchronous operation such as the install 
     * {@link ABTPersistenceManager#install(AppProfile, String, IABTResultReceiver)},
     * or uninstall {@link ABTPersistenceManager#uninstall(String, boolean, IABTResultReceiver)} 
     * of an application are ready (i.e., the operation has completed). 
     *
     * When implementing this callback method, do not invoke any long running or blocking 
     * functions.
     *
     * @param operationId The ID of the operation for which this is the result
     *	e.g., {@link ABTPersistenceManager#OP_INSTALL} or {@link ABTPersistenceManager#OP_UNINSTALL}
     *
     * @param succeeded {@code true} if the operation succeeded or {@code false} if it
     *	 failed.
     *
     * @param packageName The package name of the application on which the operation was
     *	performed e.g., the package that was installed/uninstalled.
     *
     * @param errorMessage A failure message describing the reason for the failure if 
     *	succeeded is {@code false}. Null if the operation succeeded.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void onOperationResult(
    	in int operationId,
    	in boolean succeeded,
    	in String packageName,
    	in String errorMessage);
    	
    /**
     * Called when the results of an invocation of the invokeMethodAsSystem() function
     * see {@link ABTPersistenceManager#invokeMethodAsSystem(MethodSpec, IABTResultReceiver)}.
     *
     * When implementing this callback method, do not invoke any long running or blocking 
     * functions.
     *
     * @param methodSpec The specification of the method that was invoked, see 
     *	{@link com.absolute.android.persistence.MethodSpec }
     *
     * @param methodReturnValue The return value of the method invocation, see 
     *	{@link com.absolute.android.persistence.MethodReturnValue }
     *
     * @param succeeded {@code true} if the method invocation operation succeeded 
     *	(it completed without an exception) or {@code false} if it failed (threw
     *	an exception).
     *
     * @param errorMessage The exception message describing the reason for the failure if 
     *	succeeded is {@code false}. Null if the operation succeeded.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void onInvokeResult(
    	in MethodSpec methodSpec,
    	in MethodReturnValue methodReturnValue,
    	in boolean succeeded,
    	in String errorMessage);    	
}
