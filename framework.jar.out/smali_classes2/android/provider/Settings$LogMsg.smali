.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final DEVICE_PROVISION_LOG_FILE_PATH:Ljava/lang/String; = "/data/log/provisioned.txt"

.field private static final KEY_SETTINGS_DB_CALLSTACK_KEY_LIST:Ljava/lang/String; = "settings_db_callstack_key_list"

.field private static final MAX_SIZE_OF_LOG_FILE:J = 0x100000L

.field private static final SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String; = "/data/log_settings_db_callstack/SettingsDBCallStackLog.txt"

.field private static final SETTINGS_DB_KEY_DEFAULT:Ljava/lang/String; = ";"

.field private static SETTINGS_DB_KEY_LIST:Ljava/lang/String; = null

.field private static final SETTINGS_DB_KEY_UNSETTED:Ljava/lang/String; = "unsetted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1487
    const-string/jumbo v0, "unsetted"

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1480
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1553
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1551
    return-void
.end method

.method public static checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1492
    :try_start_0
    const-string/jumbo v2, "unsetted"

    sget-object v3, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    const-string/jumbo v2, "settings_db_callstack_key_list"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1494
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1495
    const-string/jumbo v2, ";"

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1499
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "device_provisioned"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    const/4 v2, 0x1

    return v2

    .line 1503
    :cond_1
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1504
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public static getCallStackDBKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    sget-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method public static setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1547
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1545
    return-void
.end method

.method public static writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1510
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1511
    .local v7, "now":Ljava/util/Calendar;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1512
    .local v2, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/PrintStream;

    invoke-direct {v12, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1513
    .local v12, "pinrtStream":Ljava/io/PrintStream;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1514
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1515
    .local v6, "msg":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1516
    .local v10, "output_str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1517
    .local v4, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 1518
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    const-string/jumbo v13, "Settings"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :try_start_0
    const-string/jumbo v11, ""

    .line 1521
    .local v11, "path":Ljava/lang/String;
    const-string/jumbo v13, "device_provisioned"

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1522
    const-string/jumbo v11, "/data/log/provisioned.txt"

    .line 1526
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 1528
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    .line 1529
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1530
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1532
    .end local v5    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v13, Ljava/io/FileOutputStream;

    const/4 v14, 0x1

    invoke-direct {v13, v4, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v9, v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1533
    .local v9, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    invoke-virtual {v9, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1534
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1538
    if-eqz v9, :cond_0

    .line 1539
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_2
    move-object v8, v9

    .line 1509
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .end local v11    # "path":Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 1524
    .local v4, "file":Ljava/io/File;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string/jumbo v11, "/data/log_settings_db_callstack/SettingsDBCallStackLog.txt"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1541
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .local v4, "file":Ljava/io/File;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1535
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .end local v11    # "path":Ljava/lang/String;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v3

    .line 1538
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v8, :cond_1

    .line 1539
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1541
    :catch_2
    move-exception v3

    goto :goto_3

    .line 1536
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v13

    .line 1538
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    :goto_5
    if-eqz v8, :cond_3

    .line 1539
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1536
    :cond_3
    :goto_6
    throw v13

    .line 1541
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 1536
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v11    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_5

    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 1535
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    :cond_4
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1
.end method
