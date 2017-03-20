.class public Lcom/cmdm/control/dao/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aC:Lcom/cmdm/control/dao/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static aM()Lcom/cmdm/control/dao/c;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/cmdm/control/dao/c;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/cmdm/control/dao/c;

    invoke-direct {v0}, Lcom/cmdm/control/dao/c;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/c;->aC:Lcom/cmdm/control/dao/c;

    return-object v0

    .line 46
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

    .prologue
    .line 86
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 88
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "clientKey"    # Ljava/lang/String;
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    const/16 v21, 0x0

    .line 555
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->u(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 558
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 562
    const-string v4, "GET"

    .line 561
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 562
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 563
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 559
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 565
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isUnusualUser()=="

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

    .line 566
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 569
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 570
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 571
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isUnusualUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
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

    .line 573
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

    .line 576
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/IsUnusualUserResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 577
    new-instance v5, Lcom/cmdm/control/bean/IsUnusualUserResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/IsUnusualUserResult;-><init>()V

    .line 575
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/IsUnusualUserResult;

    .line 578
    .local v19, "loginResult":Lcom/cmdm/control/bean/IsUnusualUserResult;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 579
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->code:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 582
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    .line 581
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 605
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/IsUnusualUserResult;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 585
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "loginResult":Lcom/cmdm/control/bean/IsUnusualUserResult;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 586
    .local v24, "text":Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 587
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/cmdm/control/bean/IsUnusualUserResult;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 590
    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 591
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 593
    .end local v19    # "loginResult":Lcom/cmdm/control/bean/IsUnusualUserResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "text":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 594
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 595
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 594
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 596
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 600
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 601
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
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 605
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 602
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 603
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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "repository_category"    # Ljava/lang/String;
    .param p4, "content_id"    # Ljava/lang/String;
    .param p5, "buddy_msisdn"    # Ljava/lang/String;
    .param p6, "crs_price"    # Ljava/lang/String;
    .param p7, "fresh_present"    # Ljava/lang/String;
    .param p8, "picture_name"    # Ljava/lang/String;
    .param p9, "share_diy"    # Ljava/lang/String;
    .param p10, "picturePath"    # Ljava/lang/String;
    .param p11, "crstype"    # Ljava/lang/String;
    .param p12, "loginMode"    # Ljava/lang/String;
    .param p13, "serverAddress"    # I
    .param p14, "context"    # Landroid/content/Context;
    .param p15, "clientid"    # Ljava/lang/String;
    .param p16, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 274
    const/16 v21, 0x0

    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
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

    .line 276
    :try_start_0
    invoke-static/range {v3 .. v12}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 280
    .local v25, "url":Ljava/lang/String;
    const/16 v19, 0x0

    .line 281
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p14

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 283
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 284
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postRepository=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 286
    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p12

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
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

    .line 285
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 289
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mHashMap="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 292
    if-eqz v23, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 293
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postRepository()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 295
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

    if-nez v3, :cond_5

    .line 299
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/OperationResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    new-instance v5, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/OperationResult;

    .line 301
    .local v20, "operationResult":Lcom/cmdm/control/bean/OperationResult;
    if-eqz v20, :cond_1

    .line 302
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 304
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "12"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    :cond_0
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    .line 307
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    .line 306
    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v21, v22

    .line 349
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    :goto_0
    return-object v22

    .line 311
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v24, ""

    .line 312
    .local v24, "text":Ljava/lang/String;
    const-string v3, "favorite"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 313
    const-string v24, "\u6536\u85cf\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    .line 314
    if-eqz v20, :cond_3

    .line 315
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 316
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 317
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 318
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 319
    const-string v4, "31"

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    const-string v24, "\u60a8\u7684\u6536\u85cf\u56fe\u5e93\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u6536\u85cf"

    .line 332
    :cond_2
    :goto_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v22

    .line 333
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_0

    .line 321
    :cond_3
    if-eqz v20, :cond_2

    .line 322
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    .line 324
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 327
    :cond_4
    if-eqz v20, :cond_2

    .line 328
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v24

    goto :goto_1

    .line 335
    .end local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .end local v24    # "text":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v22, v21

    .line 336
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .local v15, "e":Ljava/lang/Exception;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    :try_start_4
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 337
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 336
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_2

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 338
    .local v22, "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 342
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_5
    :try_start_5
    const-string v3, "CaiYinSDK"

    const-string v4, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 344
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
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_3
    move-object/from16 v22, v21

    .line 349
    .local v22, "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 345
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 346
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    :goto_4
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_3

    .line 345
    .end local v16    # "e1":Lcom/cmdm/control/exception/a;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_2
    move-exception v16

    move-object/from16 v21, v22

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_4

    .line 335
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v20    # "operationResult":Lcom/cmdm/control/bean/OperationResult;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :catch_3
    move-exception v15

    goto :goto_2
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "contentId"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 111
    const/16 v21, 0x0

    .line 113
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->q(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 115
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 119
    const-string v4, "POST"

    .line 118
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
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

    .line 116
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 122
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 124
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 125
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postBuyContent()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 128
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postBuyContent()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 130
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

    if-nez v3, :cond_3

    .line 132
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 133
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 134
    .local v20, "mResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_1

    .line 135
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 136
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    .line 138
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 140
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 139
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 164
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 143
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_1
    const-string v24, ""

    .line 144
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 145
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 148
    :cond_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 149
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 151
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 152
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 153
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 152
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 154
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 158
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 159
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
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 164
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 160
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 161
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

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "serverAddress"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "clientid"    # Ljava/lang/String;
    .param p8, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 183
    const/16 v21, 0x0

    .line 186
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->s(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 188
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 192
    const-string v4, "POST"

    .line 191
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
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

    .line 189
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 195
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 197
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 198
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postBuyBox()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 201
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postBuyBox()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 203
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

    if-nez v3, :cond_3

    .line 205
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 206
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 207
    .local v20, "mResult":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_1

    .line 208
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 209
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    .line 211
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 213
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 212
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 237
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 216
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_1
    const-string v24, ""

    .line 217
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 218
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 221
    :cond_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 222
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 224
    .end local v20    # "mResult":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 225
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 226
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 225
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 227
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 231
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 232
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
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 237
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 233
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 234
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

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "contentId"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/ContentBuyStatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    const/16 v20, 0x0

    .line 362
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 365
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 369
    const-string v4, "GET"

    .line 368
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    .line 366
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 373
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getContentBuyStatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getContentBuyStatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 378
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 380
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 381
    const-string v3, "CaiYinSDK"

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getContentBuyStatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
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

    .line 384
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

    .line 387
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    .line 388
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    new-instance v5, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/ContentBuyStatusResult;-><init>()V

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/ContentBuyStatusResult;

    .line 390
    .local v24, "winningUserResult":Lcom/cmdm/control/bean/ContentBuyStatusResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 391
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 390
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    move-object/from16 v21, v20

    .line 409
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "winningUserResult":Lcom/cmdm/control/bean/ContentBuyStatusResult;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    :goto_0
    return-object v21

    .line 393
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 394
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 395
    const/4 v3, 0x6

    .line 396
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 394
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    move-object/from16 v21, v20

    .line 397
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_0

    .line 401
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 402
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    const/4 v3, 0x0

    .line 403
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 402
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 409
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_0

    .line 404
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    :catch_1
    move-exception v16

    .line 405
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 406
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 405
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentBuyStatusResult;>;"
    goto :goto_1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/GraphVerifyCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    const/16 v21, 0x0

    .line 422
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->m(I)Ljava/lang/String;

    move-result-object v24

    .line 424
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/16 v20, 0x0

    .line 426
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 428
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 429
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 430
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

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

    .line 429
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 433
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 435
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 436
    const-string v3, "CaiYinSDK"

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
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

    .line 440
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

    .line 444
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GraphVerifyCode;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    new-instance v5, Lcom/cmdm/control/bean/GraphVerifyCode;

    invoke-direct {v5}, Lcom/cmdm/control/bean/GraphVerifyCode;-><init>()V

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/GraphVerifyCode;

    .line 446
    .local v15, "content":Lcom/cmdm/control/bean/GraphVerifyCode;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 447
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 446
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    move-object/from16 v22, v21

    .line 465
    .end local v15    # "content":Lcom/cmdm/control/bean/GraphVerifyCode;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    :goto_0
    return-object v22

    .line 449
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 450
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 451
    const/4 v3, 0x6

    .line 452
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 450
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    move-object/from16 v22, v21

    .line 453
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_0

    .line 457
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 458
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    const/4 v3, 0x0

    .line 459
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 458
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 465
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_0

    .line 460
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    :catch_1
    move-exception v17

    .line 461
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 462
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 461
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GraphVerifyCode;>;"
    goto :goto_1
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/UserTotalCost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    const/16 v21, 0x0

    .line 490
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 492
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/16 v20, 0x0

    .line 495
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 497
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 498
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 499
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

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

    .line 498
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 502
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 504
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 505
    const-string v3, "CaiYinSDK"

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGraphVerifyCode()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
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

    .line 509
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

    .line 513
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/UserTotalCost;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 514
    new-instance v5, Lcom/cmdm/control/bean/UserTotalCost;

    invoke-direct {v5}, Lcom/cmdm/control/bean/UserTotalCost;-><init>()V

    .line 512
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/c;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/UserTotalCost;

    .line 515
    .local v15, "content":Lcom/cmdm/control/bean/UserTotalCost;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 516
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 515
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    move-object/from16 v22, v21

    .line 534
    .end local v15    # "content":Lcom/cmdm/control/bean/UserTotalCost;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    :goto_0
    return-object v22

    .line 518
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 519
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 520
    const/4 v3, 0x6

    .line 521
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 519
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    move-object/from16 v22, v21

    .line 522
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    goto :goto_0

    .line 526
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/c;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 527
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    const/4 v3, 0x0

    .line 528
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 527
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 534
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    goto :goto_0

    .line 529
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
    :catch_1
    move-exception v17

    .line 530
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 531
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 530
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserTotalCost;>;"
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
    .line 73
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 74
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 75
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
