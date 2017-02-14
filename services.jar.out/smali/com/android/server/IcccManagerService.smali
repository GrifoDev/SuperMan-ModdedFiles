.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IcccManagerService$1;
    }
.end annotation


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field private static final CURR_BIN_STATUS:I = -0xffff6

.field private static final NOK:I = 0x2

.field private static final NOT_SCANNED:I = -0x1

.field private static final OK:I = 0x1

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field private static final SYSSCOPE_FLAG:I = -0xe00000

.field private static final WARRANTY_BIT:I = -0xffff4

.field private static mSysScopeResult:I


# instance fields
.field TAG:Ljava/lang/String;

.field icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/IcccManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/IcccManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/IcccManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->setSysScopeField()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    const-string/jumbo v1, "ICCC"

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Start IcccManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private enforcePermission()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static native get_Trusted_Boot_Data()I
.end method

.method private declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const v1, -0xffff4

    :try_start_0
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0xffff6

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, -0xe00000

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method private declared-synchronized setSysScopeField()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v6, :cond_2

    const-wide/16 v2, 0x78

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "There is some problem in SysScope. Keep it uninitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v8, :cond_4

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : NOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Saving SysScope Value : NOT_SCANNED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0xe00000

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getSecureData(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getTrustedBootData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSecureData(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
