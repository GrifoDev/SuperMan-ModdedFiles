.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    return-void
.end method

.method public handleExecute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap19(Lcom/android/server/MountService;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap20(Lcom/android/server/MountService;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v14, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Denied attempt to mount OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " which is owned by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    monitor-exit v14

    if-eqz v8, :cond_1

    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    return-void

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v13, :cond_3

    const-string/jumbo v7, "none"

    :goto_0
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string/jumbo v14, "obb"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "mount"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/16 v17, 0x2

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    if-nez v12, :cond_4

    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Successfully mounted OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-static {v13, v15}, Lcom/android/server/MountService;->-wrap7(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v14

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v13, "PBKDF2WithHmacSHA1"

    invoke-static {v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    iget-object v14, v11, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v15, 0x400

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v13, 0x10

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    return-void

    :catch_1
    move-exception v4

    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Could not load PBKDF2 algorithm"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    return-void

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    const/16 v13, 0x195

    if-eq v2, v13, :cond_2

    const/4 v12, -0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_4
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Couldn\'t mount OBB file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
