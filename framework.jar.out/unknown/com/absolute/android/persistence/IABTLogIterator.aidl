/**
 * IABTLogIterator.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.LogEntry;

/**
 * This interface provides functionality to retrieve the next batch of log entries from the
 * Persistence Service log. 
 *
 * Use the {@link IABTPersistenceLog#getIterator } method to obtain an iterator object 
 * that implements this interface.
 */
interface IABTLogIterator {

    /**
     * Gets the next batch of {@link LogEntry} objects from the Persistence Service Log.
     *
     * @param maxEntries The maximum number of log entries to return in this call.
     *
     * @return An array of {@link LogEntry} objects. The Log Entries which match the 
     * minimum severity value specified in the {@link IABTPersistenceLog#getIterator(int)}
     * call are returned in chronological order. The returned array may contain less than 
     * maxEntries elements if the end of the log is reached. Null is returned if there are
     * no more entries to return. Hence typically this method would be invoked in a while
     * loop e.g.,
     * <pre>
     * {@code
     * 	IABTLogIterator iterator = log.getIterator(Log.WARN);
     *  LogEntry[] logEntries = null;
     *  while ((logEntries = iterator.getNext(100)) != null) {
     *	    for (LogEntry logEntry : logEntries) {
     *          Calendar timeStamp = logEntry.getTimeStampUTC();
     *          String logMessage = logEntry.getMessage();
     *          ....
     *      }
     *  }
     * }
     * </pre>
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    LogEntry[] getNext(in int maxEntries);

}


