.class public Lcom/absolute/android/persistence/ABTPersistenceManager;
.super Ljava/lang/Object;
.source "ABTPersistenceManager.java"


# static fields
.field public static final ABT_PERSISTENCE_SERVICE:Ljava/lang/String; = "ABTPersistenceService"

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Absolute"

.field public static final OP_INSTALL:I = 0x1

.field public static final OP_UNINSTALL:I = 0x2

.field public static final PERSISTENCE_SERVICE_LOG:Ljava/lang/String; = "abt-persistence-service"

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_PERMANENTLY_DISABLED:I = 0x3

.field private static s_connection:Landroid/content/ServiceConnection;

.field private static s_context:Landroid/content/Context;

.field private static s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;


# instance fields
.field private m_service:Lcom/absolute/android/persistence/IABTPersistence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/absolute/android/persistence/ABTPersistenceManager$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/ABTPersistenceManager$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 2

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    if-eqz p1, :cond_0

    .line 879
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    .line 880
    return-void

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ABTPersistenceManager() cannot be constructed with null service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100()Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/absolute/android/persistence/ABTPersistenceManager;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/absolute/android/persistence/ABTPersistenceManager;Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    return-void
.end method

.method public static getPersistenceService(Landroid/content/Context;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ABTPersistenceService"

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/ABTPersistenceManager;

    sput-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    :try_start_2
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    if-eqz v0, :cond_1

    .line 134
    :goto_2
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    .line 137
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 129
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.absolute.android.persistenceapp"

    const-string/jumbo v3, "com.absolute.android.persistenceapp.ABTPersistenceSystemApp"

    .line 130
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setService(Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    .line 884
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    .line 603
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ENABLED"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "DISABLED"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "PERMANENTLY DISABLED"

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/absolute/android/persistence/IABTPersistence;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 811
    return-void
.end method

.method public downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/absolute/android/persistence/IABTPersistence;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 755
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 887
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 891
    :try_start_0
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 894
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 896
    return-void

    .line 891
    :cond_1
    :try_start_1
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 892
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/absolute/android/persistence/IABTPersistence;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 736
    return-void
.end method

.method public getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/absolute/android/persistence/IABTPersistence;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 689
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDiagnostics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v0

    return-object v0
.end method

.method public getPersistedAppCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedAppCount()I

    move-result v0

    return v0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getState()I

    move-result v0

    return v0
.end method

.method public getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getVersion()I

    move-result v0

    return v0
.end method

.method public install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 266
    return-void
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 471
    return-void
.end method

.method public persistApp(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->persistApp(Lcom/absolute/android/persistence/AppProfile;)V

    .line 845
    return-void
.end method

.method public refreshDeviceId()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->refreshDeviceId()V

    .line 639
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 550
    return-void
.end method

.method public setAllPersistence(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setAllPersistence(Z)V

    .line 420
    return-void
.end method

.method public setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    .line 369
    return-void
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->setPersistence(Ljava/lang/String;Z)V

    .line 398
    return-void
.end method

.method public setState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setState(I)V

    .line 173
    return-void
.end method

.method public testFirmwareUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->testFirmwareUpdate()V

    .line 656
    return-void
.end method

.method public uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 314
    return-void
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->unregisterPing(Ljava/lang/String;)V

    .line 575
    return-void
.end method
