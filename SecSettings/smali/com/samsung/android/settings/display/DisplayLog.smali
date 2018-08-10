.class public Lcom/samsung/android/settings/display/DisplayLog;
.super Ljava/lang/Object;
.source "DisplayLog.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;


# instance fields
.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DisplayLog"

    sput-object v0, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayLog;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/DisplayLog;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/DisplayLog;->sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayLog;->sdfNow:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "----------------------StartLogs-------------------------"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private flush()V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v6, "/data/log/DisplaySettingLogs.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_0
    :goto_0
    move-object v4, v5

    move-object v2, v3

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_2
    :try_start_7
    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v6, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v6

    :goto_3
    if-eqz v4, :cond_2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_2
    :goto_4
    throw v6

    :catch_3
    move-exception v0

    sget-object v7, Lcom/samsung/android/settings/display/DisplayLog;->TAG:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catchall_2
    move-exception v6

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v6

    move-object v4, v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/DisplayLog;->sLogMsg:Lcom/samsung/android/settings/display/DisplayLog;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/DisplayLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayLog;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/DisplayLog;->flush()V

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
