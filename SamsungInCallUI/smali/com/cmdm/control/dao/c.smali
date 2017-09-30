.class public Lcom/cmdm/control/dao/c;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aC:Lcom/cmdm/control/dao/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aM()Lcom/cmdm/control/dao/c;
    .locals 2

    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmdm/control/dao/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/dao/c;

    invoke-direct {v0}, Lcom/cmdm/control/dao/c;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/bean/ErrorXMLException;"
        }
    .end annotation

    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->u(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isUnusualUser()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isUnusualUser()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/IsUnusualUserResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/IsUnusualUserResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/IsUnusualUserResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/IsUnusualUserResult;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    iget-object v3, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    move-object v4, v3

    :cond_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    move/from16 v12, p13

    :try_start_0
    invoke-static/range {v3 .. v12}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p14

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postRepository=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p12

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p12

    move/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mHashMap="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postRepository()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/OperationResult;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "12"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    const-string v3, "CaiYinSDK"

    const-string v5, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    const-string v4, ""

    const-string v5, "favorite"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v4, "\u6536\u85cf\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "31"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "\u60a8\u7684\u6536\u85cf\u56fe\u5e93\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u6536\u85cf"

    move-object v4, v3

    :cond_2
    :goto_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_5
    :try_start_4
    const-string v3, "CaiYinSDK"

    const-string v5, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->q(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postBuyContent()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postBuyContent()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Result;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    const-string v4, ""

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object v4, v3

    :cond_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->s(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postBuyBox()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postBuyBox()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Result;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_1
    const-string v4, ""

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object v4, v3

    :cond_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentBuyStatusResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getContentBuyStatus()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getContentBuyStatus()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getContentBuyStatus()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ContentBuyStatusResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GraphVerifyCode;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->m(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getGraphVerifyCode()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/GraphVerifyCode;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/GraphVerifyCode;

    invoke-direct {v4}, Lcom/cmdm/control/bean/GraphVerifyCode;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/GraphVerifyCode;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserTotalCost;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getGraphVerifyCode()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/UserTotalCost;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/UserTotalCost;

    invoke-direct {v4}, Lcom/cmdm/control/bean/UserTotalCost;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/UserTotalCost;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
