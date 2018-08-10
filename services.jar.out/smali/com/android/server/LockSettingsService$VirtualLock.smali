.class final Lcom/android/server/LockSettingsService$VirtualLock;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualLock"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "LockSettingsService.VirtualLock"


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$VirtualLock;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$VirtualLock;-><init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method addEscrowToken([BI)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/LockSettingsService;->-wrap16(Lcom/android/server/LockSettingsService;I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/LockSettingsService;->-wrap7(Lcom/android/server/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v1, v5, v6, v7, p2}, Lcom/android/server/LockSettingsService;->-wrap10(Lcom/android/server/LockSettingsService;[BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/server/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-wide v2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p2}, Lcom/android/server/LockSettingsService;->-wrap4(Lcom/android/server/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sp already applied to user "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_2
    :try_start_2
    new-instance v1, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected erorr while set reset token for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method clearLock(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clear virtual lock for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/LockSettingsService;->-wrap13(Lcom/android/server/LockSettingsService;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Handle(%d) detected at the moment of clearing lock for user %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v2, v2, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v2}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    return-void
.end method

.method doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Credential can\'t be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v10, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    move/from16 v0, p6

    invoke-static {v2, v0}, Lcom/android/server/LockSettingsService;->-wrap5(Lcom/android/server/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/LockSettingsService;->-wrap9(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :goto_0
    monitor-exit v11

    const-string/jumbo v2, "Result of verification for user %d : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    return-object v10

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sp not yet applied to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2
.end method

.method setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p0, p4}, Lcom/android/server/LockSettingsService$VirtualLock;->clearLock(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p4}, Lcom/android/server/LockSettingsService;->-wrap4(Lcom/android/server/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->-wrap20(Lcom/android/server/LockSettingsService;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p4}, Lcom/android/server/LockSettingsService;->-wrap8(Lcom/android/server/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    const/4 v3, 0x0

    invoke-static {v1, v3, p3, p2, p4}, Lcom/android/server/LockSettingsService;->-wrap10(Lcom/android/server/LockSettingsService;[BLjava/lang/String;II)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/LockSettingsService;->-wrap20(Lcom/android/server/LockSettingsService;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-virtual {v3}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v10

    iget-object v2, v10, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    const-string/jumbo v2, "Invalid escrow token supplied"

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    monitor-exit v11

    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    move/from16 v0, p6

    invoke-static {v2, v0}, Lcom/android/server/LockSettingsService;->-wrap13(Lcom/android/server/LockSettingsService;I)J

    move-result-wide v8

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v3, v10, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move/from16 v0, p6

    invoke-static {v2, p1, p2, v3, v0}, Lcom/android/server/LockSettingsService;->-wrap14(Lcom/android/server/LockSettingsService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J

    iget-object v2, p0, Lcom/android/server/LockSettingsService$VirtualLock;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/LockSettingsService;->-get2(Lcom/android/server/LockSettingsService;)Lcom/android/server/SyntheticPasswordManager;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v8, v9, v0}, Lcom/android/server/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    monitor-exit v11

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v11

    throw v2
.end method
