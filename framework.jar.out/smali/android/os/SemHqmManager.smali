.class public Landroid/os/SemHqmManager;
.super Ljava/lang/Object;
.source "SemHqmManager.java"


# static fields
.field private static final BDlock:Ljava/lang/Object;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/ISemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHqmManager;->TAG:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "service"    # Landroid/os/ISemHqmManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    .line 24
    iput-object p2, p0, Landroid/os/SemHqmManager;->mHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 123
    sget-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public getCFServerEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    .line 93
    return v3

    .line 96
    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getCFServerEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 103
    return v3

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDVServerEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    .line 78
    return v3

    .line 81
    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getDVServerEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 88
    return v3

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getHqmEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    .line 63
    return v3

    .line 66
    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getHqmEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 73
    return v3

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getHqmStatistics()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v1, :cond_0

    .line 109
    return-object v3

    .line 112
    :cond_0
    sget-object v2, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1}, Landroid/os/ISemHqmManager;->getHqmStatistics()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 119
    return-object v3

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "type"    # I
    .param p2, "Id"    # Ljava/lang/String;
    .param p3, "Ver"    # Ljava/lang/String;
    .param p4, "Manufacture"    # Ljava/lang/String;
    .param p5, "HitType"    # Ljava/lang/String;
    .param p6, "Feature"    # Ljava/lang/String;
    .param p7, "logMaps"    # Ljava/lang/String;
    .param p8, "envlogMaps"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_0
    sget-object v10, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v10

    .line 35
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

    .line 37
    :catch_0
    move-exception v9

    .line 38
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v9}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 41
    const/4 v0, 0x0

    return v0

    .line 33
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "type"    # I
    .param p2, "Id"    # Ljava/lang/String;
    .param p3, "Ver"    # Ljava/lang/String;
    .param p4, "Manufacture"    # Ljava/lang/String;
    .param p5, "HitType"    # Ljava/lang/String;
    .param p6, "Feature"    # Ljava/lang/String;
    .param p7, "devlogMaps"    # Ljava/lang/String;
    .param p8, "logMaps"    # Ljava/lang/String;
    .param p9, "envlogMaps"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    sget-object v11, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v11

    .line 52
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

    .line 54
    :catch_0
    move-exception v10

    .line 55
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 58
    const/4 v0, 0x0

    return v0

    .line 50
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method
