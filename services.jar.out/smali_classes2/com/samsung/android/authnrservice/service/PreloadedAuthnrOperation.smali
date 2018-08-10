.class final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
.super Ljava/lang/Object;
.source "PreloadedAuthnrOperation.java"


# static fields
.field private static final FIDO_CMD_DO_FIDO:I = 0x3

.field private static final FIDO_CMD_GET_WRAPPED_OBJECT:I = 0x2

.field private static final FIDO_CMD_SET_CHALLENGE:I = 0x1

.field private static final MAX_RESPONSE_LENGTH:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "PAO"

.field private static sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    .locals 2

    const-class v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    invoke-direct {v0, p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    :cond_0
    sget-object v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendRequest([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "PAO"

    const-string/jumbo v1, "send request"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PAO"

    const-string/jumbo v1, "request is 0"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_1
    const/16 v0, 0x2800

    new-array v3, v0, [B

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x9

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;)I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v0, "PAO"

    const-string/jumbo v1, "request failed"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initialize()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "PAO"

    const-string/jumbo v1, "initialize TA"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;

    invoke-direct {v0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrTaController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v0}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->initialize()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "process"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, p1

    if-nez v6, :cond_0

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "input data is null"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_1

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "appId is too long(max: 32)"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_1
    :try_start_2
    const-string/jumbo v6, "authnr"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "PAO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "appId is wrong. appId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v6

    :cond_2
    const/4 v6, 0x0

    :try_start_3
    new-array v4, v6, [B

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    array-length v7, p1

    add-int/2addr v6, v7

    new-array v1, v6, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/16 v7, 0x5301

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    array-length v7, p1

    add-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    const/16 v7, 0x5302

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    const/4 v7, 0x6

    invoke-virtual {v2, v7, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v6, v8, v1, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    array-length v7, p1

    const/4 v8, 0x0

    invoke-static {p1, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "unknown opCode"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-nez v4, :cond_4

    const/4 v6, 0x0

    new-array v4, v6, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v4

    :pswitch_0
    :try_start_4
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "setChallenge start"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v6, v4

    if-nez v6, :cond_3

    :cond_5
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "send request fail"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :pswitch_1
    :try_start_5
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "getWrappedObject"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "TA init failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sendRequest([B)[B

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v6, v4

    if-nez v6, :cond_3

    :cond_7
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "send request failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "doFido"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->initialize()Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "TA init failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "TA init failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    const/4 v7, 0x3

    invoke-interface {v6, v7, p1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->process(I[B)[B

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v6, v4

    if-nez v6, :cond_b

    :cond_a
    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "process failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->terminate()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v6, "PAO"

    const-string/jumbo v7, "TA terminate failed"

    invoke-static {v6, v7}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized terminate()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "PAO"

    const-string/jumbo v2, "terminate"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v1, :cond_0

    const-string/jumbo v1, "PAO"

    const-string/jumbo v2, "controller is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->terminate()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "PAO"

    const-string/jumbo v2, "terminate failed"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->mPreloadedAuthnrTaController:Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
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
