.class final Lcom/samsung/android/authnrservice/service/AuthnrOperation;
.super Ljava/lang/Object;
.source "AuthnrOperation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AO"

.field private static sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;


# instance fields
.field private mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    .locals 2

    const-class v1, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/AuthnrOperation;-><init>()V

    sput-object v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;

    :cond_0
    sget-object v0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->sAuthnrOperation:Lcom/samsung/android/authnrservice/service/AuthnrOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "AO"

    const-string/jumbo v1, "initialize TA: fd is null"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "AO"

    const-string/jumbo v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/authnrservice/service/AuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/AuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/authnrservice/service/ITaController;->initialize(IJJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process([B)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "AO"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AO"

    const-string/jumbo v1, "controller is null."

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v0, p1}, Lcom/samsung/android/authnrservice/service/ITaController;->process([B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminate()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "AO"

    const-string/jumbo v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    if-nez v1, :cond_0

    const-string/jumbo v1, "AO"

    const-string/jumbo v2, "controller is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;

    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/ITaController;->terminate()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "AO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/AuthnrOperation;->mAuthnrTaController:Lcom/samsung/android/authnrservice/service/ITaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
