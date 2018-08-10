.class public Landroid/os/SemHqmManager;
.super Ljava/lang/Object;
.source "SemHqmManager.java"


# static fields
.field private static final BDlock:Ljava/lang/Object;

.field private static final BDlock_sys:Ljava/lang/Object;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/ISemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHqmManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    iput-object p1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    iput-object p2, p0, Landroid/os/SemHqmManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCFServerEnable()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getCFServerEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDVServerEnable()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getDVServerEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getHqmEnable()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getHqmEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getHqmStatistics()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getHqmStatistics()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v10, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/os/ISemHqmManager;->sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v10

    return v0

    :catch_0
    move-exception v9

    :try_start_1
    invoke-static {v9}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v11, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v11

    return v0

    :catch_0
    move-exception v10

    :try_start_1
    invoke-static {v10}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v12, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/os/ISemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v12

    return v0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-static {v11}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISemHqmManager;->sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
