.class public Lcom/cmdm/control/dao/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aM:Lcom/cmdm/control/dao/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static aS()Lcom/cmdm/control/dao/i;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/cmdm/control/dao/i;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/cmdm/control/dao/i;

    invoke-direct {v0}, Lcom/cmdm/control/dao/i;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/i;->aM:Lcom/cmdm/control/dao/i;

    return-object v0

    .line 56
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
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 261
    const/16 v21, 0x0

    .line 263
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 265
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 266
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 266
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 269
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 272
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 274
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 275
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 277
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_4

    .line 280
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/LoginResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 281
    new-instance v5, Lcom/cmdm/control/bean/LoginResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/LoginResult;-><init>()V

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/LoginResult;

    .line 282
    .local v19, "loginResult":Lcom/cmdm/control/bean/LoginResult;
    if-eqz v19, :cond_3

    .line 283
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 284
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 286
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 296
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/LoginResult;->getText()Ljava/lang/String;

    move-result-object v4

    .line 295
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 320
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/LoginResult;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 299
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "loginResult":Lcom/cmdm/control/bean/LoginResult;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :cond_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    .line 300
    const-string v4, "\u5bc6\u7801\u8fde\u7eed\u8f93\u5165\u9519\u8bef\u6b21\u6570\u8d85\u8fc75\u6b21,\u8bf730\u5206\u949f\u540e\u91cd\u8bd5!"

    .line 299
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 301
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 304
    .end local v22    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    .line 305
    const-string v4, "\u4f60\u7684\u7528\u6237\u540d\u6216\u5bc6\u7801\u6709\u8bef,\u8bf7\u786e\u8ba4\u540e\u91cd\u65b0\u767b\u5f55!"

    .line 304
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 306
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 308
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/LoginResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v15

    .line 309
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 310
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 309
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 311
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 315
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 316
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 320
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 317
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 318
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "contentCode"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 326
    const/16 v21, 0x0

    .line 328
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 330
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 331
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 331
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 334
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 337
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 338
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 339
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 341
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 344
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MediaResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    new-instance v5, Lcom/cmdm/control/bean/MediaResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MediaResult;-><init>()V

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/MediaResult;

    .line 346
    .local v20, "mMsisdnInfo":Lcom/cmdm/control/bean/MediaResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 347
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 346
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    move-object/from16 v22, v21

    .line 364
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mMsisdnInfo":Lcom/cmdm/control/bean/MediaResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    :goto_0
    return-object v22

    .line 349
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 350
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 351
    const/4 v3, 0x6

    .line 352
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 350
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    move-object/from16 v22, v21

    .line 353
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    goto :goto_0

    .line 357
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 358
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    const/4 v3, 0x0

    .line 359
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 358
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 364
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    goto :goto_0

    .line 360
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    :catch_1
    move-exception v16

    .line 361
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 362
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 361
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    goto :goto_1
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 381
    const/16 v21, 0x0

    .line 384
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 385
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 386
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 387
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 386
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 389
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 392
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 393
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 394
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMsisdnInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 396
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 399
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MsisdnInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    new-instance v5, Lcom/cmdm/control/bean/MsisdnInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MsisdnInfo;-><init>()V

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/MsisdnInfo;

    .line 401
    .local v20, "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    const/4 v3, 0x1

    .line 402
    const-string v4, ""

    .line 401
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    move-object/from16 v22, v21

    .line 419
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mMsisdnInfo":Lcom/cmdm/control/bean/MsisdnInfo;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :goto_0
    return-object v22

    .line 404
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 405
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 406
    const/4 v3, 0x6

    .line 407
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 405
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    move-object/from16 v22, v21

    .line 408
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    goto :goto_0

    .line 412
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 413
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    const/4 v3, 0x0

    .line 414
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 413
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 419
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    goto :goto_0

    .line 415
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    :catch_1
    move-exception v16

    .line 416
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 417
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 416
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    goto :goto_1
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sms_very_code"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 787
    const/16 v20, 0x0

    .line 789
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 791
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 792
    const-string v5, ""

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 793
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 792
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 797
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 799
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 801
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 804
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 805
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 808
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/UserStatus;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 809
    new-instance v5, Lcom/cmdm/control/bean/UserStatus;

    invoke-direct {v5}, Lcom/cmdm/control/bean/UserStatus;-><init>()V

    .line 807
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/UserStatus;

    .line 810
    .local v24, "userInfo":Lcom/cmdm/control/bean/UserStatus;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    const/4 v3, 0x1

    .line 811
    const-string v4, ""

    .line 810
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    move-object/from16 v21, v20

    .line 828
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "userInfo":Lcom/cmdm/control/bean/UserStatus;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    :goto_0
    return-object v21

    .line 813
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 814
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 815
    const/4 v3, 0x6

    .line 816
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 814
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    move-object/from16 v21, v20

    .line 817
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    goto :goto_0

    .line 821
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 822
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    const/4 v3, 0x0

    .line 823
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 822
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 828
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    goto :goto_0

    .line 824
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    :catch_1
    move-exception v16

    .line 825
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 826
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 825
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    goto :goto_1
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 844
    const/16 v20, 0x0

    .line 846
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 848
    .local v23, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenMsisdn():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 850
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 851
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 850
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 853
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenMsisdn():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 856
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 858
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenMsisdn():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 861
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 862
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 864
    :try_start_1
    const-string v3, "CaiYinSDK"

    const-string v4, "tokenMsisdn():xml sax success"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-class v4, Lcom/cmdm/control/bean/UserTokenInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 867
    new-instance v5, Lcom/cmdm/control/bean/UserTokenInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/UserTokenInfo;-><init>()V

    .line 865
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/UserTokenInfo;

    .line 868
    .local v24, "userTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 869
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 868
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    move-object/from16 v21, v20

    .line 889
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "userTokenInfo":Lcom/cmdm/control/bean/UserTokenInfo;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    :goto_0
    return-object v21

    .line 871
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 872
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tokenMsisdn():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 872
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 875
    const/4 v3, 0x6

    .line 876
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 874
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    move-object/from16 v21, v20

    .line 877
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    goto :goto_0

    .line 882
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 883
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    const/4 v3, 0x0

    .line 884
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 883
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 889
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    goto :goto_0

    .line 885
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    :catch_1
    move-exception v16

    .line 886
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 887
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 886
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTokenInfo;>;"
    goto :goto_1
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 899
    const/16 v20, 0x0

    .line 901
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 904
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 908
    const-string v4, "GET"

    .line 907
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 908
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 909
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 905
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 912
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCommercialTrialProvince():="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 914
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 913
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 917
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 918
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 919
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCommercialTrialProvince():=resultValue:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 922
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCommercialTrialProvince():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 924
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 923
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

    .line 928
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 929
    new-instance v5, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;-><init>()V

    .line 926
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/CommercialTrialProvinceResult;

    .line 930
    .local v24, "winningUserResult":Lcom/cmdm/control/bean/CommercialTrialProvinceResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 931
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 930
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    move-object/from16 v21, v20

    .line 951
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "winningUserResult":Lcom/cmdm/control/bean/CommercialTrialProvinceResult;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    :goto_0
    return-object v21

    .line 933
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 934
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCommercialTrialProvince():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 937
    const/4 v3, 0x6

    .line 938
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 936
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    move-object/from16 v21, v20

    .line 939
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    goto :goto_0

    .line 944
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 945
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 946
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 945
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 951
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    goto :goto_0

    .line 947
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    :catch_1
    move-exception v16

    .line 948
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 949
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 948
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CommercialTrialProvinceResult;>;"
    goto :goto_1
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

    .prologue
    .line 96
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 97
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "loginMode"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/16 v21, 0x0

    .line 121
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 123
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 124
    const-string v5, ""

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 124
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 127
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialUserInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 131
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 132
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 133
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialUserInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 137
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 138
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/Result;

    .line 140
    .local v19, "loginResult":Lcom/cmdm/control/bean/Result;
    if-eqz v19, :cond_0

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    .line 145
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    .line 144
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "\u521d\u59cb\u5316\u4fe1\u606f\u6210\u529f"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v21, v22

    .line 170
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/Result;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    :goto_0
    return-object v22

    .line 149
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "loginResult":Lcom/cmdm/control/bean/Result;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v24, ""

    .line 150
    .local v24, "text":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 151
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v24

    .line 155
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v22

    .line 156
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 158
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/Result;
    .end local v24    # "text":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v22, v21

    .line 159
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v15, "e":Ljava/lang/Exception;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    :try_start_4
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 160
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 159
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_2

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 161
    .local v22, "result":Ljava/lang/Object;
    goto :goto_0

    .line 165
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 166
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/cmdm/control/exception/a; {:try_start_5 .. :try_end_5} :catch_1

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v22

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    move-object/from16 v22, v21

    .line 170
    .local v22, "result":Ljava/lang/Object;
    goto :goto_0

    .line 167
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 168
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    :goto_3
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2

    .line 167
    .end local v16    # "e1":Lcom/cmdm/control/exception/a;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_2
    move-exception v16

    move-object/from16 v21, v22

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3

    .line 158
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v19    # "loginResult":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_3
    move-exception v15

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "loginType"    # Ljava/lang/String;
    .param p2, "serverAddress"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "clientid"    # Ljava/lang/String;
    .param p5, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 619
    const/16 v20, 0x0

    .line 621
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/cmdm/control/http/a;->h(I)Ljava/lang/String;

    move-result-object v24

    .line 622
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 623
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 624
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 623
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 626
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phoneLatest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 629
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 631
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 632
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phoneLatest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 634
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 637
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SoftwarePackage;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 638
    new-instance v5, Lcom/cmdm/control/bean/SoftwarePackage;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SoftwarePackage;-><init>()V

    .line 636
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/cmdm/control/bean/SoftwarePackage;

    .line 639
    .local v23, "softwarePackage":Lcom/cmdm/control/bean/SoftwarePackage;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 640
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 639
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v21, v20

    .line 658
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "softwarePackage":Lcom/cmdm/control/bean/SoftwarePackage;
    .end local v24    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :goto_0
    return-object v21

    .line 642
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 643
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 644
    const/4 v3, 0x6

    .line 645
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 643
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v21, v20

    .line 646
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 650
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 651
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x0

    .line 652
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 651
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 658
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 653
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :catch_1
    move-exception v16

    .line 654
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 655
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 654
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;
    .param p4, "loginMode"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "extension_key"    # Ljava/lang/String;
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

    .prologue
    .line 1010
    const/16 v21, 0x0

    .line 1012
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1014
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1015
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1016
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1015
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1018
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getUserParaInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1021
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1022
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1023
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getUserParaInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1025
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    .line 1029
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/GetUserParaInfoResult;-><init>()V

    .line 1027
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/GetUserParaInfoResult;

    .line 1030
    .local v15, "content":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    if-eqz v15, :cond_0

    iget-object v3, v15, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1031
    iget-object v3, v15, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    iget-object v3, v15, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1033
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1034
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1033
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :goto_0
    move-object/from16 v22, v21

    .line 1057
    .end local v15    # "content":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :goto_1
    return-object v22

    .line 1036
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .restart local v15    # "content":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :cond_0
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1037
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    const/4 v3, 0x0

    iget-object v4, v15, Lcom/cmdm/control/bean/GetUserParaInfoResult;->resultText:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    goto :goto_0

    .line 1041
    .end local v15    # "content":Lcom/cmdm/control/bean/GetUserParaInfoResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :catch_0
    move-exception v16

    .line 1042
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getUserParaInfo"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1044
    const/4 v3, 0x6

    .line 1045
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1043
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    move-object/from16 v22, v21

    .line 1046
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    goto :goto_1

    .line 1050
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1051
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    const/4 v3, 0x0

    .line 1052
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1051
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :goto_2
    move-object/from16 v22, v21

    .line 1057
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    goto :goto_1

    .line 1053
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    :catch_1
    move-exception v17

    .line 1054
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1055
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1054
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetUserParaInfoResult;>;"
    goto :goto_2
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "serverAddress"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "clientid"    # Ljava/lang/String;
    .param p6, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 500
    const/16 v21, 0x0

    .line 502
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->g(I)Ljava/lang/String;

    move-result-object v24

    .line 503
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 504
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 505
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 504
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 507
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "defaultDisplay()==url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 510
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 512
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 514
    const-string v3, "CaiYinSDK"

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "defaultDisplay()==resultValue=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 515
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 518
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 521
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/DefaultCRSInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 522
    new-instance v5, Lcom/cmdm/control/bean/DefaultCRSInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/DefaultCRSInfo;-><init>()V

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/DefaultCRSInfo;

    .line 523
    .local v15, "defaultCRSInfo":Lcom/cmdm/control/bean/DefaultCRSInfo;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 524
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 523
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    move-object/from16 v22, v21

    .line 542
    .end local v15    # "defaultCRSInfo":Lcom/cmdm/control/bean/DefaultCRSInfo;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    :goto_0
    return-object v22

    .line 526
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 527
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 528
    const/4 v3, 0x6

    .line 529
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 527
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    move-object/from16 v22, v21

    .line 530
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    goto :goto_0

    .line 534
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 535
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    const/4 v3, 0x0

    .line 536
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 535
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 542
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    goto :goto_0

    .line 537
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    :catch_1
    move-exception v17

    .line 538
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 539
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 538
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DefaultCRSInfo;>;"
    goto :goto_1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "serverAddress"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "clientid"    # Ljava/lang/String;
    .param p6, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 674
    const/16 v21, 0x0

    .line 676
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->f(I)Ljava/lang/String;

    move-result-object v24

    .line 677
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 678
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 679
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 678
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 681
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "regionLatest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 684
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 686
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 687
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "regionLatest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 690
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 693
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/RegionInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 694
    new-instance v5, Lcom/cmdm/control/bean/RegionInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/RegionInfo;-><init>()V

    .line 692
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/RegionInfo;

    .line 695
    .local v20, "regionInfo":Lcom/cmdm/control/bean/RegionInfo;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    const/4 v3, 0x1

    .line 696
    const-string v4, ""

    .line 695
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    move-object/from16 v22, v21

    .line 714
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "regionInfo":Lcom/cmdm/control/bean/RegionInfo;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :goto_0
    return-object v22

    .line 698
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 699
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 700
    const/4 v3, 0x6

    .line 701
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 699
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    move-object/from16 v22, v21

    .line 702
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    goto :goto_0

    .line 706
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 707
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    const/4 v3, 0x0

    .line 708
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 707
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 714
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    goto :goto_0

    .line 709
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    :catch_1
    move-exception v16

    .line 710
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 711
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 710
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    goto :goto_1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "loginMode"    # Ljava/lang/String;
    .param p3, "serverAddress"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "clientid"    # Ljava/lang/String;
    .param p6, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 730
    const/16 v20, 0x0

    .line 732
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 734
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 735
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 736
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 735
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 738
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getClientKey()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 742
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 744
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 745
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getClientKey()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 748
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 751
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/ClientResult;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 752
    new-instance v5, Lcom/cmdm/control/bean/ClientResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/ClientResult;-><init>()V

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/ClientResult;

    .line 753
    .local v24, "userInfo":Lcom/cmdm/control/bean/ClientResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 754
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 753
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    move-object/from16 v21, v20

    .line 771
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "userInfo":Lcom/cmdm/control/bean/ClientResult;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    :goto_0
    return-object v21

    .line 756
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 757
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 758
    const/4 v3, 0x6

    .line 759
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 757
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    move-object/from16 v21, v20

    .line 760
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    goto :goto_0

    .line 764
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 765
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    const/4 v3, 0x0

    .line 766
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 765
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 771
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    goto :goto_0

    .line 767
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    :catch_1
    move-exception v16

    .line 768
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 769
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 768
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    goto :goto_1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "quDaoHao"    # Ljava/lang/String;
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

    .prologue
    .line 957
    const/16 v21, 0x0

    .line 959
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 960
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 964
    const-string v4, "POST"

    .line 963
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 964
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

    .line 961
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 967
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addBaseInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 971
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 972
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addBaseInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 977
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 978
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 981
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/BaseInfoResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 982
    new-instance v5, Lcom/cmdm/control/bean/BaseInfoResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/BaseInfoResult;-><init>()V

    .line 980
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/BaseInfoResult;

    .line 983
    .local v15, "billList":Lcom/cmdm/control/bean/BaseInfoResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 984
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 983
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    move-object/from16 v22, v21

    .line 1004
    .end local v15    # "billList":Lcom/cmdm/control/bean/BaseInfoResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    :goto_0
    return-object v22

    .line 986
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 987
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addBaseInfo():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 987
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 990
    const/4 v3, 0x6

    .line 991
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 989
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    move-object/from16 v22, v21

    .line 992
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    goto :goto_0

    .line 997
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 998
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    const/4 v3, 0x0

    .line 999
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 998
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1004
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    goto :goto_0

    .line 1000
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    :catch_1
    move-exception v17

    .line 1001
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1002
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1001
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    goto :goto_1
.end method

.method public saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "xml"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/Object;
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

    .prologue
    .line 83
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 84
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 85
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "passwrod"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "loginMode"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 176
    const/16 v22, 0x0

    .line 178
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 180
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 181
    const-string v6, ""

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 182
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    .line 181
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 184
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hxtlLogin()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 188
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 192
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 193
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "hxtlLogin()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 195
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_4

    .line 197
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 198
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 199
    .local v20, "loginResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_3

    .line 200
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 201
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 202
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 203
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    .line 206
    const-string v5, "6"

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v5, "5"

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    .line 212
    const-string v5, "6"

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 216
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v5

    .line 215
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 240
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "loginResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 219
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "loginResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 220
    const-string v5, "\u5bc6\u7801\u8fde\u7eed\u8f93\u5165\u9519\u8bef\u6b21\u6570\u8d85\u8fc75\u6b21,\u8bf730\u5206\u949f\u540e\u91cd\u8bd5!"

    .line 219
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 221
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 224
    .end local v23    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    .line 225
    const-string v5, "\u4f60\u7684\u7528\u6237\u540d\u6216\u5bc6\u7801\u6709\u8bef,\u8bf7\u786e\u8ba4\u540e\u91cd\u65b0\u767b\u5f55!"

    .line 224
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 226
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 228
    .end local v20    # "loginResult":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v16

    .line 229
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 230
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 229
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 231
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 235
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 236
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 240
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 237
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 238
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "budymsisdn"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "loginType"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 442
    const/16 v21, 0x0

    .line 444
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 446
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 450
    const-string v4, "GET"

    .line 449
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 451
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 447
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 453
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 455
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "display()==url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 457
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "display()==resultValue=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 460
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 461
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 463
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/CRSInfo;

    .line 464
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/CRSInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CRSInfo;-><init>()V

    .line 463
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/CRSInfo;

    .line 465
    .local v15, "crsInfo":Lcom/cmdm/control/bean/CRSInfo;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    const/4 v3, 0x1

    .line 466
    const-string v4, ""

    .line 465
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    move-object/from16 v22, v21

    .line 485
    .end local v15    # "crsInfo":Lcom/cmdm/control/bean/CRSInfo;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :goto_0
    return-object v22

    .line 468
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 469
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 470
    const/4 v3, 0x6

    .line 471
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 469
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    move-object/from16 v22, v21

    .line 472
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_0

    .line 476
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 477
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    .line 478
    const/4 v5, 0x0

    .line 477
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 485
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_0

    .line 479
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    :catch_1
    move-exception v17

    .line 480
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "display()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 482
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 481
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    goto :goto_1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "budymsisdn"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "loginType"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;
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

    .prologue
    .line 559
    const/16 v21, 0x0

    .line 561
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 563
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 567
    const-string v4, "GET"

    .line 566
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 567
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 568
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 564
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 570
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 572
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "display()==url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 574
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "display()==resultValue=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 577
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 578
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 581
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/DisplayResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 582
    new-instance v5, Lcom/cmdm/control/bean/DisplayResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/DisplayResult;-><init>()V

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/i;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/DisplayResult;

    .line 583
    .local v15, "crsInfo":Lcom/cmdm/control/bean/DisplayResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 584
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 583
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    move-object/from16 v22, v21

    .line 602
    .end local v15    # "crsInfo":Lcom/cmdm/control/bean/DisplayResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :goto_0
    return-object v22

    .line 586
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 587
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 588
    const/4 v3, 0x6

    .line 589
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 587
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    move-object/from16 v22, v21

    .line 590
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    goto :goto_0

    .line 594
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/i;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 595
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    const/4 v3, 0x0

    .line 596
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 595
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 602
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    goto :goto_0

    .line 597
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    :catch_1
    move-exception v17

    .line 598
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 599
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 598
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DisplayResult;>;"
    goto :goto_1
.end method
