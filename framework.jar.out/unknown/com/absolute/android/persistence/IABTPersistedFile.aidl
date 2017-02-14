/**
 * IABTPersistedFile.aidl
 *
 * Copyright © Absolute Software, 2011. All rights reserved.
 */

package com.absolute.android.persistence;


/**
 * This interface provides functionality to access files that are stored in the 
 * 'persistent partition' of the device that survives factory reset.
 *
 * Use the {@link ABTPersistenceManager#getPersistedFile(String, String, boolean) }
 * method to obtain an object that implements this interface.
 */
interface IABTPersistedFile {

    /**
     * Returns whether the file already exists in the "persistent partition".
     *
     * See also {@link java.io.File#exists()}.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.       
     */
    boolean exists();
     
    /**
     * Writes the specified bytes to the file in the "persistent partition".
     *
     * See also {@link java.io.FileOutputStream#write(byte[])}.
     * 
     * @param buffer The byte array of data to be written to the file stream. 
     * 
     * @return The number of bytes actually written, or -1 if there was an error
     * writing to the file. 
     *
     * @throws android.os.RemoteException if there was an RPC failure.       
     */
    int write(in byte[] buffer); 

    /**
     * Writes 'byteCount' bytes from the byte array buffer starting at position 'offset' to 
     * the file in the "persistent partition".
     *
     * See also {@link java.io.FileOutputStream#write(byte[], int, int)}.
     * 
     * @param buffer The byte array of data to be written to the file stream. 
     *
     * @param offset The start position in buffer from where to get bytes.
     *
     * @param byteCount The number of bytes from buffer to write to the file stream.
     * 
     * @return The number of bytes actually written, or -1 if there was an error
     * writing to the file.
     *
     * @throws android.os.RemoteException if there was an RPC failure.       
     */
    int writeWithCount(in byte[] buffer, in int offset, in int byteCount); 
             
    /**
     * Reads bytes from the file in the "persistent partition" of the device and stores
     * them in the buffer.
     *
     * See also {@link java.io.FileInputStream#read(byte[])}.
     *
     * @param buffer The byte array in which to store the data read from the file stream. 
     *
     * @return The number of bytes actually read or -1 if the end of the file has
     * been reached, or the file could not be read e.g., because it does not exist.
     *
     * @throws android.os.RemoteException if there was an RPC failure.              
     */
    int read(inout byte[] buffer);
         
    /**
     * Skips at most 'byteCount' bytes in the file being read. This method does nothing 
     * and returns 0 if 'byteCount' is negative. It only pertains to reading from the 
     * file and has no affect on writing to it.
     * 
     * See {@link java.io.FileInputStream#skip(long)}.
     *
     * @param byteCount The number of bytes to skip in the read file stream.
     *
     * @return The number of bytes actually skipped, or -1 if an error occurs while skipping 
     * bytes in the file, e.g., because the file does not exist.    
     *
     * @throws android.os.RemoteException if there was an RPC failure.  
     */
    long skip(in long byteCount); 

    /**
     * Closes the file and frees up any resources associated with accessing it. This method
     * should be called after completing the file reads/writes, otherwise it will be called 
     * IABTPersistedFile object is garbage collected.
     *
     * See also {@link java.io.FileInputStream#close()} and 
     * {@link java.io.FileOutputStream#close()}.
     * 
     * @throws android.os.RemoteException if there was an RPC failure.       
     */
	void close();
	
	/**
     * Deletes the file. 
     *
     * See also {@link java.io.File#delete()}.
     * 
     * @return {@code true} if the file was deleted.
     *
     * @throws android.os.RemoteException if there was an RPC failure.       
     */
    boolean delete();
}
