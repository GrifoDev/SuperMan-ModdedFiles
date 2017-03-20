.class public Lcom/yulore/android/common/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 206
    if-nez p0, :cond_0

    move v2, v6

    .line 242
    :goto_0
    return v2

    .line 210
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    .line 211
    goto :goto_0

    .line 214
    :cond_1
    if-nez p2, :cond_2

    move v2, v6

    .line 215
    goto :goto_0

    .line 218
    :cond_2
    const/4 v2, 0x0

    .line 219
    .local v2, "flag":Z
    const/4 v3, 0x0

    .line 220
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 222
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 223
    const-string v7, "YuloreIVRCommon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyAssetsFile mkdirs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 230
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, v5}, Lcom/yulore/android/common/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    const/4 v2, 0x1

    .line 239
    new-array v7, v11, [Ljava/io/Closeable;

    aput-object v3, v7, v6

    aput-object v5, v7, v10

    invoke-static {v7}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    move-object v4, v5

    .line 240
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 236
    .end local v0    # "destFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v7, "YuloreIVRCommon"

    const-string v8, "copyAssetsFile error"

    invoke-static {v7, v8, v1}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    new-array v7, v11, [Ljava/io/Closeable;

    aput-object v3, v7, v6

    aput-object v4, v7, v10

    invoke-static {v7}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    new-array v8, v11, [Ljava/io/Closeable;

    aput-object v3, v8, v6

    aput-object v4, v8, v10

    invoke-static {v8}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw v7

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v0    # "destFile":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 236
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static copyOfflinePacket(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0, "packetDir"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 255
    :cond_0
    const-string v9, "YuloreIVRCommon"

    const-string v10, " new offline packet path is not exists "

    invoke-static {v9, v10}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v3, 0x0

    .line 309
    :goto_0
    return v3

    .line 259
    :cond_1
    const/4 v3, 0x0

    .line 260
    .local v3, "flag":Z
    const/4 v4, 0x0

    .line 261
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 264
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 266
    const-string v9, "YuloreIVRCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy offline data file mkdirs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-static {p0}, Lcom/yulore/android/common/util/FileUtils;->getOfflineFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 272
    const/4 v3, 0x0

    .line 306
    .end local v3    # "flag":Z
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    .line 275
    .restart local v3    # "flag":Z
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v0, "destFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v8, "targetFile":Ljava/io/File;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 295
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 297
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v5, v7}, Lcom/yulore/android/common/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 299
    const/4 v3, 0x1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 306
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_4
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0

    .line 303
    .end local v0    # "destFile":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v8    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v9, "YuloreIVRCommon"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyOfflinePacket error msg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw v9

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v0    # "destFile":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "targetFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 303
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static cp(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 75
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "deleteFile the file is null"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v8

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v2, v8

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 83
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteFile the file is not exist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v8

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_5

    .line 89
    :cond_4
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteFile has no permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v8

    .line 91
    goto :goto_0

    .line 94
    :cond_5
    const/4 v2, 0x0

    .line 96
    .local v2, "flag":Z
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 98
    const/4 v4, 0x0

    .line 99
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 101
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v5, v7}, Lcom/yulore/android/common/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    const/4 v2, 0x1

    .line 113
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 114
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v4, v9, v8

    aput-object v6, v9, v11

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v4, v9, v8

    aput-object v6, v9, v11

    invoke-static {v9}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    new-array v10, v10, [Ljava/io/Closeable;

    aput-object v4, v10, v8

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw v9

    .line 115
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 123
    .local v1, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-eqz v1, :cond_8

    array-length v8, v1

    if-ge v3, v8, :cond_8

    .line 125
    aget-object v8, v1, v3

    new-instance v9, Ljava/io/File;

    aget-object v10, v1, v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/yulore/android/common/util/FileUtils;->cp(Ljava/io/File;Ljava/io/File;)Z

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 127
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 113
    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 110
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 108
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static delete(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 480
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    .local v1, "iFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v1    # "iFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "YuloreIVRCommon"

    const-string v3, "Exception: Unable to delete file properly "

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 6
    .param p0, "targetFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p0, :cond_1

    .line 154
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "deleteFile the file is null"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile the file is not exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile has no permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v1, 0x0

    .line 171
    .local v1, "flag":Z
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 174
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 177
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 180
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deleteDat(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 444
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v4, "iFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    invoke-static {v4}, Lcom/yulore/android/common/util/FileUtils;->getStream(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "datNames":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    .line 459
    const-string v5, "YuloreIVRCommon"

    const-string v6, " read the data from delete.json is empty "

    invoke-static {v5, v6}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v0    # "array":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "YuloreIVRCommon"

    const-string v6, " JSONException: Unable to read the data from delete.json "

    invoke-static {v5, v6}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 507
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 512
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 518
    .local v1, "folders":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-eqz v4, :cond_0

    .line 522
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 523
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 524
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 525
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    .line 529
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 530
    const-string v4, "YuloreIVRCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " delete file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 534
    :cond_3
    const-string v4, "YuloreIVRCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " delete folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 522
    .end local v0    # "files":[Ljava/io/File;
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAssetsFileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 380
    if-nez p0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v4

    .line 385
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 386
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "files":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 388
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 389
    aget-object v5, v2, v3

    const-string v6, "ivr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    const-string v5, "YuloreIVRCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getAssetsFileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    aget-object v4, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "YuloreIVRCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getAssetsFileName error msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 8
    .param p0, "zipFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v6

    .line 66
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 46
    .local v3, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .local v4, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    .line 50
    .local v5, "lenght":I
    new-array v0, v5, [B

    .line 52
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    const/4 v3, 0x0

    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 62
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .restart local v4    # "inStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 54
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "lenght":I
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e1":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 61
    const/4 v3, 0x0

    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :goto_2
    move-object v0, v6

    .line 66
    goto :goto_0

    .line 62
    .restart local v2    # "e1":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 61
    const/4 v3, 0x0

    goto :goto_2

    .line 62
    :catch_4
    move-exception v1

    .line 63
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 60
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 61
    const/4 v3, 0x0

    .line 64
    :goto_5
    throw v6

    .line 62
    :catch_5
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .restart local v4    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "inStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 56
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .restart local v4    # "inStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 54
    .end local v3    # "inStream":Ljava/io/FileInputStream;
    .restart local v4    # "inStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "inStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getNumFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    const-string v3, "\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 549
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 550
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 552
    .local v2, "result":I
    goto :goto_0
.end method

.method public static getOfflineFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "packetFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 358
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v3

    .line 363
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 365
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 366
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 367
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ivr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    const-string v4, "YuloreIVRCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " new offline packet file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 366
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "YuloreIVRCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getOfflineFileName error msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getStream(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "iFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 410
    if-nez p0, :cond_0

    move-object v3, v6

    .line 440
    :goto_0
    return-object v3

    .line 414
    :cond_0
    const/4 v2, 0x0

    .line 418
    .local v2, "names":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 419
    .local v5, "stream":Ljava/io/FileInputStream;
    if-nez v5, :cond_1

    move-object v3, v6

    .line 420
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 424
    .local v4, "size":I
    new-array v0, v4, [B

    .line 426
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 427
    new-instance v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v3, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    .end local v2    # "names":Ljava/lang/String;
    .local v3, "names":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 431
    .end local v0    # "buffer":[B
    .end local v3    # "names":Ljava/lang/String;
    .end local v4    # "size":I
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "names":Ljava/lang/String;
    :goto_1
    const-string v7, "YuloreIVRCommon"

    const-string v8, "FileNotFoundException: delete.json is not exist "

    invoke-static {v7, v8}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 433
    goto :goto_0

    .line 434
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const-string v7, "YuloreIVRCommon"

    const-string v8, "IOException: The file delete.json unable to read "

    invoke-static {v7, v8}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 437
    goto :goto_0

    .line 434
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "names":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v3    # "names":Ljava/lang/String;
    .restart local v4    # "size":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "names":Ljava/lang/String;
    .restart local v2    # "names":Ljava/lang/String;
    goto :goto_2

    .line 430
    .end local v0    # "buffer":[B
    .end local v4    # "size":I
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static isEmptyFolder(Ljava/io/File;)Z
    .locals 2
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    .line 497
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x1

    .line 326
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNewPacket(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "loacalVersion"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    if-nez p0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v3

    .line 336
    :cond_1
    if-nez p1, :cond_2

    move v3, v4

    .line 337
    goto :goto_0

    .line 341
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/yulore/android/common/util/FileUtils;->getAssetsFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 343
    invoke-static {v1}, Lcom/yulore/android/common/util/FileUtils;->getNumFromString(Ljava/lang/String;)I

    move-result v2

    .line 344
    .local v2, "result":I
    const-string v5, "YuloreIVRCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " assets file version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    if-le v2, p1, :cond_0

    move v3, v4

    .line 346
    goto :goto_0

    .line 349
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "YuloreIVRCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isNewPacket error msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 135
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 138
    :cond_1
    if-eqz p1, :cond_0

    .line 142
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/yulore/android/common/util/FileUtils;->delete(Ljava/io/File;)Z

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
