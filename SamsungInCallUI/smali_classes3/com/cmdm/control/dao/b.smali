.class public Lcom/cmdm/control/dao/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aB:Lcom/cmdm/control/dao/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/b;->aB:Lcom/cmdm/control/dao/b;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static aL()Lcom/cmdm/control/dao/b;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/cmdm/control/dao/b;->aB:Lcom/cmdm/control/dao/b;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcom/cmdm/control/dao/b;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/b;->aB:Lcom/cmdm/control/dao/b;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/cmdm/control/dao/b;

    invoke-direct {v0}, Lcom/cmdm/control/dao/b;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/b;->aB:Lcom/cmdm/control/dao/b;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/b;->aB:Lcom/cmdm/control/dao/b;

    return-object v0

    .line 64
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
    .line 104
    .local p1, "xml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/cmdm/control/bean/ErrorXMLException;

    invoke-direct {v0}, Lcom/cmdm/control/bean/ErrorXMLException;-><init>()V

    .line 106
    .local v0, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    const-string v1, "\u5173\u952e\u65f6\u523b\u6389\u94fe\u5b50\u4e86,\u7a0b\u5e8f\u733f\u6b63\u5728\u52aa\u529b\u4fee\u8865\u4e2d!"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const-string v1, "\u54a6\uff0c\u7f51\u7edc\u597d\u50cf\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/ErrorXMLException;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "shortMobile"    # Ljava/lang/String;
    .param p9, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 1225
    const/16 v22, 0x0

    .line 1227
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1229
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delCornetBinding()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const/16 v21, 0x0

    .line 1231
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1233
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 1234
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1235
    const-string v5, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1236
    const-string v7, ""

    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1234
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 1238
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1240
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1241
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delCornetBinding()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 1243
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

    if-nez v4, :cond_2

    .line 1245
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1246
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1245
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/Result;

    .line 1247
    .local v16, "content":Lcom/cmdm/control/bean/Result;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1248
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1249
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1251
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1250
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1276
    .end local v16    # "content":Lcom/cmdm/control/bean/Result;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 1254
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v16    # "content":Lcom/cmdm/control/bean/Result;
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1255
    .local v25, "str":Ljava/lang/String;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1256
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1257
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1259
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1260
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1262
    .end local v16    # "content":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1263
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "getCornetBinding()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1265
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1264
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1266
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1270
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1271
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 1276
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1272
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 1273
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 28
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    .prologue
    .line 878
    .local p8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 880
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    invoke-static/range {p8 .. p8}, Lcom/cmdm/control/bean/InterestLableList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v27

    .line 881
    .local v27, "xml":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->x(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 882
    .local v26, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 886
    const-string v5, "POST"

    .line 885
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 886
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 883
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 889
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setMyInterest()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 893
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 896
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 897
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setMyInterest()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 900
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

    if-nez v4, :cond_2

    .line 903
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 904
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 903
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 905
    .local v21, "re":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 906
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 907
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 909
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v5

    .line 908
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 933
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xml":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 912
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "re":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    .restart local v27    # "xml":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 913
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 914
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 915
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v25

    .line 917
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 918
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 920
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 921
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "setMyInterest()==xml\u89e3\u6790\u9519\u8bef"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 923
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 922
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 924
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 928
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 929
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
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .end local v27    # "xml":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 933
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 930
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 931
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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "statusLableId"    # Ljava/lang/String;
    .param p5, "flag"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .param p10, "startTime"    # Ljava/lang/String;
    .param p11, "endTime"    # Ljava/lang/String;

    .prologue
    .line 818
    const/16 v21, 0x0

    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    .line 820
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 822
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 826
    const-string v4, "POST"

    .line 825
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 826
    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 823
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 829
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setMyStatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 833
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 835
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 836
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setMyStatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
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

    .line 839
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

    .line 842
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 843
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 842
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    .line 844
    .local v20, "re":Lcom/cmdm/control/bean/Result;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 847
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 848
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    .line 847
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 872
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "re":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 851
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "re":Lcom/cmdm/control/bean/Result;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 852
    .local v24, "str":Ljava/lang/String;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 853
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 854
    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v24

    .line 856
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

    .line 857
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 859
    .end local v20    # "re":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 860
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "setMyStatus()==xml\u89e3\u6790\u9519\u8bef"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 862
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 861
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 863
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 867
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 868
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

    .line 872
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 869
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 870
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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "content_name"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "picturePath"    # Ljava/lang/String;
    .param p6, "loginType"    # Ljava/lang/String;
    .param p7, "serverAddress"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "clientid"    # Ljava/lang/String;
    .param p10, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 226
    const/16 v22, 0x0

    .line 228
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 231
    .local v26, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 235
    const-string v5, "PUT"

    .line 234
    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    const-string v7, ""

    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    .line 232
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 238
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putProfile()====="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 241
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 242
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    const-string v4, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 243
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v20, "path":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->b(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 250
    .end local v20    # "path":Ljava/io/File;
    :goto_0
    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 251
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putProfile()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 253
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

    if-nez v4, :cond_3

    .line 256
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/ProfileResult;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 257
    new-instance v6, Lcom/cmdm/control/bean/ProfileResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ProfileResult;-><init>()V

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/ProfileResult;

    .line 258
    .local v21, "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    if-eqz v21, :cond_1

    .line 259
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 263
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v5

    .line 262
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 287
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_1
    return-object v23

    .line 246
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v24

    goto/16 :goto_0

    .line 266
    .restart local v21    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    :cond_1
    :try_start_3
    const-string v25, ""

    .line 267
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 268
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 269
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v25

    .line 272
    :cond_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 273
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 275
    .end local v21    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 276
    .local v16, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 277
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 276
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 278
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 282
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 283
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_2
    move-object/from16 v23, v22

    .line 287
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 284
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v16

    .line 285
    .local v16, "e":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_2
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
    .line 128
    const/16 v20, 0x0

    .line 130
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/cmdm/control/http/a;->h(I)Ljava/lang/String;

    move-result-object v24

    .line 131
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 132
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 132
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 135
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

    .line 136
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 138
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 140
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 141
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

    .line 142
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

    .line 143
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

    .line 146
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SoftwarePackage;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    new-instance v5, Lcom/cmdm/control/bean/SoftwarePackage;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SoftwarePackage;-><init>()V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/cmdm/control/bean/SoftwarePackage;

    .line 148
    .local v23, "softwarePackage":Lcom/cmdm/control/bean/SoftwarePackage;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 149
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 148
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v21, v20

    .line 166
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "softwarePackage":Lcom/cmdm/control/bean/SoftwarePackage;
    .end local v24    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :goto_0
    return-object v21

    .line 151
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 152
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 153
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 152
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v21, v20

    .line 154
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 158
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 159
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x0

    .line 160
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 159
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

    .line 166
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 161
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :catch_1
    move-exception v16

    .line 162
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 163
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 162
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/16 v20, 0x0

    .line 180
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 181
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 185
    const-string v4, "GET"

    .line 184
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 186
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 182
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 188
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProfile()====="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 191
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 192
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getProfile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
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

    .line 195
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

    .line 198
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/UserProfile;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    new-instance v5, Lcom/cmdm/control/bean/UserProfile;

    invoke-direct {v5}, Lcom/cmdm/control/bean/UserProfile;-><init>()V

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cmdm/control/bean/UserProfile;

    .line 200
    .local v24, "userProfile":Lcom/cmdm/control/bean/UserProfile;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 201
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 200
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    move-object/from16 v21, v20

    .line 218
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "userProfile":Lcom/cmdm/control/bean/UserProfile;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    :goto_0
    return-object v21

    .line 203
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 204
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 205
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 204
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    move-object/from16 v21, v20

    .line 206
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_0

    .line 210
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 211
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    const/4 v3, 0x0

    .line 212
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 211
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 218
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_0

    .line 213
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    :catch_1
    move-exception v16

    .line 214
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 215
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 214
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 24
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "mobile"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/IsHarassMobileResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    const/16 v20, 0x0

    .line 1343
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1345
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1346
    const-string v5, ""

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1347
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1346
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 1349
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIsHarassMobile()=="

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

    .line 1350
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1352
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 1353
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1354
    const-string v3, "CaiYinSDK"

    .line 1355
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIsHarassMobile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1354
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
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

    .line 1357
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

    .line 1360
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/IsHarassMobileResult;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1361
    new-instance v5, Lcom/cmdm/control/bean/IsHarassMobileResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/IsHarassMobileResult;-><init>()V

    .line 1359
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/IsHarassMobileResult;

    .line 1362
    .local v15, "content":Lcom/cmdm/control/bean/IsHarassMobileResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1363
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1362
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    move-object/from16 v21, v20

    .line 1380
    .end local v15    # "content":Lcom/cmdm/control/bean/IsHarassMobileResult;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    :goto_0
    return-object v21

    .line 1365
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1366
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getIsHarassMobile()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1368
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1367
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    move-object/from16 v21, v20

    .line 1369
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    goto :goto_0

    .line 1373
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 1374
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    const/4 v3, 0x0

    .line 1375
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1374
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 1380
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    goto :goto_0

    .line 1376
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    :catch_1
    move-exception v16

    .line 1377
    .local v16, "e":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1378
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1377
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsHarassMobileResult;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "shortMobile"    # Ljava/lang/String;
    .param p9, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 1283
    const/16 v22, 0x0

    .line 1285
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1287
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postCornetBinding()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const/16 v21, 0x0

    .line 1289
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1291
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v24, 0x0

    .line 1292
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1293
    const-string v5, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1294
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    .line 1292
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 1296
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1298
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1299
    const-string v4, "CaiYinSDK"

    .line 1300
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postCornetBinding()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1299
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 1302
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

    if-nez v4, :cond_2

    .line 1304
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 1305
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1304
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/Result;

    .line 1306
    .local v16, "content":Lcom/cmdm/control/bean/Result;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1307
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1308
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1309
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 1310
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1309
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1335
    .end local v16    # "content":Lcom/cmdm/control/bean/Result;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 1313
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v16    # "content":Lcom/cmdm/control/bean/Result;
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 1314
    .local v25, "str":Ljava/lang/String;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1315
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1316
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1318
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1319
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1321
    .end local v16    # "content":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1322
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "postCornetBinding()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 1324
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1323
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 1325
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1329
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1330
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 1335
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1331
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v18

    .line 1332
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "optype"    # Ljava/lang/String;
    .param p5, "flag"    # Ljava/lang/String;
    .param p6, "contacts_xml"    # Ljava/lang/String;
    .param p7, "serverAddress"    # I
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "clientid"    # Ljava/lang/String;
    .param p10, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 450
    const/16 v22, 0x0

    .line 452
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 454
    .local v26, "url":Ljava/lang/String;
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blacklistContacts()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blacklistContacts()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 458
    const-string v6, ""

    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 461
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blacklistContacts()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 465
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 468
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 469
    const-string v4, "CaiYinSDK"

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blacklistContacts()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 473
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

    if-nez v4, :cond_2

    .line 476
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 477
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 478
    .local v21, "re":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 479
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 482
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v5

    .line 481
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 506
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 485
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "re":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 486
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 487
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 488
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v25

    .line 490
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 491
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 493
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 494
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "blacklistContacts()==xml\u89e3\u6790\u9519\u8bef"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 496
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 495
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 497
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 501
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 502
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
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 506
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 503
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 504
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

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/BlackUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const/16 v21, 0x0

    .line 515
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 516
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getbwstatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v20, 0x0

    .line 518
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 520
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 521
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 522
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 523
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

    .line 521
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 525
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 527
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 528
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getbwstatus()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
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

    .line 530
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

    .line 533
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/BlackUserInfo;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 534
    new-instance v5, Lcom/cmdm/control/bean/BlackUserInfo;

    invoke-direct {v5}, Lcom/cmdm/control/bean/BlackUserInfo;-><init>()V

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/BlackUserInfo;

    .line 535
    .local v15, "content":Lcom/cmdm/control/bean/BlackUserInfo;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 536
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 535
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    move-object/from16 v22, v21

    .line 555
    .end local v15    # "content":Lcom/cmdm/control/bean/BlackUserInfo;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    :goto_0
    return-object v22

    .line 538
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 540
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getbwstatus()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 542
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 541
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    move-object/from16 v22, v21

    .line 543
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_0

    .line 547
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 548
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    const/4 v3, 0x0

    .line 549
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 548
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 555
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_0

    .line 550
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    :catch_1
    move-exception v17

    .line 551
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 552
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 551
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "bwtype"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/GetBlankWhiteList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    const/16 v21, 0x0

    .line 401
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 403
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getbwlist()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v20, 0x0

    .line 405
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 407
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 408
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 409
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

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

    .line 408
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 413
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getbwlist()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 415
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 416
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getbwlist()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
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

    .line 419
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

    .line 422
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetBlankWhiteList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 423
    new-instance v5, Lcom/cmdm/control/bean/GetBlankWhiteList;

    invoke-direct {v5}, Lcom/cmdm/control/bean/GetBlankWhiteList;-><init>()V

    .line 421
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/GetBlankWhiteList;

    .line 424
    .local v15, "content":Lcom/cmdm/control/bean/GetBlankWhiteList;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 425
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 424
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    move-object/from16 v22, v21

    .line 443
    .end local v15    # "content":Lcom/cmdm/control/bean/GetBlankWhiteList;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    :goto_0
    return-object v22

    .line 427
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 428
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getbwlist()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 430
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 429
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    move-object/from16 v22, v21

    .line 431
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_0

    .line 435
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 436
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    const/4 v3, 0x0

    .line 437
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 436
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 443
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_0

    .line 438
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    :catch_1
    move-exception v17

    .line 439
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 440
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 439
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "mobile"    # Ljava/lang/String;

    .prologue
    .line 1480
    const/16 v21, 0x0

    .line 1482
    .local v21, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1484
    .local v25, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postHarassMobile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/16 v20, 0x0

    .line 1486
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1488
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 1489
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1490
    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1491
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

    .line 1489
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1493
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1495
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1496
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "postHarassMobile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
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

    .line 1498
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

    .line 1500
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    .line 1501
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 1500
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/Result;

    .line 1502
    .local v15, "content":Lcom/cmdm/control/bean/Result;
    if-eqz v15, :cond_0

    iget-object v3, v15, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1503
    iget-object v3, v15, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1504
    iget-object v3, v15, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1505
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 1506
    iget-object v4, v15, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    .line 1505
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 1531
    .end local v15    # "content":Lcom/cmdm/control/bean/Result;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;
    :goto_0
    return-object v22

    .line 1509
    .end local v22    # "result":Ljava/lang/Object;
    .restart local v15    # "content":Lcom/cmdm/control/bean/Result;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :cond_0
    const-string v24, ""

    .line 1510
    .local v24, "str":Ljava/lang/String;
    if-eqz v15, :cond_1

    iget-object v3, v15, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1511
    iget-object v3, v15, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1512
    iget-object v0, v15, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1514
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

    .line 1515
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1517
    .end local v15    # "content":Lcom/cmdm/control/bean/Result;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    .end local v24    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1518
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "postHarassMobile()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 1520
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1519
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v22, v21

    .line 1521
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1525
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1526
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v22, v21

    .line 1531
    .restart local v22    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1527
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 1528
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientId"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/MyMoodResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    const/16 v21, 0x0

    .line 563
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->v(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 564
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 568
    const-string v4, "GET"

    .line 567
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 569
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 565
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 571
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyMood():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 574
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 575
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyMood():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
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
    const-class v4, Lcom/cmdm/control/bean/MyMoodResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 582
    new-instance v5, Lcom/cmdm/control/bean/MyMoodResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MyMoodResult;-><init>()V

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/MyMoodResult;

    .line 583
    .local v20, "myMoodResult":Lcom/cmdm/control/bean/MyMoodResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 584
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 583
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    move-object/from16 v22, v21

    .line 604
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "myMoodResult":Lcom/cmdm/control/bean/MyMoodResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    :goto_0
    return-object v22

    .line 586
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 587
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyMood():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 590
    const/4 v3, 0x6

    .line 591
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 589
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    move-object/from16 v22, v21

    .line 592
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    goto :goto_0

    .line 597
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 598
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    const/4 v3, 0x0

    .line 599
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 598
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 604
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    goto :goto_0

    .line 600
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    :catch_1
    move-exception v16

    .line 601
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 602
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 601
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    goto :goto_1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientid"    # Ljava/lang/String;
    .param p7, "clientKey"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "mobile"    # Ljava/lang/String;

    .prologue
    .line 1537
    const/16 v20, 0x0

    .line 1539
    .local v20, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1542
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1546
    const-string v4, "PUT"

    .line 1545
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1546
    const-string v6, ""

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1543
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v18

    .line 1549
    .local v18, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delHarassMobile()====="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    new-instance v17, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1552
    .local v17, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v22, 0x0

    .line 1553
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 1555
    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1556
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delHarassMobile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1558
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

    if-nez v3, :cond_2

    .line 1561
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/ProfileResult;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1562
    new-instance v5, Lcom/cmdm/control/bean/ProfileResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/ProfileResult;-><init>()V

    .line 1560
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/ProfileResult;

    .line 1563
    .local v19, "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    if-eqz v19, :cond_0

    .line 1564
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1565
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1566
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1567
    new-instance v20, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x1

    .line 1568
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1567
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v20

    .line 1592
    .end local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;
    :goto_0
    return-object v21

    .line 1571
    .end local v21    # "result":Ljava/lang/Object;
    .restart local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :cond_0
    const-string v23, ""

    .line 1572
    .local v23, "str":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 1573
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1574
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1575
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ProfileResult;->getText()Ljava/lang/String;

    move-result-object v23

    .line 1577
    :cond_1
    new-instance v20, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v20

    .line 1578
    .restart local v21    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1580
    .end local v19    # "profileResult":Lcom/cmdm/control/bean/ProfileResult;
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v21    # "result":Ljava/lang/Object;
    .end local v23    # "str":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1581
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v20, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    .line 1582
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    .line 1581
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v21, v20

    .line 1583
    .restart local v21    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1587
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v16

    .line 1588
    .local v16, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v16    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v21, v20

    .line 1592
    .restart local v21    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 1589
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v21    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v15

    .line 1590
    .local v15, "e":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    goto :goto_1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientId"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/MyStatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    const/16 v21, 0x0

    .line 612
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 613
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 617
    const-string v4, "GET"

    .line 616
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 617
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 618
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 614
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 620
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyStatus():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 623
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 625
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 626
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

    .line 627
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyStatus():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MyStatusResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 632
    new-instance v5, Lcom/cmdm/control/bean/MyStatusResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MyStatusResult;-><init>()V

    .line 630
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/MyStatusResult;

    .line 633
    .local v20, "myStatusResult":Lcom/cmdm/control/bean/MyStatusResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 634
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 633
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    move-object/from16 v22, v21

    .line 654
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "myStatusResult":Lcom/cmdm/control/bean/MyStatusResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    :goto_0
    return-object v22

    .line 636
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 637
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMyStatus():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 640
    const/4 v3, 0x6

    .line 641
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 639
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    move-object/from16 v22, v21

    .line 642
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    goto :goto_0

    .line 647
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 648
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    const/4 v3, 0x0

    .line 649
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 648
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 654
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    goto :goto_0

    .line 650
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    :catch_1
    move-exception v16

    .line 651
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 652
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 651
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    goto :goto_1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "year"    # Ljava/lang/String;
    .param p4, "month"    # Ljava/lang/String;
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/BillList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    const/16 v22, 0x0

    .line 296
    .local v22, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 298
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 302
    const-string v5, "GET"

    .line 301
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 303
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 299
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 306
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bill()=="

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

    .line 308
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 310
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 312
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 313
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bill()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 317
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

    if-nez v4, :cond_0

    .line 320
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/BillList;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    new-instance v6, Lcom/cmdm/control/bean/BillList;

    invoke-direct {v6}, Lcom/cmdm/control/bean/BillList;-><init>()V

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/BillList;

    .line 322
    .local v16, "billList":Lcom/cmdm/control/bean/BillList;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    const/4 v4, 0x1

    .line 323
    const-string v5, ""

    .line 322
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    move-object/from16 v23, v22

    .line 341
    .end local v16    # "billList":Lcom/cmdm/control/bean/BillList;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    :goto_0
    return-object v23

    .line 325
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 326
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "bill()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 328
    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    .line 327
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    move-object/from16 v23, v22

    .line 329
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_0

    .line 333
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 334
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    const/4 v4, 0x0

    .line 335
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 334
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    :goto_1
    move-object/from16 v23, v22

    .line 341
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_0

    .line 336
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    :catch_1
    move-exception v18

    .line 337
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    .line 338
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 337
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientId"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/InterestLableResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    const/16 v21, 0x0

    .line 662
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->o(I)Ljava/lang/String;

    move-result-object v24

    .line 663
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 664
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 665
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 664
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 667
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getInterestLable():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 670
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 672
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 673
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

    .line 674
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

    .line 677
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/InterestLableResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 678
    new-instance v5, Lcom/cmdm/control/bean/InterestLableResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/InterestLableResult;-><init>()V

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/InterestLableResult;

    .line 679
    .local v20, "myStatusResult":Lcom/cmdm/control/bean/InterestLableResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 680
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 679
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    move-object/from16 v22, v21

    .line 702
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "myStatusResult":Lcom/cmdm/control/bean/InterestLableResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    :goto_0
    return-object v22

    .line 682
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 684
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getInterestLable():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 685
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 683
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 688
    const/4 v3, 0x6

    .line 689
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 687
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    move-object/from16 v22, v21

    .line 690
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    goto :goto_0

    .line 695
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 696
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    const/4 v3, 0x0

    .line 697
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 696
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 702
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    goto :goto_0

    .line 698
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    :catch_1
    move-exception v16

    .line 699
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 700
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 699
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/SoftCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    const/16 v21, 0x0

    .line 351
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 353
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 357
    const-string v4, "GET"

    .line 356
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 358
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 354
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 361
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 363
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 365
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 368
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

    .line 369
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

    .line 372
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SoftCRSList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 373
    new-instance v5, Lcom/cmdm/control/bean/SoftCRSList;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SoftCRSList;-><init>()V

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/SoftCRSList;

    .line 374
    .local v20, "mSoftCRSList":Lcom/cmdm/control/bean/SoftCRSList;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 375
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 374
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    move-object/from16 v22, v21

    .line 393
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "mSoftCRSList":Lcom/cmdm/control/bean/SoftCRSList;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    :goto_0
    return-object v22

    .line 377
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 378
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "bill()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 380
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 379
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    move-object/from16 v22, v21

    .line 381
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_0

    .line 385
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 386
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    const/4 v3, 0x0

    .line 387
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 386
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 393
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_0

    .line 388
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    :catch_1
    move-exception v16

    .line 389
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 390
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 389
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
    goto :goto_1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "moodLableId"    # Ljava/lang/String;
    .param p5, "flag"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 757
    const/16 v22, 0x0

    .line 759
    .local v22, "result":Lcom/cmdm/control/util/client/ResultEntity;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 761
    .local v26, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 765
    const-string v5, "POST"

    .line 764
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 765
    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p3

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 762
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 768
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setMyMood()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 772
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 774
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 775
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setMyMood()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 778
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

    if-nez v4, :cond_2

    .line 781
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    .line 782
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    .line 781
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    .line 783
    .local v21, "re":Lcom/cmdm/control/bean/Result;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 784
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 785
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x1

    .line 787
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v5

    .line 786
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 811
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;
    :goto_0
    return-object v23

    .line 790
    .end local v23    # "result":Ljava/lang/Object;
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "re":Lcom/cmdm/control/bean/Result;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "url":Ljava/lang/String;
    :cond_0
    const-string v25, ""

    .line 791
    .local v25, "str":Ljava/lang/String;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 792
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 793
    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/Result;->getResultText()Ljava/lang/String;

    move-result-object v25

    .line 795
    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 796
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 798
    .end local v21    # "re":Lcom/cmdm/control/bean/Result;
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    .end local v25    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 799
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "setMyMood()==xml\u89e3\u6790\u9519\u8bef"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    .line 801
    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    .line 800
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    move-object/from16 v23, v22

    .line 802
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 806
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 807
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
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    :goto_1
    move-object/from16 v23, v22

    .line 811
    .restart local v23    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 808
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultEntity;
    .end local v23    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v17

    .line 809
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

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginMode"    # Ljava/lang/String;
    .param p4, "serverAddress"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "clientId"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/HarassMobilesResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    const/16 v21, 0x0

    .line 710
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->p(I)Ljava/lang/String;

    move-result-object v24

    .line 711
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 712
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 713
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 712
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 715
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobiles():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 718
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 719
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobiles():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 721
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

    .line 722
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

    .line 725
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/HarassMobilesResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 726
    new-instance v5, Lcom/cmdm/control/bean/HarassMobilesResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/HarassMobilesResult;-><init>()V

    .line 724
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/HarassMobilesResult;

    .line 727
    .local v20, "myStatusResult":Lcom/cmdm/control/bean/HarassMobilesResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 728
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 727
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    move-object/from16 v22, v21

    .line 750
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "myStatusResult":Lcom/cmdm/control/bean/HarassMobilesResult;
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    :goto_0
    return-object v22

    .line 730
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 732
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobiles():xml sax fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 733
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 736
    const/4 v3, 0x6

    .line 737
    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 735
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    move-object/from16 v22, v21

    .line 738
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    goto :goto_0

    .line 743
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 744
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    const/4 v3, 0x0

    .line 745
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 744
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 750
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    goto :goto_0

    .line 746
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    :catch_1
    move-exception v16

    .line 747
    .local v16, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 748
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 747
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
    goto :goto_1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SoftwareResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 939
    const/16 v21, 0x0

    .line 941
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->q(I)Ljava/lang/String;

    move-result-object v24

    .line 942
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getOtherSoftware()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/16 v20, 0x0

    .line 944
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 946
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 947
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 948
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 949
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

    .line 947
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 951
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 953
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 954
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getOtherSoftware()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
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

    .line 956
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

    .line 959
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SoftwareResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 960
    new-instance v5, Lcom/cmdm/control/bean/SoftwareResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SoftwareResult;-><init>()V

    .line 958
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/SoftwareResult;

    .line 961
    .local v15, "content":Lcom/cmdm/control/bean/SoftwareResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 962
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 961
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    move-object/from16 v22, v21

    .line 981
    .end local v15    # "content":Lcom/cmdm/control/bean/SoftwareResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    :goto_0
    return-object v22

    .line 964
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 966
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getOtherSoftware()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 968
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 967
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    move-object/from16 v22, v21

    .line 969
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    goto :goto_0

    .line 973
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 974
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    const/4 v3, 0x0

    .line 975
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 974
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 981
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    goto :goto_0

    .line 976
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    :catch_1
    move-exception v17

    .line 977
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 978
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 977
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwareResult;>;"
    goto :goto_1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "year"    # Ljava/lang/String;
    .param p4, "month"    # Ljava/lang/String;
    .param p5, "loginMode"    # Ljava/lang/String;
    .param p6, "serverAddress"    # I
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "clientid"    # Ljava/lang/String;
    .param p9, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/BillListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1386
    const/16 v22, 0x0

    .line 1388
    .local v22, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 1390
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    .line 1394
    const-string v5, "GET"

    .line 1393
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1395
    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    .line 1391
    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 1397
    .local v21, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newBillList()=="

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

    .line 1398
    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v20, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    .line 1401
    .local v24, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1402
    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newBillList()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1404
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

    if-nez v4, :cond_0

    .line 1407
    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/BillListResult;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1408
    new-instance v6, Lcom/cmdm/control/bean/BillListResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/BillListResult;-><init>()V

    .line 1406
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/BillListResult;

    .line 1409
    .local v16, "billList":Lcom/cmdm/control/bean/BillListResult;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1410
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    const/4 v4, 0x1

    const-string v5, ""

    .line 1409
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    move-object/from16 v23, v22

    .line 1427
    .end local v16    # "billList":Lcom/cmdm/control/bean/BillListResult;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .local v23, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    :goto_0
    return-object v23

    .line 1412
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    .restart local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "url":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1413
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "newBillList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1415
    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    .line 1414
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    move-object/from16 v23, v22

    .line 1416
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_0

    .line 1420
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    .line 1421
    .local v19, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    const/4 v4, 0x0

    .line 1422
    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1421
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v19    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v20    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v21    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "url":Ljava/lang/String;
    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    :goto_1
    move-object/from16 v23, v22

    .line 1427
    .restart local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_0

    .line 1423
    .end local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    .end local v23    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    :catch_1
    move-exception v18

    .line 1424
    .local v18, "e1":Lcom/cmdm/control/exception/a;
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    .line 1425
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1424
    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v22    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillListResult;>;"
    goto :goto_1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/IsNewUserResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    const/16 v21, 0x0

    .line 989
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 990
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNewUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const/16 v20, 0x0

    .line 992
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 994
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 995
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    .line 996
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

    .line 995
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 998
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1000
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1001
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNewUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
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

    .line 1003
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

    .line 1006
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/IsNewUserResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1007
    new-instance v5, Lcom/cmdm/control/bean/IsNewUserResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/IsNewUserResult;-><init>()V

    .line 1005
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/IsNewUserResult;

    .line 1008
    .local v15, "content":Lcom/cmdm/control/bean/IsNewUserResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1009
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1008
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    move-object/from16 v22, v21

    .line 1028
    .end local v15    # "content":Lcom/cmdm/control/bean/IsNewUserResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    :goto_0
    return-object v22

    .line 1011
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1013
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getNewUser()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1015
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1014
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    move-object/from16 v22, v21

    .line 1016
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_0

    .line 1020
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1021
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    const/4 v3, 0x0

    .line 1022
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1021
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1028
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_0

    .line 1023
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    :catch_1
    move-exception v17

    .line 1024
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1025
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1024
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/IsNewUserResult;>;"
    goto :goto_1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/PraComCountResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1034
    const/16 v21, 0x0

    .line 1036
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1038
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSettingPraComCountUrl()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/16 v20, 0x0

    .line 1040
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 1043
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1044
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1045
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

    .line 1043
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1047
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1049
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1050
    const-string v3, "CaiYinSDK"

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSettingPraComCountUrl()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
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

    .line 1053
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

    .line 1056
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/PraComCountResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1057
    new-instance v5, Lcom/cmdm/control/bean/PraComCountResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/PraComCountResult;-><init>()V

    .line 1055
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/PraComCountResult;

    .line 1058
    .local v15, "content":Lcom/cmdm/control/bean/PraComCountResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1059
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1058
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    move-object/from16 v22, v21

    .line 1078
    .end local v15    # "content":Lcom/cmdm/control/bean/PraComCountResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    :goto_0
    return-object v22

    .line 1061
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1063
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getSettingPraComCountUrl()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1065
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1064
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    move-object/from16 v22, v21

    .line 1066
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_0

    .line 1070
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1071
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    const/4 v3, 0x0

    .line 1072
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1071
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1078
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_0

    .line 1073
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    :catch_1
    move-exception v17

    .line 1074
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1075
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1074
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/PraComCountResult;>;"
    goto :goto_1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1084
    const/16 v21, 0x0

    .line 1086
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->e(I)Ljava/lang/String;

    move-result-object v24

    .line 1087
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/16 v20, 0x0

    .line 1089
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1091
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 1092
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    .line 1093
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

    .line 1092
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1095
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1097
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1098
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latest()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
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

    .line 1100
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

    .line 1103
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SoftwarePackage;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1104
    new-instance v5, Lcom/cmdm/control/bean/SoftwarePackage;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SoftwarePackage;-><init>()V

    .line 1102
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/SoftwarePackage;

    .line 1105
    .local v15, "content":Lcom/cmdm/control/bean/SoftwarePackage;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1106
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1105
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v22, v21

    .line 1125
    .end local v15    # "content":Lcom/cmdm/control/bean/SoftwarePackage;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :goto_0
    return-object v22

    .line 1108
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1110
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "latest()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1112
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1111
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    move-object/from16 v22, v21

    .line 1113
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 1117
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1118
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    const/4 v3, 0x0

    .line 1119
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1118
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1125
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_0

    .line 1120
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    :catch_1
    move-exception v17

    .line 1121
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1122
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1121
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    goto :goto_1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 24
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
            "Lcom/cmdm/control/bean/Welcome;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1131
    const/16 v19, 0x0

    .line 1133
    .local v19, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->r(I)Ljava/lang/String;

    move-result-object v22

    .line 1134
    .local v22, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1135
    const-string v5, ""

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1136
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1135
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v18

    .line 1138
    .local v18, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "welcome()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    new-instance v17, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v17, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v21

    .line 1143
    .local v21, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1144
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "welcome()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1146
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 1148
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Welcome;

    .line 1149
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Welcome;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Welcome;-><init>()V

    .line 1148
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/cmdm/control/bean/Welcome;

    .line 1150
    .local v23, "welcome":Lcom/cmdm/control/bean/Welcome;
    new-instance v19, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    const/4 v3, 0x1

    .line 1151
    const-string v4, ""

    .line 1150
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    move-object/from16 v20, v19

    .line 1168
    .end local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    .end local v21    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "url":Ljava/lang/String;
    .end local v23    # "welcome":Lcom/cmdm/control/bean/Welcome;
    .local v20, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    :goto_0
    return-object v20

    .line 1153
    .end local v20    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    .restart local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "url":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1154
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "welcome()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v19, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1156
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1155
    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    move-object/from16 v20, v19

    .line 1157
    .restart local v20    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    goto :goto_0

    .line 1161
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v20    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v16

    .line 1162
    .local v16, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v19, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    .line 1163
    const/4 v5, 0x0

    .line 1162
    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v16    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v17    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v18    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "url":Ljava/lang/String;
    .restart local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    :goto_1
    move-object/from16 v20, v19

    .line 1168
    .restart local v20    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    goto :goto_0

    .line 1164
    .end local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    .end local v20    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    :catch_1
    move-exception v15

    .line 1165
    .local v15, "e":Lcom/cmdm/control/exception/a;
    new-instance v19, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1166
    invoke-virtual {v15}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1165
    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v19    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Welcome;>;"
    goto :goto_1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/GetCornetBindingResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    const/16 v21, 0x0

    .line 1176
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1178
    .local v24, "url":Ljava/lang/String;
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCornetBinding()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const/16 v20, 0x0

    .line 1180
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1182
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    const/16 v23, 0x0

    .line 1183
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1184
    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1185
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

    .line 1183
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1187
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1189
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1190
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCornetBinding()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
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

    .line 1192
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

    .line 1195
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetCornetBindingResult;

    .line 1196
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1197
    new-instance v5, Lcom/cmdm/control/bean/GetCornetBindingResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/GetCornetBindingResult;-><init>()V

    .line 1194
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/GetCornetBindingResult;

    .line 1198
    .local v15, "content":Lcom/cmdm/control/bean/GetCornetBindingResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1199
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1198
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    move-object/from16 v22, v21

    .line 1218
    .end local v15    # "content":Lcom/cmdm/control/bean/GetCornetBindingResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    :goto_0
    return-object v22

    .line 1201
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1203
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCornetBinding()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1205
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1204
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    move-object/from16 v22, v21

    .line 1206
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_0

    .line 1210
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1211
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    const/4 v3, 0x0

    .line 1212
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1211
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1218
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_0

    .line 1213
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    :catch_1
    move-exception v17

    .line 1214
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1215
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1214
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetCornetBindingResult;>;"
    goto :goto_1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/HarassMobileTypeResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    const/16 v21, 0x0

    .line 1436
    .local v21, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->s(I)Ljava/lang/String;

    move-result-object v24

    .line 1437
    .local v24, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1438
    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1439
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1438
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    .line 1441
    .local v20, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    .line 1442
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobileType()=="

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

    .line 1441
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1445
    .local v19, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    .line 1446
    .local v23, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1447
    const-string v3, "CaiYinSDK"

    .line 1448
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobileType()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1447
    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
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

    .line 1450
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

    .line 1453
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/HarassMobileTypeResult;

    .line 1454
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1455
    new-instance v5, Lcom/cmdm/control/bean/HarassMobileTypeResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/HarassMobileTypeResult;-><init>()V

    .line 1452
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/HarassMobileTypeResult;

    .line 1456
    .local v15, "content":Lcom/cmdm/control/bean/HarassMobileTypeResult;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1457
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1456
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    move-object/from16 v22, v21

    .line 1474
    .end local v15    # "content":Lcom/cmdm/control/bean/HarassMobileTypeResult;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .local v22, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    :goto_0
    return-object v22

    .line 1459
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    .restart local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1460
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getHarassMobileType()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1462
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1461
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    move-object/from16 v22, v21

    .line 1463
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    goto :goto_0

    .line 1467
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    .line 1468
    .local v18, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    const/4 v3, 0x0

    .line 1469
    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1468
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v19    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v20    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "url":Ljava/lang/String;
    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    :goto_1
    move-object/from16 v22, v21

    .line 1474
    .restart local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    goto :goto_0

    .line 1470
    .end local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    .end local v22    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    :catch_1
    move-exception v17

    .line 1471
    .local v17, "e1":Lcom/cmdm/control/exception/a;
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1472
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1471
    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v21    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobileTypeResult;>;"
    goto :goto_1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 24
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
            "Lcom/cmdm/control/bean/GetParaInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1598
    const/16 v20, 0x0

    .line 1600
    .local v20, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->t(I)Ljava/lang/String;

    move-result-object v23

    .line 1601
    .local v23, "url":Ljava/lang/String;
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    .line 1602
    const-string v5, ""

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1603
    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 1602
    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v19

    .line 1605
    .local v19, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getParaInfo()=="

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

    .line 1606
    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    .line 1608
    .local v18, "httpRestClientUtil":Lcom/cmdm/control/http/c;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v22

    .line 1610
    .local v22, "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1611
    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getParaInfo()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
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

    .line 1613
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

    .line 1616
    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetParaInfoResult;

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1617
    new-instance v5, Lcom/cmdm/control/bean/GetParaInfoResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/GetParaInfoResult;-><init>()V

    .line 1615
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/b;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/GetParaInfoResult;

    .line 1618
    .local v15, "content":Lcom/cmdm/control/bean/GetParaInfoResult;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1619
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    const/4 v3, 0x1

    const-string v4, ""

    .line 1618
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    move-object/from16 v21, v20

    .line 1636
    .end local v15    # "content":Lcom/cmdm/control/bean/GetParaInfoResult;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .local v21, "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    :goto_0
    return-object v21

    .line 1621
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    .restart local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .restart local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1622
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getParaInfo()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .line 1624
    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    .line 1623
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    move-object/from16 v21, v20

    .line 1625
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    goto :goto_0

    .line 1629
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/b;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    .line 1630
    .local v17, "error":Lcom/cmdm/control/bean/ErrorXMLException;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    const/4 v3, 0x0

    .line 1631
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1630
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    .end local v17    # "error":Lcom/cmdm/control/bean/ErrorXMLException;
    .end local v18    # "httpRestClientUtil":Lcom/cmdm/control/http/c;
    .end local v19    # "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "resultValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "url":Ljava/lang/String;
    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    :goto_1
    move-object/from16 v21, v20

    .line 1636
    .restart local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    goto :goto_0

    .line 1632
    .end local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    .end local v21    # "result":Ljava/lang/Object;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
    :catch_1
    move-exception v16

    .line 1633
    .local v16, "e":Lcom/cmdm/control/exception/a;
    new-instance v20, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    .line 1634
    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1633
    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .restart local v20    # "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetParaInfoResult;>;"
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
    .line 91
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    .line 92
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 93
    invoke-virtual {v0, p2, p3}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
