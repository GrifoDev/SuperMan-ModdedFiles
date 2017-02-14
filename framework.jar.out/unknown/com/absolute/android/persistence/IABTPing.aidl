/**
 * IABTPing.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;

/**
 * This interface provides a ping callback method. If monitoring is enabled, the 
 * Persistence Service will periodically invoke this method to check that the application
 * is healthy. Refer to the associated parameters specified in the register
 * ping method {@link ABTPersistenceManager#registerPing(String, IABTPing, int)}.
 */
interface IABTPing {

	/**
     * Pings the application to check that it is alive and responsive. 
     * Implement this method to just return {@code true}. Do not throw any
     * exceptions.
	 *
	 * @return {@code true} if healthy.
	 * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    boolean ping();

}
