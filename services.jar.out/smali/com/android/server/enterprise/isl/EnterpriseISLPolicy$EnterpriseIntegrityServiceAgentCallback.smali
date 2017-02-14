.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
.super Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseIntegrityServiceAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISL addFingerPrint Uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "addFingerPrint"

    invoke-virtual {p0, p4, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "isaPackageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "fpCurrent"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v1, "fpDirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    const-string/jumbo v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public checkResult(IILjava/lang/String;[B[BI)V
    .locals 9

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "in checkResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onViolation(IILjava/lang/String;[B[BI)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ISA reported checkResult for scan type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFingerPrintFlag(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ISL ClearFingerPrintFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->clearFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public commit()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL commit "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public commitFingerPrint(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ISL commitFingerPrint "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->clearFingerPrintFlag(ILjava/lang/String;)Z

    :cond_0
    return v0
.end method

.method public computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V
    .locals 30

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "computeFileHash - invalid input"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "File Count -- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "File -- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get2(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "UTF-8"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v11

    const-string/jumbo v26, "algorithm %s does not exist"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const-string/jumbo v28, "UTF-8"

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v26, Ljava/lang/RuntimeException;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "attrMode : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "attrUid : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "attrGid : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "attr : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get1(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v26

    const-string/jumbo v27, "UTF-8"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v25

    if-eqz v25, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    aget-object v24, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    :catch_1
    move-exception v11

    const-string/jumbo v26, "algorithm %s does not exist"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const-string/jumbo v28, "UTF-8"

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v26, Ljava/lang/RuntimeException;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "directory is empty"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v18, 0x0

    :try_start_2
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v19, Ljava/security/DigestInputStream;

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get0(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v19, :cond_8

    const/16 v26, 0x1000

    :try_start_3
    move/from16 v0, v26

    new-array v8, v0, [B

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    if-eqz v19, :cond_7

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    :goto_4
    return-void

    :catch_2
    move-exception v10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "failed - closing file input stream: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_8
    if-eqz v19, :cond_9

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap2(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v17

    if-eqz v17, :cond_a

    :try_start_6
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get5()I

    move-result v26

    if-lez v26, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get5()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v26, v22, v26

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get8()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Platform Scan Progress -- "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-set1(I)I

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->platformScanProgress(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_a
    :goto_6
    return-void

    :catch_3
    move-exception v10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "failed - closing file input stream: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_4
    move-exception v12

    :goto_7
    :try_start_7
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "failed - generate file digest : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v18, :cond_9

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "failed - closing file input stream: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catchall_0
    move-exception v26

    :goto_8
    if-eqz v18, :cond_b

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_b
    :goto_9
    throw v26

    :catch_6
    move-exception v10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "failed - closing file input stream: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_7
    move-exception v9

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v26

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catchall_1
    move-exception v26

    move-object/from16 v18, v19

    goto :goto_8

    :catch_8
    move-exception v12

    move-object/from16 v18, v19

    goto/16 :goto_7
.end method

.method public countFiles(Ljava/io/File;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "countFiles - invalid input"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get5()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-set0(I)I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "directory is empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public delete3rdPartyBaseLine(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL delete3rdPartyBaseLine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public delete3rdPartyBaseline()Z
    .locals 10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ISL delete3rdPartyBaseline"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v7, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap7(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v7, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap6(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v7, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap6(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ISL delete3rdPartyBaseline--- There is no entry in the DB "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISL deleteFingerPrint of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    aput-object v3, v1, v7

    const-string/jumbo v3, "isaPackageName"

    aput-object v3, v1, v8

    const-string/jumbo v3, "packageName"

    aput-object v3, v1, v9

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p2, v2, v8

    aput-object p3, v2, v9

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "fpDirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string/jumbo v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public deletePlatformBaseLine()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL deletePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public deletePreBaseLine()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL deletePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getPackageInfo(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v12, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v12}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    if-lez v12, :cond_1

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap1(I)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_1
    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap0(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;II)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " in getPackageInfo -----  Retrieving packageList For UserId: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    :goto_2
    return-object v3

    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getPackageList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v5, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v5, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap5(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v4

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public performPlatformScan()[B
    .locals 10

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "in performPlatformScan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get11()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-set0(I)I

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-set1(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    invoke-direct {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;-><init>()V

    const/4 v2, 0x0

    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    const-string/jumbo v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get1(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get2(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->-get0(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v6

    return-object v2

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "Algorithm %s does not exist"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "SHA-256"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public print_fingerprint([BLjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "fingerprint is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-byte v1, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Byte recieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public progress(II)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "in ISA progress"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onProgress(II)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISA reported progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "% for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public read3rdPartyBaseLine(Ljava/lang/String;)[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL read3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ISL readFingerPrint "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v4, "adminUid"

    aput-object v4, v1, v6

    const-string/jumbo v4, "isaPackageName"

    aput-object v4, v1, v7

    const-string/jumbo v4, "packageName"

    aput-object v4, v1, v8

    new-array v3, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "fpBaseLined"

    aput-object v4, v2, v6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "EnterpriseIslFpTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v4, "readFingerPrint"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    return-object v0
.end method

.method public readPlatformBaseLine()[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL readPlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readPreBaseLine()[B
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL readPreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public reportError(IILjava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "in reportError"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onError(IILjava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISA reported error for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSuccess(I)V
    .locals 6

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "in reportSuccess"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onSuccess(I)V

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ISA reported success for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rollback()Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL rollback "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public rollbackFingerPrint(ILjava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ISL rollbackFingerPrint "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public store3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL store3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "prebaseLine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public storePlatformBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL storePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public storePreBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL storePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public update3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL update3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ISL updateFingerPrint "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "adminUid"

    aput-object v3, v1, v6

    const-string/jumbo v3, "isaPackageName"

    aput-object v3, v1, v7

    const-string/jumbo v3, "packageName"

    aput-object v3, v1, v5

    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v5

    const-string/jumbo v3, "updateFingerPrint"

    invoke-virtual {p0, p4, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "fpCurrent"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v3, "fpDirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string/jumbo v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public updatePlatformBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL updatePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updatePreBaseLine([B)Z
    .locals 4

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISL updatePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap4(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get7()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method
