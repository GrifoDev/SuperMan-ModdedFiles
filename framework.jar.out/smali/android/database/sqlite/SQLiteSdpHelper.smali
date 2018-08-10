.class public Landroid/database/sqlite/SQLiteSdpHelper;
.super Ljava/lang/Object;
.source "SQLiteSdpHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteSdpHelper"

.field private static final mIsSdpSupported:Z = true

.field private static sService:Landroid/os/ISdpManagerService;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEngineId:I

.field private mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;


# direct methods
.method static synthetic -get0(Landroid/database/sqlite/SQLiteSdpHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getEngineId()I
    .locals 6

    const-wide/16 v2, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "PRAGMA sdp_get_engine_id;"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    :cond_0
    :goto_0
    long-to-int v1, v2

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getSdpService()Landroid/os/ISdpManagerService;
    .locals 2

    const-class v1, Landroid/database/sqlite/SQLiteSdpHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    :cond_0
    sget-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private prepare()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->getEngineId()I

    move-result v2

    iput v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteSdpHelper$1;

    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteSdpHelper$1;-><init>(Landroid/database/sqlite/SQLiteSdpHelper;)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-static {}, Landroid/database/sqlite/SQLiteSdpHelper;->getSdpService()Landroid/os/ISdpManagerService;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerListener()V
    .locals 5

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "SQLiteSdpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener() - Engine Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v3, v4}, Landroid/os/ISdpManagerService;->registerClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SQLiteSdpHelper"

    const-string/jumbo v3, "RemoteException from registerClient"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterListener()V
    .locals 5

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "SQLiteSdpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener() - Engine Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v3, v4}, Landroid/os/ISdpManagerService;->unregisterClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SQLiteSdpHelper"

    const-string/jumbo v3, "RemoteException from unregisterClient"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
