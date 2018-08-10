.class Lcom/android/server/desktopmode/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/UiManager$1;,
        Lcom/android/server/desktopmode/UiManager$InternalDialogCallback;,
        Lcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

.field private mIsBound:Z

.field private final mLock:Ljava/lang/Object;

.field private mModeChangeLock:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mUnbindServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/InternalCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/UiManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/UiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/UiManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/UiManager;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/UiManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DesktopModeUiService]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    new-instance v0, Lcom/android/server/desktopmode/UiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-direct {v0}, Lcom/android/server/desktopmode/InternalCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private bindUiService()V
    .locals 5

    iget-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindUiService mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    return-void
.end method

.method private handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private postUnbindServiceRunnable()V
    .locals 6

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/desktopmode/UiManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/UiManager$5;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static printUsage(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "USAGE: ui showDialog type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui showNotification type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui showPresentation where type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui showVirtualDevice type mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui dismissDialog"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui dismissPresentation where type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui removeNotification type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       ui removeVirtualDevice type"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private resetUnbindServiceRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showDialogOnUIService(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1, p3}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(ILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$5;

    invoke-direct {v5, p1, p0, p2}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    goto :goto_0
.end method


# virtual methods
.method bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->isBoundWithService()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindUiServiceWithCallback() service is not ready!! mDesktopModeUiService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uiType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->bindUiService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method command(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    :try_start_0
    const-string/jumbo v1, "showDialog"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p2

    if-eq v1, v3, :cond_0

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "showNotification"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, p2

    if-eq v1, v3, :cond_2

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "showPresentation"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, p2

    if-eq v1, v4, :cond_4

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_4
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "showVirtualDevice"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    array-length v1, p2

    if-eq v1, v4, :cond_6

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_6
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showVirtualDevice(II)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "dismissDialog"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->dismissDialog()V

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "dismissPresentation"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    array-length v1, p2

    if-eq v1, v4, :cond_9

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_9
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "removeNotification"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    array-length v1, p2

    if-eq v1, v3, :cond_b

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_b
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "removeVirtualDevice"

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    array-length v1, p2

    if-eq v1, v3, :cond_d

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V

    return-void

    :cond_d
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->removeVirtualDevice(I)V

    goto/16 :goto_0

    :cond_e
    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager;->printUsage(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dismissDialog()"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method dismissPresentation(II)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissPresentation() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissPresentation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(II)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method getCurrentDialogType()I
    .locals 3

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentDialogType()"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentDialogType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method getCurrentPresentationType(I)I
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentPresentationType() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentPresentationType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method getCurrentVirtualDeviceType()I
    .locals 3

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentVirtualDeviceType()"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentVirtualDeviceType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method hasPresentation(II)Z
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasPresentation() where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasPresentation(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isBoundWithService()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_11138(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_11410(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_13151(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_13335(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_13717(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_14553(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showVirtualDevice(II)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_14835(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showVirtualDevice(II)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_5064(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_5264(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_desktopmode_UiManager_9962(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V

    return-void
.end method

.method notifyModeChangeLock(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyModeChangeLock(), mModeChangeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/InternalCallbackList;->notifyCallbacks()V

    :cond_1
    return-void
.end method

.method public removeNotification(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method removeVirtualDevice(I)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVirtualDevice(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v1, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeVirtualDevice(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/InternalCallbackList;->remove(I)V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setCurrentUserId(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindUiService()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->bindUiService()V

    :cond_0
    return-void
.end method

.method public showDialog(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialogOnUIService(), dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v1, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$3;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$4;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog() mModeChangeLocked!! dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog() wrong type value!! dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/desktopmode/UiManager;->showDialogOnUIService(ILcom/android/server/desktopmode/UiManager$InternalDialogCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    return-void

    :pswitch_1
    new-instance v0, Lcom/android/server/desktopmode/UiManager$2;

    invoke-direct {v0, p0, p2}, Lcom/android/server/desktopmode/UiManager$2;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalDialogCallback;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/server/desktopmode/UiManager$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$3;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/server/desktopmode/UiManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$4;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public showNotification(I)V
    .locals 6

    const/4 v4, -0x1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotification(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs;

    invoke-direct {v0, p1, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mModeChangeLock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    new-instance v2, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$1;

    invoke-direct {v2, p1, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1, v4, v2}, Lcom/android/server/desktopmode/InternalCallbackList;->add(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotification() mModeChangeLocked!! type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$2;

    invoke-direct {v5, p1, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$2;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    goto :goto_0
.end method

.method showPresentation(II)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPresentation(), where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$6;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$6;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showPresentation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;

    invoke-direct {v5, p1, p2, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$7;-><init>(IILjava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    goto :goto_0
.end method

.method showVirtualDevice(II)V
    .locals 6

    const/4 v4, -0x1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showVirtualDevice(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->resetUnbindServiceRunnable()V

    new-instance v0, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$8;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$8;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithCallback(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showVirtualDevice(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$9;

    invoke-direct {v5, p1, p2, p0}, Lcom/android/server/desktopmode/-$Lambda$zAaEDRcKonlf6JR6ar4b10dKCcs$9;-><init>(IILjava/lang/Object;)V

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V

    goto :goto_0
.end method

.method unbindUiService()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindUiService mIsBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mIsBound:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDesktopModeUiService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mInternalCallbackList:Lcom/android/server/desktopmode/InternalCallbackList;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/InternalCallbackList;->clear()V

    :cond_1
    return-void
.end method
