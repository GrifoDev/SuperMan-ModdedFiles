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

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    .line 27
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    .line 28
    iput-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    .line 33
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    return-void
.end method

.method private getEngineId()I
    .locals 6

    .prologue
    .line 77
    const-wide/16 v2, -0x1

    .line 79
    .local v2, "ret":J
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "PRAGMA sdp_get_engine_id;"

    const/4 v5, 0x0

    .line 80
    invoke-static {v1, v4, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 86
    :cond_0
    :goto_0
    long-to-int v1, v2

    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getSdpService()Landroid/os/ISdpManagerService;
    .locals 2

    .prologue
    const-class v1, Landroid/database/sqlite/SQLiteSdpHelper;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    .line 73
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

    .prologue
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    .line 39
    return-void

    .line 42
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->getEngineId()I

    move-result v2

    iput v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    .line 43
    iget v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v2, :cond_2

    monitor-exit v1

    .line 44
    return-void

    .line 47
    :cond_2
    :try_start_2
    new-instance v2, Landroid/database/sqlite/SQLiteSdpHelper$1;

    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteSdpHelper$1;-><init>(Landroid/database/sqlite/SQLiteSdpHelper;)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    .line 64
    invoke-static {}, Landroid/database/sqlite/SQLiteSdpHelper;->getSdpService()Landroid/os/ISdpManagerService;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerListener()V
    .locals 5

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteSdpHelper;->prepare()V

    .line 92
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 94
    return-void

    .line 98
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

    .line 99
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v3, v4}, Landroid/os/ISdpManagerService;->registerClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 89
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "SQLiteSdpHelper"

    const-string/jumbo v3, "RemoteException from registerClient"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterListener()V
    .locals 5

    .prologue
    .line 107
    iget-object v2, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 109
    return-void

    .line 113
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

    .line 114
    sget-object v1, Landroid/database/sqlite/SQLiteSdpHelper;->sService:Landroid/os/ISdpManagerService;

    iget v3, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mEngineId:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSdpHelper;->mSdpListener:Landroid/database/sqlite/SQLiteSdpListener;

    invoke-interface {v1, v3, v4}, Landroid/os/ISdpManagerService;->unregisterClient(ILandroid/os/ISdpListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 106
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "SQLiteSdpHelper"

    const-string/jumbo v3, "RemoteException from unregisterClient"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
