.class public Landroid/os/CustomFrequencyManager;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;,
        Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;,
        Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;,
        Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;,
        Landroid/os/CustomFrequencyManager$CpuCtlRequest;,
        Landroid/os/CustomFrequencyManager$CpuSetRequest;,
        Landroid/os/CustomFrequencyManager$FrequencyRequest;,
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;,
        Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;,
        Landroid/os/CustomFrequencyManager$LPMBiasRequest;,
        Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;,
        Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;,
        Landroid/os/CustomFrequencyManager$SchedTunePolicyRequest;,
        Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;
    }
.end annotation


# static fields
.field public static final CPUCTL:I = 0x11

.field public static final CPUSET:I = 0x10

.field public static final CPU_CORE_NUM_MAX_LIMIT:I = 0x5

.field public static final CPU_CORE_NUM_MIN_LIMIT:I = 0x4

.field public static final CPU_DISABLE_CSTATE:I = 0xc

.field public static final CPU_HOTPLUG_DISABLE:I = 0xe

.field public static final CPU_LEGACY_SCHEDULER:I = 0xd

.field private static final DEBUG:Z

.field public static final DVFS_MAX_LIMIT:I = 0x2

.field public static final DVFS_MIN_LIMIT:I = 0x1

.field public static final FREQUENCY_BUS_TYPE_BOOST_MAX_LIMIT:I = 0xb

.field public static final FREQUENCY_BUS_TYPE_BOOST_MIN_LIMIT:I = 0xa

.field public static final FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT:I = 0x7

.field public static final FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT:I = 0x6

.field public static final FREQUENCY_LCD_FRAME_RATE:I = 0x3

.field public static final FREQUENCY_MMC_TYPE_BURST_MODE:I = 0x8

.field public static final FREQUENCY_REQ_TYPE_GPU:I = 0x1

.field public static final FREQUENCY_REQ_TYPE_GPU_MAX:I = 0x9

.field public static final LPM_BIAS:I = 0x13

.field public static final PCIE_PSM_DISABLE:I = 0xf

.field public static final SCHEDTUNE_POLICY:I = 0x12

.field private static final TAG:Ljava/lang/String; = "CustomFrequencyManager"

.field private static final lock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mServerAppToken:Landroid/os/IBinder;


# instance fields
.field private infinitCPUBoostServing:Z

.field private infinitCPUCoreServing:Z

.field private infinitGPUServing:Z

.field private infinitLCDFrameReqServing:Z

.field private infinitSysBusReqServing:Z

.field mHandler:Landroid/os/Handler;

.field mHeld:Z

.field mService:Landroid/os/ICustomFrequencyManager;

.field private mTokenSiop:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    return p1
.end method

.method static synthetic -set1(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    return p1
.end method

.method static synthetic -set2(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    return p1
.end method

.method static synthetic -set3(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    return p1
.end method

.method static synthetic -set4(Landroid/os/CustomFrequencyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    return p1
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Landroid/os/CustomFrequencyManager;->createServerAppToken()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/os/ICustomFrequencyManager;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->mHeld:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitLCDFrameReqServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitSysBusReqServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitGPUServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUCoreServing:Z

    iput-boolean v0, p0, Landroid/os/CustomFrequencyManager;->infinitCPUBoostServing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iput-object p2, p0, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static declared-synchronized createServerAppToken()V
    .locals 2

    const-class v1, Landroid/os/CustomFrequencyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 7

    const-string/jumbo v0, "CustomFrequencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newFrequencyRequest  - mFrequency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTimeoutMs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$LCDFrameRateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_4
    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    :cond_5
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUCoreControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_6
    const/4 v0, 0x7

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    :cond_7
    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    new-instance v0, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$MMCBurstControlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_9
    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    new-instance v0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_a
    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    new-instance v0, Landroid/os/CustomFrequencyManager$SchedTunePolicyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$SchedTunePolicyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_b
    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    new-instance v0, Landroid/os/CustomFrequencyManager$LPMBiasRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$LPMBiasRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    new-instance v0, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPULegacySchedulerRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_d
    const/16 v0, 0xe

    if-ne p1, v0, :cond_e

    new-instance v0, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CPUHotplugDisableRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_e
    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    new-instance v0, Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$PCIePSMDisableRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p1, v0, :cond_10

    new-instance v0, Landroid/os/CustomFrequencyManager$CpuSetRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CpuSetRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_10
    const/16 v0, 0x11

    if-ne p1, v0, :cond_11

    new-instance v0, Landroid/os/CustomFrequencyManager$CpuCtlRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/os/CustomFrequencyManager$CpuCtlRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Landroid/os/CustomFrequencyManager;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireGovernorParameter(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->acquireGovernorParameter(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public acquireSiopMaxlock(II)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1, p2}, Landroid/os/ICustomFrequencyManager;->acquireSiopMaxlock(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v3, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public deleteBatteryStatsDataBase()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->deleteBatteryStatsDatabase()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem returning batteryStats : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getAbusiveAppList()[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getAbusiveAppList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    new-array v1, v2, [Ljava/lang/String;

    return-object v1
.end method

.method public getBatteryDeltaSum(I)I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryDeltaSum(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem returning batteryStats : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getBatteryRemainingUsageTime(I)I
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem returning RemainingUsageTime : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getBatteryStatistics(I)[B
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryStatistics(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem returning batteryStats : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getBatteryTotalCapacity()I
    .locals 5

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getBatteryTotalCapacity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Problem getting battery total capacity : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getDvfsPolicyByHint(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getGameThrottlingLevel()I
    .locals 3

    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->getGameThrottlingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPocketDetectionValue()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getPocketDetectionValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-wide v4

    :cond_0
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSavedTimeAfterKilling called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->getSavedTimeAfterKillingApp(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem returning saved time : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return v2
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return v2
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUCoreNum()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public getSupportedCPUFrequency()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedCPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public getSupportedGPUFrequency()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedGPUFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public getSupportedLCDFrequency()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedLCDFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getSupportedSysBusFrequency()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    return-object v2
.end method

.method public initSiopMaxlock()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    :cond_1
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/os/ICustomFrequencyManager;->initSiopMaxlock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v4, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public mpdUpdate(I)V
    .locals 4

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager mpUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->mpdUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;
    .locals 3

    sget-object v2, Landroid/os/CustomFrequencyManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sput-object p6, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p5}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v0

    const/4 v1, 0x0

    sput-object v1, Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onTopAppChanged(Z)V
    .locals 3

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v2, "--Nw 2.4 --Tw 150 --Ns 1.4 --Ts 100 --util_h 100 --util_l 0"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v2, "--Nw 1.99 --Tw 140 --Ns 1.1 --Ts 190 --util_h 70 --util_l 60"

    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->requestMpParameterUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public releaseGovernorParameter()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->releaseGovernorParameter()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseSiopMaxlock()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2}, Landroid/os/ICustomFrequencyManager;->releaseSiopMaxlock()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v3, p0, Landroid/os/CustomFrequencyManager;->mTokenSiop:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public requestCPUUpdate(II)V
    .locals 4

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in manager requestCPUUpdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->requestCPUUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1, p2}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGameFps(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setGameFps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGamePowerSaving(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setGamePowerSaving(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGameTurboMode(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setGameTurboMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHglPolicy(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p1}, Landroid/os/ICustomFrequencyManager;->setHglPolicy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->printExceptionTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
