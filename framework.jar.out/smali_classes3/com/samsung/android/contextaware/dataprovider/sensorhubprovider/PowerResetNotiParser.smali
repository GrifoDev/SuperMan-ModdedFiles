.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;
    }
.end annotation


# static fields
.field private static final PERMISSION_SENSORHUB_RESET:Ljava/lang/String; = "com.samsung.permission.SENSORHUB_RESET"

.field private static final SLPI_CMD_RESET_STATE:I = 0x0

.field private static final SLPI_CMD_RESTORE_STATE:I = 0x1

.field private static final SLPI_CMD_UNKNOWN_STATE:I = -0x1

.field private static final SLPI_RESET_STATUS:Ljava/lang/String; = "restrict"

.field private static final SLPI_RESET_STATUS_PATH:Ljava/lang/String; = "/sys/class/sensors/ssc_core/operation_mode"

.field private static final SLPI_RESTORE_STATUS:Ljava/lang/String; = "normal"

.field private static final SLPI_UNKNOWN_STATUS:Ljava/lang/String; = "unknown"


# instance fields
.field mContext:Landroid/content/Context;

.field private mLastStatus:Ljava/lang/String;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

.field private mSensorHubResetCnt:J


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mLastStatus:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->isSLPISupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    const-string/jumbo v1, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mResetObserver:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$SLPIResetObserver;->startWatching()V

    const-string/jumbo v0, "SLPIResetObserver : start"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SLPIResetObserver : observer is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string/jumbo v5, ""

    new-instance v6, Ljava/lang/StringBuffer;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v7, "File Path is null!!"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-object v5

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    :try_start_2
    const-string/jumbo v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    return-object v5

    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "\n"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_4
    :try_start_6
    const-string/jumbo v7, "File is not found"

    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_4
.end method

.method private isSLPISupported()Z
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public final notifySensorHubResetObserver(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;->updateSensorHubResetStatus(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 10

    move v4, p2

    array-length v6, p1

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v4, p2, 0x1

    aget-byte v3, p1, p2

    const-string/jumbo v6, "Noti"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    array-length v6, p1

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget-byte v2, p1, v4

    move v4, v5

    :cond_1
    const/16 v6, -0x2b

    if-ne v3, v6, :cond_2

    const-string/jumbo v6, "================= Noti (Power) ================="

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const-string/jumbo v6, "Noti Type : SensorHub Reset"

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->sendAutoBrightnessTableToSensorHub()Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifySensorHubResetObserver(I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->isBootComplete()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "sensorhub_reset_reason"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "sensorhub_reset_cnt"

    iget-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "sensorhub_reset_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sensorhub reset status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Sensorhub reset cnt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mSensorHubResetCnt:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.samsung.permission.SENSORHUB_RESET"

    invoke-virtual {v6, v1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_2
    return v4
.end method

.method public final registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
