.class public Lcom/android/server/vr/GearVrManagerService;
.super Lcom/android/server/SystemService;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerService$1;,
        Lcom/android/server/vr/GearVrManagerService$2;,
        Lcom/android/server/vr/GearVrManagerService$GearVrHandler;,
        Lcom/android/server/vr/GearVrManagerService$LocalService;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_PENDING_LAUNCH:Ljava/lang/String; = "com.samsung.intent.action.HMT_PENDING_LAUNCH"

.field public static final DEFAULT_GLOBAL_VR_DEVELOPER_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_SETUPWIZARD_COMPLETED:I = 0x0

.field private static final MESSAGE_VR_OVERLAY_RESTRICTION_STATE_CHANGE:I = 0x1

.field private static final MESSAGE_VR_STATE_CHANGE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final SETTINGS_GLOBAL_VR_DEVELOPER_MODE:Ljava/lang/String; = "vrmode_developer_mode"

.field public static final SETTINGS_GLOBAL_VR_SETUPWIZARD_COMPLETED:Ljava/lang/String; = "vr_setupwizard_completed"

.field public static final TAG:Ljava/lang/String; = "GearVrManagerService"

.field public static final VR_MODE_DISABLED:I = 0x0

.field public static final VR_MODE_ENABLED:I = 0x1

.field public static final VR_MODE_UNKNOWN:I = -0x1


# instance fields
.field private mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeveloperMode:Z

.field private mDeviceState:I

.field private mDockState:I

.field private final mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

.field private mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

.field private mGearVrReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasHmtFeature:Z

.field private mIsHomeKeyBlocked:Z

.field private final mLock:Ljava/lang/Object;

.field private mMountState:I

.field private mObserver:Landroid/database/ContentObserver;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPreviousDockState:I

.field private mPreviousMountState:I

.field private mPreviousTaState:I

.field private mReadyForVrMode:Z

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/vr/IGearVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupWizardComplete:I

.field private mSystemUiUid:I

.field private mTaState:I

.field private mVrModeEnabled:I

.field private mVrServiceAvailable:Z

.field packageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/vr/GearVrManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->hasHmtFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->removeSysNode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/vr/GearVrManagerService;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setThreadGroup(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/vr/GearVrManagerService;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->setThreadScheduler(III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/server/vr/GearVrManagerService;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Lcom/android/server/vr/GearVrManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isHomeKeyBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/vr/GearVrManagerService;I[I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setThreadAffinity(I[I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap21(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap22(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap23(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->addStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingFromVRSVC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->handleOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/vr/GearVrManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(I)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/vr/GearVrManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->removeStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/vr/GearVrManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setHomeKeyBlocked(Z)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/vr/GearVrManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setReadyForVrMode(Z)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/vr/GearVrManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseControlType(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/vr/GearVrManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->isOverlayRestrictionWindow(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/vr/GearVrManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->startVrHome()V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateSettingsLocked()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isStartActivityAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/vr/GearVrManagerService;Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isVrActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/vr/GearVrManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/Intent;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceState:I

    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    iput v3, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iput v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$1;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$2;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;-><init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v0}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    return-void
.end method

.method private acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerExternal;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v0

    return-object v0
.end method

.method private addStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 3

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private broadcastRemoteCallbacks(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v2, p1}, Lcom/samsung/android/vr/IGearVrStateCallbacks;->onGearVrStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump GearVrManagerService from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    array-length v6, p3

    if-nez v6, :cond_3

    :cond_1
    const-string/jumbo v6, "********* Dump of GearVrManagerService *********"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "VRAPI=16"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "VRAPI_MINOR=0"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "VRAPI_PATCH=5"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mHasHmtFeature:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mVrServiceAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mReadyForVrMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mVrModeEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "State:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mGearVrReady:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mDeviceState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mDockState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mPreviousDockState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mMountState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mPreviousMountState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mTaState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mPreviousTaState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mSetupWizardComplete:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mDeveloperMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    isDock:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    isMount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    isHomeKeyBlocked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isHomeKeyBlocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "Remote Callbacks:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_2

    const-string/jumbo v6, ","

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "-a"

    aget-object v7, p3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    array-length v6, p3

    if-ne v6, v10, :cond_a

    const-string/jumbo v6, "set"

    aget-object v7, p3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    aget-object v3, p3, v9

    const-string/jumbo v6, "dock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v9}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    :goto_1
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "********* Dump of GearVrManagerExternal *********"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "undock"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v10}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "abnormal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v6, "mount"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "unmount"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_1

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    array-length v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    const-string/jumbo v6, "set"

    aget-object v7, p3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    aget-object v3, p3, v9

    aget-object v5, p3, v10

    :try_start_0
    const-string/jumbo v6, "state"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    :try_start_1
    const-string/jumbo v6, "vr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v6, "relay"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->setRelayMode(I)V

    goto/16 :goto_1

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown set option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v6, "Dump current vr state, or:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set vr <true/false>"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state directly."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set state <value>"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state value directly."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set dock"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state docked."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set undock"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state undocked."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set mount"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state mount."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  set unmount"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "     set vr state unmount."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private enforceCallingFromVRSVC(Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v2, v6, :cond_0

    return-void

    :cond_0
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v7, "userdebug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android"

    const-string/jumbo v8, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    const-string/jumbo v6, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "GearVrManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied signature="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v6, "GearVrManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", VRService only."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", VRService only."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private enforceCallingPermission(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method private enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method private enforceCallingSystemPermission(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission denied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", you need system uid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission denied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", you need system uid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPowerLevelState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method private getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThreadId(ILjava/lang/String;I)[I
    .locals 13

    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/task"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    array-length v9, v4

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v3, v4, v8

    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string/jumbo v11, "comm"

    invoke-direct {v10, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    packed-switch p3, :pswitch_data_0

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [I

    const/4 v1, 0x0

    :goto_2
    array-length v8, v2

    if-ge v1, v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v2

    :cond_3
    const/4 v8, 0x0

    return-object v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 8

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleOverlayRestriction enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exemptedPackages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/16 v1, 0x18

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/16 v1, 0x40

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/16 v1, 0x2d

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private handleVrStateChange(I)V
    .locals 3

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleVrStateChange state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->broadcastRemoteCallbacks(I)V

    return-void
.end method

.method private hasHmtFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    return v0
.end method

.method private isDock()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isGearVrPackage(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.hmt.vrsystem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.app.vrsetupwizardstub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHomeKeyBlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isMount()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isOverlayRestrictionWindow(Ljava/lang/String;II)Z
    .locals 1

    const/16 v0, 0x7d0

    if-gt v0, p3, :cond_0

    const/16 v0, 0xbb7

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isStartActivityAllowed(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrPackage(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVrActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_1
    if-eqz v1, :cond_4

    const-string/jumbo v2, "vr_only"

    const-string/jumbo v3, "com.samsung.android.vr.application.mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v5

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "dual"

    const-string/jumbo v3, "com.samsung.android.vr.application.mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v2, "com.samsung.android.vr.activity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v5

    :cond_3
    return v4

    :cond_4
    return v4
.end method

.method private isVrMode()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isVrServiceInstalledAndEnabled()Z
    .locals 13

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v9, "com.samsung.android.hmt.vrsvc"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    const/4 v5, 0x1

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v12, :cond_1

    const/4 v1, 0x1

    :goto_0
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.samsung.android.hmt.vrsvc"

    const-string/jumbo v11, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v12, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v3

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move v3, v8

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private notifyDeviceEventChanged(I)V
    .locals 3

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDeviceEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setDeviceStateLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;I)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GearVrManagerService"

    const-string/jumbo v1, "setupwizard completed, developer mode enabled! start launch!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "GearVrManagerService"

    const-string/jumbo v1, "setupwizard completed, hmt connected! start launch!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "GearVrManagerService"

    const-string/jumbo v2, "setupwizard completed! but not hmt not connected! start pending launch!"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "reason"

    const-string/jumbo v2, "hmt"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v3, 0x48000000    # 131072.0f

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    const-string/jumbo v0, "restart_intent"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, v8, p3}, Lcom/android/server/vr/GearVrManagerExternal;->startWaitActivity(Landroid/content/Intent;I)V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/vr/GearVrManagerService;->isGearVrPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupwizard incompleted! predefined apps("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")! start launch!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-string/jumbo v0, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupwizard incompleted! start pending launch! packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    const-string/jumbo v2, "setup_wizard"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private removeStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .locals 3

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private removeSysNode(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private retrieveEnableFrequencyLevels()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---- elevateProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const v2, 0x40000001    # 2.0000002f

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GearVrManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GearVrManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDeviceStateLocked(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceState:I

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceStateLocked event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceState:I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    goto :goto_0

    :sswitch_1
    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceStateLocked ignored. event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mDeviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_2
    .end sparse-switch
.end method

.method private setHomeKeyBlocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v0, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOverlayRestriction enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exemptedPackages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v1, v0, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPermissions(Ljava/lang/String;III)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setReadyForVrMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setRelayMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->setRelayMode(I)V

    return-void
.end method

.method private setSystemMouseControlType(I)V
    .locals 2

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    :cond_0
    return-void
.end method

.method private setSystemMouseShowMouseEnabled(Z)V
    .locals 2

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    :cond_0
    return-void
.end method

.method private setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setThreadAffinity(I[I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->setAffinity(I[I)I

    move-result v0

    return v0
.end method

.method private setThreadGroup(II)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GearVrManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method private setThreadScheduler(III)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GearVrManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVrMode(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startVrHome()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->startVrHome()V

    return-void
.end method

.method private updateDockStateLocked()V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x2

    const/16 v6, 0x20

    const/4 v5, 0x0

    const-string/jumbo v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDockStateLocked mDockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mPreviousDockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousDockState:I

    if-ne v0, v7, :cond_0

    if-ne v1, v8, :cond_0

    const-string/jumbo v2, "GearVrManagerService"

    const-string/jumbo v4, "send unmount event at undock"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    const/16 v2, 0x20

    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    if-ne v0, v7, :cond_1

    if-ne v1, v8, :cond_1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v6}, Lcom/android/server/vr/GearVrManagerExternal;->notifyDeviceEventChanged(I)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v6, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0}, Lcom/android/server/vr/GearVrManagerExternal;->notifyDeviceEventChanged(I)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private updateMountStateLocked()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMountStateLocked mMountState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPreviousMountState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousMountState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->notifyDeviceEventChanged(I)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateSettingsLocked()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_setupwizard_completed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vrmode_developer_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:Z

    return-void
.end method

.method private updateTaStateLocked()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTaStateLocked mTaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPreviousTaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPreviousTaState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->notifyDeviceEventChanged(I)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateVrModeLocked(I)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/vr/GearVrManagerExternal;->setVrMode(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVrModeLocked() vr mode not changed! mVrModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateVrServiceAvailableLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceInstalledAndEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "---- GearVrManagerService updateVrServiceAvailableLocked mVrAvailable = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ==> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_1
    :try_start_1
    const-string/jumbo v5, "GearVrManagerService"

    const-string/jumbo v6, "parentDir null!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "GearVrManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FileNotFound! node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catch_1
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "GearVrManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException! node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method


# virtual methods
.method protected isVrServiceAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 9

    const/4 v6, 0x1

    const-string/jumbo v3, "GearVrManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "---- GearVrManagerService onBootPhase "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1f4

    if-ne p1, v3, :cond_2

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "com.samsung.feature.hmt"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    :try_start_1
    const-string/jumbo v3, "com.android.systemui"

    const/high16 v5, 0x100000

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :goto_0
    :try_start_2
    iput v2, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V

    new-instance v3, Lcom/android/server/vr/GearVrManagerService$3;

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/vr/GearVrManagerService$3;-><init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "vr_setupwizard_completed"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "vrmode_developer_mode"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateSettingsLocked()V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v4

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "GearVrManagerService"

    const-string/jumbo v5, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrReady:Z

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    :cond_3
    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mDockState:I

    if-ne v3, v6, :cond_4

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mMountState:I

    const/16 v5, 0x10

    if-ne v3, v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    :cond_4
    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "GearVrManagerService"

    const-string/jumbo v1, "---- GearVrManagerService onStart ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/GearVrManagerExternal;-><init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    const-class v0, Lcom/android/server/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/vr/GearVrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "vr"

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
