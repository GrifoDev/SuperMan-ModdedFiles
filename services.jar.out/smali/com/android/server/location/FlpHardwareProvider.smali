.class public Lcom/android/server/location/FlpHardwareProvider;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/FlpHardwareProvider$1;,
        Lcom/android/server/location/FlpHardwareProvider$2;,
        Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final FIRST_VERSION_WITH_FLUSH_LOCATIONS:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_AVAILABLE:I = 0x2

.field private static final FLP_GEOFENCE_MONITOR_STATUS_UNAVAILABLE:I = 0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_ID_EXISTS:I = -0x4

.field private static final FLP_RESULT_ID_UNKNOWN:I = -0x5

.field private static final FLP_RESULT_INSUFFICIENT_MEMORY:I = -0x2

.field private static final FLP_RESULT_INVALID_GEOFENCE_TRANSITION:I = -0x6

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_RESULT_TOO_MANY_GEOFENCES:I = -0x3

.field public static final GEOFENCING:Ljava/lang/String; = "Geofencing"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MSG_BATCHING_START:I = 0x65

.field private static final MSG_BATCHING_STOP:I = 0x66

.field private static final MSG_BATCHING_UPDATE:I = 0x67

.field private static final MSG_FLP_HARDWARE:I = 0x64

.field private static final MSG_REPORT_LOCATION:I = 0x68

.field private static final TAG:Ljava/lang/String; = "FlpHardwareProvider"

.field private static sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;


# instance fields
.field private mBatchingCapabilities:I

.field private final mContext:Landroid/content/Context;

.field private final mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

.field private mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mHaveBatchingCapabilities:Z

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

.field private final mLocationSinkLock:Ljava/lang/Object;

.field private mVersion:I

.field private manager:Landroid/location/LocationManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/location/FlpHardwareProvider;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/FlpHardwareProvider;->nativeModifyGeofenceOption(IIIIII)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativePauseGeofence(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/location/FlpHardwareProvider;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRemoveGeofences([I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/location/FlpHardwareProvider;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeResumeGeofence(II)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsGeofencingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/location/FlpHardwareProvider;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/location/FlpHardwareProvider;[Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    iput v11, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    iput-object v10, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$1;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$1;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    new-instance v5, Lcom/android/server/location/FlpHardwareProvider$2;

    invoke-direct {v5, p0}, Lcom/android/server/location/FlpHardwareProvider$2;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v5, "passive"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    new-instance v6, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;

    invoke-direct {v6, p0, v10}, Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method private getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/location/FlpHardwareProvider;
    .locals 1

    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/FlpHardwareProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {v0}, Lcom/android/server/location/FlpHardwareProvider;->nativeInit()V

    :cond_0
    sget-object v0, Lcom/android/server/location/FlpHardwareProvider;->sSingletonInstance:Lcom/android/server/location/FlpHardwareProvider;

    return-object v0
.end method

.method private getVersion()I
    .locals 2

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupported()Z
    .locals 2

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.location.hwflp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/location/FlpHardwareProvider;->nativeIsSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private maybeSendCapabilities()V
    .locals 6

    iget-object v5, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    iget-boolean v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    iget v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/location/IFusedLocationHardwareSink;->onCapabilities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "FlpHardwareProvider"

    const-string/jumbo v5, "RemoteException calling onLocationAvailable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native nativeAddGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCleanup()V
.end method

.method private native nativeFlushBatchedLocations()V
.end method

.method private native nativeGetBatchSize()I
.end method

.method private native nativeInit()V
.end method

.method private native nativeInjectDeviceContext(I)V
.end method

.method private native nativeInjectDiagnosticData(Ljava/lang/String;)V
.end method

.method private native nativeInjectLocation(Landroid/location/Location;)V
.end method

.method private native nativeIsDeviceContextSupported()Z
.end method

.method private native nativeIsDiagnosticSupported()Z
.end method

.method private native nativeIsGeofencingSupported()Z
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeModifyGeofenceOption(IIIIII)V
.end method

.method private native nativePauseGeofence(I)V
.end method

.method private native nativeRemoveGeofences([I)V
.end method

.method private native nativeRequestBatchedLocation(I)V
.end method

.method private native nativeResumeGeofence(II)V
.end method

.method private native nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method private native nativeStopBatching(I)V
.end method

.method private native nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method

.method private onBatchingCapabilities(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mHaveBatchingCapabilities:Z

    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mBatchingCapabilities:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onBatchingStatus(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onBatchingStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDataReport(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FlpHardwareProvider"

    const-string/jumbo v3, "RemoteException calling onDiagnosticDataAvailable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onGeofenceAdd(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method private onGeofenceMonitorStatus(IILandroid/location/Location;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "FlpHardwareProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid FlpHal Geofence monitor status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGeofencePause(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method private onGeofenceRemove(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method private onGeofenceResume(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/location/FlpHardwareProvider;->translateToGeofenceHardwareStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method private onGeofenceTransition(ILandroid/location/Location;IJI)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/location/FlpHardwareProvider;->updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v2

    const/4 v6, 0x1

    move v1, p1

    move v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method

.method private onGeofencingCapabilities(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getGeofenceHardwareSink()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/location/GeofenceHardwareImpl;->onCapabilities(I)V

    return-void
.end method

.method private onLocationReport([Landroid/location/Location;)V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v3, "FlpHardwareProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLocationReport size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x68

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4, v6}, Lcom/android/server/location/FlpHardwareProvider;->sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    const-string/jumbo v5, "fused"

    invoke-virtual {v1, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/location/IFusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FlpHardwareProvider"

    const-string/jumbo v4, "RemoteException calling onLocationAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendInfoToFLP(IILandroid/location/FusedBatchOptions;)V
    .locals 16

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getPeriodInNS()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    div-long v4, v12, v14

    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSourcesToUse()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getMaxPowerAllocationInMW()D

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Landroid/location/FusedBatchOptions;->getSmallestDisplacementMeters()F

    move-result v10

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "type"

    move/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "requestId"

    move/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "interval"

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v11, "sourcesToUse"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "flags"

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "maxPowerAlloc"

    invoke-virtual {v2, v11, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v11, "smallestDisplacement"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v11, 0x64

    iput v11, v7, Landroid/os/Message;->what:I

    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/FlpHardwareProvider;->manager:Landroid/location/LocationManager;

    invoke-virtual {v11, v7}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    return-void
.end method

.method private setVersion(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/location/FlpHardwareProvider;->mVersion:I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareSink:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->setVersion(I)V

    :cond_0
    return-void
.end method

.method private static translateToGeofenceHardwareStatus(I)I
    .locals 6

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Invalid FlpHal result code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_0
    return v4

    :pswitch_1
    return v5

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    return v2

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocationInformation(Landroid/location/Location;)Landroid/location/Location;
    .locals 2

    const-string/jumbo v0, "fused"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Calling nativeCleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/FlpHardwareProvider;->nativeCleanup()V

    return-void
.end method

.method public getGeofenceHardware()Landroid/location/IFusedGeofenceHardware;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mGeofenceHardwareService:Landroid/location/IFusedGeofenceHardware;

    return-object v0
.end method

.method public getLocationHardware()Landroid/hardware/location/IFusedLocationHardware;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    return-object v0
.end method
