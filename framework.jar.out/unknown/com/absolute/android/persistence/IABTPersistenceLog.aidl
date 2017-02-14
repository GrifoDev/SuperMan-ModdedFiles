/**
 * IABTPersistenceLog.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.IABTLogIterator;

/**
 * This interface provides functionality to access and manage the Persistence Service Log.
 * Use the {@link ABTPersistenceManager#getLog } method to obtain an object that implements 
 * this interface.
 */
interface IABTPersistenceLog {

    /**
     * Gets an iterator for retrieving the Persistence Service log entries. 
     * 
     * @param minSeverityLevel The minimum severity level to use as a filter.
     * For example, use:
     * <pre>
     *  {@code android.util.Log.ERROR} to get just errors; or 
     *  {@code android.util.Log.WARN} to get warnings and errors; or
     *  {@code android.util.Log.INFO} to get info, warnings and errors; or
     *  {@code android.util.Log.DEBUG} to get debug, info, warnings and errors; or
     *  {@code android.util.Log.VERBOSE} or 0 to get all log entries.  
     * </pre>
     * <p>
     *
     * @return Returns a {@link IABTLogIterator} whose getNext() method can be used to
     * obtain the next batch of log entries as an array of {@link LogEntry} items.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    IABTLogIterator getIterator(in int minSeverityLevel);

    /**
     * Logs a message with the specified severity. The message will be given the
     * timestamp of the current time. 
     *
     * Messages are logged in a set of rotating log files in the "persisted partition".
     * 
     * @param severity The severity of the message, one of:
     * <pre>
     *  {@code android.util.Log.ERROR} or 
     *  {@code android.util.Log.WARN} or 
     *  {@code android.util.Log.INFO} or
     *  {@code android.util.Log.DEBUG} or
     *  {@code android.util.Log.VERBOSE}. 
     * </pre>
     * <p>
     *
     * @param method The name of the method which created the log entry. Specify an
     * empty string "" or null if you don't wish to use this field. 
     * 
     * @param message The message to be logged.
     *
     * @throws IllegalArgumentException in an invalid severity level is passed in.
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void logMessage(in int severity, in String method, in String message);

    /**
     * Clears the Persistence Service log, purging all its contents. 
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void clear();
    
    /**
     * Sets the maximum size of the Persistence Service log. 
     * 
     * @param numLogs The maximum number of rotating logs to be used.
     * 
     * @param maxSizeKB The maximum size of the log before it is rotated.
     * When the current log reaches this size, it is rotated to use the next
     * log file up to the specified numLogs. Once all are full, the oldest
     * log will be purged to make space for new log entries. Hence the
     * total maximum size of the log data is numLogs * maxSizeKB.
     * 
     * Note that changing the numLog and maxSizeKB values will only take
     * affect when the next log rotation occurs.   
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    void setSize(in int numLogs, in int maxSizeKB);
    
    /**
     * Gets the number of rotating log files. 
     * 
     * See also {@link IABTPersistenceLog#setSize(int, int)} 
     *
     * @return The number of rotating logs.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    int getNumberOfLogs();
    
    /**
     * Gets the maximum size (in kilobytes) of each log file. 
     * 
     * See also {@link IABTPersistenceLog#setSize(int, int)} 
     *
     * @return The maximum allowed sized of each of the log files.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.
     */ 
    int getMaxLogSizeKB();
}
