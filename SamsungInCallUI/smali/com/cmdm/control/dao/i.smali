.class public Lcom/cmdm/control/dao/i;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aM:Lcom/cmdm/control/dao/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aS()Lcom/cmdm/control/dao/i;
    .locals 2

    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmdm/control/dao/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/dao/i;

    invoke-direct {v0}, Lcom/cmdm/control/dao/i;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

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
.method public H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

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

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "login()=="

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

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "login()=="

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

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/LoginResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/LoginResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/LoginResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/LoginResult;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/LoginResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u5bc6\u7801\u8fde\u7eed\u8f93\u5165\u9519\u8bef\u6b21\u6570\u8d85\u8fc75\u6b21,\u8bf730\u5206\u949f\u540e\u91cd\u8bd5!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
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
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    const-string v5, "\u4f60\u7684\u7528\u6237\u540d\u6216\u5bc6\u7801\u6709\u8bef,\u8bf7\u786e\u8ba4\u540e\u91cd\u65b0\u767b\u5f55!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
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
            "Lcom/cmdm/control/bean/MediaResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/plain"

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v3, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v2 .. v13}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MediaResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/MediaResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/MediaResult;-><init>()V

    invoke-virtual {p0, v4, v2, v3}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/MediaResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v3}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual {v3}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/MsisdnInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    invoke-static {p1, v0}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMsisdnInfo()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMsisdnInfo()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MsisdnInfo;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/MsisdnInfo;

    invoke-direct {v2}, Lcom/cmdm/control/bean/MsisdnInfo;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/MsisdnInfo;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
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
            "Lcom/cmdm/control/bean/UserStatus;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

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

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

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
    const-class v5, Lcom/cmdm/control/bean/UserStatus;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/UserStatus;

    invoke-direct {v4}, Lcom/cmdm/control/bean/UserStatus;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/UserStatus;

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
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
            "Lcom/cmdm/control/bean/UserTokenInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenMsisdn():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tokenMsisdn():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tokenMsisdn():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

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
    const-string v3, "CaiYinSDK"

    const-string v5, "tokenMsisdn():xml sax success"

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/cmdm/control/bean/UserTokenInfo;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/UserTokenInfo;

    invoke-direct {v4}, Lcom/cmdm/control/bean/UserTokenInfo;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/UserTokenInfo;

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
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tokenMsisdn():xml sax fail:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
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
            "Lcom/cmdm/control/bean/CommercialTrialProvinceResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;I)Ljava/lang/String;

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

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCommercialTrialProvince():="

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

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCommercialTrialProvince():=resultValue:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

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

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCommercialTrialProvince():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

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
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCommercialTrialProvince():xml sax fail:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14

    :try_start_0
    move/from16 v0, p5

    invoke-static {p1, v0}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object v2, p1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialUserInfo()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialUserInfo()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/Result;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/Result;

    invoke-direct {v2}, Lcom/cmdm/control/bean/Result;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/Result;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    const-string v1, "CaiYinSDK"

    const-string v3, "\u521d\u59cb\u5316\u4fe1\u606f\u6210\u529f"

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/cmdm/control/http/a;->h(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phoneLatest()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phoneLatest()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/SoftwarePackage;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/SoftwarePackage;

    invoke-direct {v2}, Lcom/cmdm/control/bean/SoftwarePackage;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/SoftwarePackage;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetUserParaInfoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getUserParaInfo()=="

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

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getUserParaInfo()=="

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

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_1

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/GetUserParaInfoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultText:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getUserParaInfo"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DefaultCRSInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object v2, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "defaultDisplay()==url=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "defaultDisplay()==resultValue=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/DefaultCRSInfo;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/DefaultCRSInfo;

    invoke-direct {v2}, Lcom/cmdm/control/bean/DefaultCRSInfo;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/DefaultCRSInfo;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RegionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->f(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object v2, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regionLatest()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regionLatest()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/RegionInfo;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/RegionInfo;

    invoke-direct {v2}, Lcom/cmdm/control/bean/RegionInfo;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/RegionInfo;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p3

    invoke-static {p1, v0}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getClientKey()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getClientKey()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ClientResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/ClientResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/ClientResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ClientResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v2}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
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
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BaseInfoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->a(ILjava/lang/String;)Ljava/lang/String;

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

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBaseInfo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBaseInfo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

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
    const-class v5, Lcom/cmdm/control/bean/BaseInfoResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/BaseInfoResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/BaseInfoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/BaseInfoResult;

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
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addBaseInfo():xml sax fail:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v6, ""

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hxtlLogin()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hxtlLogin()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "200"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_4

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_4

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/Result;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/Result;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    const-string v6, "\u5bc6\u7801\u8fde\u7eed\u8f93\u5165\u9519\u8bef\u6b21\u6570\u8d85\u8fc75\u6b21,\u8bf730\u5206\u949f\u540e\u91cd\u8bd5!"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v5}, Lcom/cmdm/control/exception/a;->be()I

    move-result v6

    invoke-virtual {v5}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    const-string v6, "\u4f60\u7684\u7528\u6237\u540d\u6216\u5bc6\u7801\u6709\u8bef,\u8bf7\u786e\u8ba4\u540e\u91cd\u65b0\u767b\u5f55!"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "display()==url=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "display()==resultValue=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

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
    const-class v5, Lcom/cmdm/control/bean/CRSInfo;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CRSInfo;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CRSInfo;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CRSInfo;

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

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "display()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/DisplayResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "display()==url=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "display()==resultValue=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

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
    const-class v5, Lcom/cmdm/control/bean/DisplayResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/DisplayResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DisplayResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/DisplayResult;

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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
