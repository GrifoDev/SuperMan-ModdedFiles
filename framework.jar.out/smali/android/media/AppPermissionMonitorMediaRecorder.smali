.class public Landroid/media/AppPermissionMonitorMediaRecorder;
.super Ljava/lang/Object;
.source "AppPermissionMonitorMediaRecorder.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CACHE_SIZE:I = 0xa

.field private static final CTRL_SAVE_MEDIAPATH:I = 0x200

.field private static final DEFAULT_MONITOR:Ljava/lang/String; = "5244743"

.field private static final LOG_TAG_APM:Ljava/lang/String; = "Media_APM : "

.field private static final TIME_INTERVAL:J = 0xea60L

.field private static final VIDEO_FORMAT:I = 0x4


# instance fields
.field private mAPM:Landroid/os/IPermissionMonitor;

.field private mAppPermMonitor:Ljava/lang/String;

.field private mCallingCacheDisplay:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppPermissionMonitorSupported:Z

.field private mIsMonitoredFeature:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/AppPermissionMonitorMediaRecorder;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Media_APM : "

    const-string/jumbo v3, "isCalledPackage return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "Media_APM : "

    const-string/jumbo v3, "isCalledPackage return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .locals 6

    const-wide/32 v4, 0xea60

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mCallingCacheDisplay:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sendMediaNotificationForAppPermissionMonitor(IIILjava/lang/String;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMediaNotificationForAppPermissionMonitor callingPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", media_path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsAppPermissionMonitorSupported:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Media_APM : "

    const-string/jumbo v3, "sendMediaNotificationForAppPermissionMonitor 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "Media_APM : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMediaNotificationForAppPermissionMonitor 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Landroid/media/AppPermissionMonitorMediaRecorder;->isCalledPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "persist.app.permission.monitor"

    const-string/jumbo v3, "5244743"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAppPermMonitor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMediaNotificationForAppPermissionMonitor mIsMonitoredFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mIsMonitoredFeature:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    if-lt p2, v0, :cond_2

    :try_start_1
    iget-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    if-nez v0, :cond_1

    const-string/jumbo v0, "permission.monitor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPermissionMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPermissionMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    :cond_1
    if-ne p3, v1, :cond_3

    iget-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    const/4 v4, 0x4

    const/16 v5, 0x200

    move v1, p2

    move v2, p1

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPermissionMonitor;->sendAPMMediaNotification(IILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "Media_APM : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH nfe = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/media/AppPermissionMonitorMediaRecorder;->mAPM:Landroid/os/IPermissionMonitor;

    const/4 v4, 0x2

    const/16 v5, 0x200

    move v1, p2

    move v2, p1

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPermissionMonitor;->sendAPMMediaNotification(IILjava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v9

    const-string/jumbo v0, "Media_APM : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH re = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v8

    const-string/jumbo v0, "Media_APM : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception notify permission monitor service about access from CTRL_SAVE_MEDIAPATH ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
