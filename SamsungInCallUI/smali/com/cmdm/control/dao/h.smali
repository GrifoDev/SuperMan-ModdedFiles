.class public Lcom/cmdm/control/dao/h;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aH:Lcom/cmdm/control/dao/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/h;->aH:Lcom/cmdm/control/dao/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aR()Lcom/cmdm/control/dao/h;
    .locals 2

    sget-object v0, Lcom/cmdm/control/dao/h;->aH:Lcom/cmdm/control/dao/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmdm/control/dao/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/h;->aH:Lcom/cmdm/control/dao/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/dao/h;

    invoke-direct {v0}, Lcom/cmdm/control/dao/h;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/h;->aH:Lcom/cmdm/control/dao/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/h;->aH:Lcom/cmdm/control/dao/h;

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
.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    const-string v6, "getCRSProfileList()=="

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

    const-string v6, "getCRSProfileList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CRSProfileList;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CRSProfileList;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/StatusResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->m(Ljava/lang/String;I)Ljava/lang/String;

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

    const-string v6, "getOpenCaiYinStatus()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v6, "getOpenCaiYinStatus()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/StatusResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/StatusResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/StatusResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/StatusResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CampaignRecommendListResource;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->k(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignRecommendList()"

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

    const-string v6, "getCampaignRecommendList()"

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CampaignRecommendListResource;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CampaignRecommendListResource;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CampaignRecommendListResource;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CampaignRecommendListResource;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CampaigTemplateStart;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->l(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignStart()=="

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

    const-string v6, "getCampaignStart()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CampaigTemplateStart;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CampaigTemplateStart;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CampaigTemplateStart;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CampaigTemplateStart;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignStart()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ShareMessageResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->n(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getShareMessage()=="

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

    const-string v6, "getShareMessage()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/ShareMessageResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ShareMessageResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ShareMessageResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ShareMessageResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignStart()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

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

.method public a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarListResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMoreStarList()=="

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

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMoreStarList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/StarListResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/StarListResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/StarListResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/StarListResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/VideoStarResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    move-object/from16 v1, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v2 .. v13}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoStarList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoStarList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/VideoStarResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/VideoStarResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/VideoStarResult;-><init>()V

    invoke-virtual {p0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/VideoStarResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v4, 0x8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CategoryList;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "categorylist()=="

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

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "categorylist()=="

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

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/CategoryList;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/CategoryList;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CategoryList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/CategoryList;

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
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
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "search()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/CRSProfileList;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v6}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/CRSProfileList;

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetResourceListResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResourceList()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    move-object/from16 v0, p5

    move/from16 v1, p9

    invoke-virtual {p0, v14, v0, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getResourceList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetResourceListResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/GetResourceListResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/GetResourceListResult;-><init>()V

    invoke-virtual {p0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/GetResourceListResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "getResourceList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v4, 0x8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SusFrameRecmndResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/http/a;->u(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSusFrameRecmnd()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v14, v0, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSusFrameRecmnd()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/SusFrameRecmndResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/SusFrameRecmndResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/SusFrameRecmndResult;-><init>()V

    invoke-virtual {p0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/SusFrameRecmndResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "getSusFrameRecmnd()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v4, 0x8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/Buddies;",
            ">;"
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p7

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

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddies()=="

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

    move-object/from16 v0, p9

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddies()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Buddies;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Buddies;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Buddies;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Buddies;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicList;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v9, "0"

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-static/range {v1 .. v9}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTopicList()=="

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

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v13, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTopicList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/TopicList;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/TopicList;

    invoke-direct {v2}, Lcom/cmdm/control/bean/TopicList;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/TopicList;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p13

    :try_start_0
    invoke-static/range {v1 .. v9}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getCRSProfileList()=="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p10

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v10}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    if-eqz p14, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "category"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p5, :cond_0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const-string v5, "CaiYinSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u662f\u5426\u52a0\u8f7d\u7f13\u5b58isCache=="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "=column="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "--offset="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  ===hasCategory="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ddd=="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string v1, "category"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p5, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p14, :cond_2

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u7b2c\u4e8c\u9875\u52a0\u7f13\u5b58isCache=="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v13, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v11

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p13

    invoke-static/range {v1 .. v9}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Lcom/cmdm/control/bean/CRSProfileList;

    new-instance v3, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v3}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    invoke-virtual {p0, v2, v1, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/CRSProfileList;

    move-object v2, v1

    move-object v3, v11

    :goto_2
    const-string v1, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCRSProfileList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCRSProfileList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_7

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_7

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/CRSProfileList;

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v3}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    invoke-virtual {p0, v4, v1, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/CRSProfileList;

    if-eqz p14, :cond_6

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v1, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :goto_3
    return-object v1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {p0, v13, v4, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    move-object v2, v10

    move-object v3, v1

    goto/16 :goto_2

    :cond_3
    const-string v1, "CaiYinSDK"

    const-string v2, "\u7b2c\u4e00\u9875\u4e0d\u662f\u7c7b\u522b"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v13, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v2, v10

    move-object v3, v1

    goto/16 :goto_2

    :cond_4
    if-eqz v2, :cond_5

    :try_start_3
    iget-object v3, v2, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/cmdm/control/bean/CRSProfileList;->crsProfileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v1, v3, v4, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_4
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :try_start_5
    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v2

    goto :goto_3

    :cond_7
    :try_start_6
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :cond_8
    move-object v2, v10

    move-object v3, v11

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSortContent()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    if-eqz p3, :cond_1

    const-string v7, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz p10, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c\u4e8c\u9875\u52a0\u7f13\u5b58isCache=="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const-string v5, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p6

    invoke-static {v5, v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-class v6, Lcom/cmdm/control/bean/ContentResult;

    new-instance v8, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ContentResult;

    move-object v6, v5

    :cond_0
    :goto_1
    const-string v5, "CaiYinSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSortContent()=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_8

    :try_start_1
    const-class v8, Lcom/cmdm/control/bean/ContentResult;

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v7}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ContentResult;

    if-eqz p10, :cond_7

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v7, v7, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v7, v7, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v7, v7, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object v6, v6, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v6, v6, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_2
    return-object v5

    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v7, :cond_4

    :try_start_2
    const-string v7, "CaiYinSDK"

    const-string v10, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u7c7b\u522b"

    invoke-static {v7, v10}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_3

    :try_start_4
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CaiYinSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u7c7b\u522b\u672c\u5730\u6709\u7f13\u5b58"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u540e\u53f0\u540c\u6b65\u53bb\u66f4\u65b0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v11, "200"

    invoke-interface {v5, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v10, 0x1

    invoke-interface {v5, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1, v8}, Lcom/cmdm/control/dao/h;->a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v7, v5

    goto/16 :goto_1

    :cond_3
    const-string v5, "CaiYinSDK"

    const-string v7, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v8, "CaiYinSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    :try_start_5
    const-string v5, "CaiYinSDK"

    const-string v7, "\u4e0d\u662f\u7b2c\u4e00\u9875\u6587\u672c\u7c7b\u522b"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_1

    :cond_5
    if-eqz v6, :cond_6

    :try_start_6
    iget-object v7, v6, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v7, v7, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/ContentResult;->contentList:Lcom/cmdm/control/bean/ContentList;

    iget-object v7, v7, Lcom/cmdm/control/bean/ContentList;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v5, v7, v8, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    :try_start_7
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :cond_6
    :try_start_8
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v5, v6

    goto/16 :goto_2

    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v10

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getVideo()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    if-eqz p5, :cond_1

    const-string v7, "0"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz p12, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c\u4e8c\u9875\u52a0\u7f13\u5b58isCache=="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const-string v5, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p11

    invoke-static {v0, v5, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-class v6, Lcom/cmdm/control/bean/ClientVideoResult;

    new-instance v8, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ClientVideoResult;

    move-object v6, v5

    :cond_0
    :goto_1
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    const-string v5, "CaiYinSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getVideo()=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_8

    :try_start_1
    const-class v8, Lcom/cmdm/control/bean/ClientVideoResult;

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v7}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ClientVideoResult;

    if-eqz p12, :cond_7

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v7, v7, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v7, v7, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v7, v7, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object v6, v6, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v6, v6, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_2
    return-object v5

    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v7, :cond_4

    :try_start_2
    const-string v7, "CaiYinSDK"

    const-string v9, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u89c6\u9891\u7c7b\u522b"

    invoke-static {v7, v9}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_3

    :try_start_4
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "CaiYinSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u89c6\u9891\u7c7b\u522b\u672c\u5730\u6709\u7f13\u5b58"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u540e\u53f0\u540c\u6b65\u53bb\u66f4\u65b0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const-string v10, "200"

    invoke-interface {v5, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v9, 0x1

    invoke-interface {v5, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lcom/cmdm/control/dao/h;->a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v7, v5

    goto/16 :goto_1

    :cond_3
    const-string v5, "CaiYinSDK"

    const-string v7, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u89c6\u9891\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v8, "CaiYinSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u89c6\u9891\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    :try_start_5
    const-string v5, "CaiYinSDK"

    const-string v7, "\u4e0d\u662f\u7b2c\u4e00\u9875\u89c6\u9891\u7c7b\u522b"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_1

    :cond_5
    if-eqz v6, :cond_6

    :try_start_6
    iget-object v7, v6, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v7, v7, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/ClientVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    iget-object v7, v7, Lcom/cmdm/control/bean/VideoList;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v5, v7, v8, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    :try_start_7
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :cond_6
    :try_start_8
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v5, v6

    goto/16 :goto_2

    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v9

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    const-string v0, ""

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u6709\u7f13\u5b58"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "200"

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/cmdm/control/http/c;

    invoke-direct {v0, p2}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v2, "CaiYinSDK"

    const-string v3, "\u7f51\u7edc\u8bf7\u6c42\u66f4\u65b0"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0, p1, p3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CaiYinSDK"

    const-string v2, "\u66f4\u65b0\u5b8c\u6210"

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/http/c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u6709\u7f13\u5b58"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u540e\u53f0\u540c\u6b65\u53bb\u66f4\u65b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "200"

    invoke-interface {v0, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/cmdm/control/dao/h;->a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "CaiYinSDK"

    const-string v2, "\u672c\u5730\u65e0\u7f13\u5b58\u76f4\u63a5\u540c\u6b65\u53bb\u66f4\u65b0"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p2, p1, p3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CaiYinSDK"

    const-string v2, "\u672c\u5730\u65e0\u7f13\u5b58\u76f4\u63a5\u540c\u6b65\u53bb\u66f4\u65b0\u5e76\u4e14\u66f4\u65b0\u5b8c\u6210"

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/http/c;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmdm/control/dao/h$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cmdm/control/dao/h$1;-><init>(Lcom/cmdm/control/dao/h;Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PicStarResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    move-object/from16 v1, p9

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v2 .. v13}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPicStarList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v14, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPicStarList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/PicStarResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/PicStarResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/PicStarResult;-><init>()V

    invoke-virtual {p0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/PicStarResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v4, 0x8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxSortResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBoxsort()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getBoxsort()=="

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

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/BoxSortResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/BoxSortResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/BoxSortResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/BoxSortResult;

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "getBoxsort()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v6, 0x8

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetSearchListResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSearchList()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSearchList()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/GetSearchListResult;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/GetSearchListResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/GetSearchListResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/GetSearchListResult;

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    :try_start_2
    const-string v5, "CaiYinSDK"

    const-string v6, "getSearchList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getSortBox()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v9, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/cmdm/control/bean/BoxResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/BoxResult;-><init>()V

    if-eqz p3, :cond_1

    const-string v7, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz p10, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\u7b2c\u4e8c\u9875\u52a0\u7f13\u5b58isCache=="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const-string v5, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p6

    invoke-static {v5, v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-class v6, Lcom/cmdm/control/bean/BoxResult;

    new-instance v8, Lcom/cmdm/control/bean/BoxResult;

    invoke-direct {v8}, Lcom/cmdm/control/bean/BoxResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/BoxResult;

    move-object v6, v5

    :cond_0
    :goto_1
    const-string v5, "CaiYinSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSortBox()=="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_8

    :try_start_1
    const-class v8, Lcom/cmdm/control/bean/BoxResult;

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/cmdm/control/bean/BoxResult;

    invoke-direct {v7}, Lcom/cmdm/control/bean/BoxResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/BoxResult;

    if-eqz p10, :cond_7

    if-eqz v5, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v7, v7, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v7, v7, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v5, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v7, v7, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget-object v6, v6, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v6, v6, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :goto_2
    return-object v5

    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_2
    if-eqz v7, :cond_4

    :try_start_2
    const-string v7, "CaiYinSDK"

    const-string v10, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u5f69\u5370\u76d2\u7c7b\u522b"

    invoke-static {v7, v10}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/file/FileUtil;->loadData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_3

    :try_start_4
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CaiYinSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u5f69\u5370\u76d2\u7c7b\u522b\u672c\u5730\u6709\u7f13\u5b58"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u540e\u53f0\u540c\u6b65\u53bb\u66f4\u65b0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v11, "200"

    invoke-interface {v5, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v10, 0x1

    invoke-interface {v5, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1, v8}, Lcom/cmdm/control/dao/h;->a(Lcom/cmdm/control/http/c;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object v7, v5

    goto/16 :goto_1

    :cond_3
    const-string v5, "CaiYinSDK"

    const-string v7, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u5f69\u5370\u76d2\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "200"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v8, "CaiYinSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "\u7b2c\u4e00\u9875\u5e76\u4e14\u662f\u6587\u672c\u5f69\u5370\u76d2\u7c7b\u522b\u672c\u5730\u65e0\u7f13\u5b58\uff0c\u7f51\u7edc\u8bf7\u6c42"

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    :try_start_5
    const-string v5, "CaiYinSDK"

    const-string v7, "\u4e0d\u662f\u7b2c\u4e00\u9875\u6587\u672c\u7c7b\u522b"

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    move-object v7, v5

    goto/16 :goto_1

    :cond_5
    if-eqz v6, :cond_6

    :try_start_6
    iget-object v7, v6, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v7, v7, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    iget-object v7, v7, Lcom/cmdm/control/bean/BoxList;->boxList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v5, v7, v8, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    :try_start_7
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :cond_6
    :try_start_8
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v5, v6

    goto/16 :goto_2

    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v10

    goto/16 :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

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

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p12

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "binary/octet-stream"

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

    const-string v6, "postDIYRepository()=="

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

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postDIYRepository()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/DiyResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/DiyResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DiyResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/DiyResult;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, "\u4e0a\u4f20\u6210\u529f\uff0c\u7acb\u5373\u8bbe\u7f6e\u5427!"

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "\u4e0a\u4f20DIY\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "21"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/DiyResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "201"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "\u60a8\u7684DIY\u56fe\u5e93\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u4e0a\u4f20"

    move-object v4, v3

    :cond_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v6, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v6}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "application/xml"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "postCamMediaShare()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "postCamMediaShare()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/Result;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/Result;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x1

    iget-object v5, v5, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_0
    const-string v6, ""

    if-eqz v5, :cond_1

    iget-object v7, v5, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v5, v5, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object v6, v5

    :cond_1
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v5, "CaiYinSDK"

    const-string v6, "postCamMediaShare()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v5, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SearchHots;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->i(I)Ljava/lang/String;

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

    const-string v4, "hots()=="

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

    const-string v4, "hots()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/SearchHots;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/SearchHots;

    invoke-direct {v2}, Lcom/cmdm/control/bean/SearchHots;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/SearchHots;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/CampaignListResource;",
            ">;"
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p9

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

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

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

    const-string v6, "getCampaignList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CampaignListResource;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CampaignListResource;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CampaignListResource;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CampaignListResource;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v6, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v6}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "application/xml"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleteRepository()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "x-use-as-delete-method"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v7, v5}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "deleteRepository()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/OperationResult;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/OperationResult;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_0
    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_1
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v5, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    move-object/from16 v3, p1

    move/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "diyData=="

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

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "binary/octet-stream"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diyData="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/OperationResult;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    const-string v5, "\u4e0a\u4f20\u6210\u529f!"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "\u4e0a\u4f20DIY\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "21"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "0"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "\u60a8\u7684DIY\u56fe\u7247\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u4e0a\u4f20"

    move-object v4, v3

    :cond_1
    :goto_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :try_start_3
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

    const-string v6, "21"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "\u60a8\u7684DIY\u89c6\u9891\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u4e0a\u4f20"

    move-object v4, v3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->j(I)Ljava/lang/String;

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

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getShakeCRSProfileList()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/CRSProfileList;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/CRSProfileList;

    invoke-direct {v2}, Lcom/cmdm/control/bean/CRSProfileList;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/CRSProfileList;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/VedioDiyResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diyVideoUpload=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "binary/octet-stream"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "diyVideoUpload=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lcom/cmdm/control/http/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "diyVideoUpload="

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

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_3

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/VedioDiyResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/VedioDiyResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/VedioDiyResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/VedioDiyResult;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, "\u4e0a\u4f20\u6210\u529f\uff0c\u7acb\u5373\u8bbe\u7f6e\u5427!"

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "\u4e0a\u4f20DIY\u5931\u8d25,\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "21"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/VedioDiyResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v6, "201"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "\u60a8\u7684DIY\u89c6\u9891\u5df2\u6ee1\uff0c\u8bf7\u5220\u9664\u540e\u518d\u4e0a\u4f20"

    move-object v5, v4

    :cond_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/TopicVideoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move-object/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoSubjectoneSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoSubjectoneSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/TopicVideoResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/TopicVideoResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/TopicVideoResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/TopicVideoResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFeePic()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p8

    invoke-direct {v14, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFeePic()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/NewCRSProfileList;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/NewCRSProfileList;

    invoke-direct {v2}, Lcom/cmdm/control/bean/NewCRSProfileList;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/NewCRSProfileList;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFeeVideo()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p8

    invoke-direct {v14, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFeeVideo()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ClientVideoResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ClientVideoResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignTxtList()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p8

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

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

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

    const-string v6, "getCampaignTxtList()"

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/ContentResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ContentResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignVideoList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p8

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

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

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

    const-string v6, "getCampaignVideoList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/ClientVideoResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ClientVideoResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "statisticsVisit()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->l(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mySetting()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_0

    const-string v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v15, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mySetting()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/SettingResult;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_1
    return-object v3

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "DELETE"

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

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v3}, Lcom/cmdm/control/http/c;->c(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_0

    :cond_1
    :try_start_3
    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/GetMatchListResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMatchList()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {v15, v14, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMatchList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/GetMatchListResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/GetMatchListResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/GetMatchListResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/GetMatchListResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "getMatchList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
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
            "Lcom/cmdm/control/bean/DIYTextResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/CaiyinContent;->getRelevanceRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

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

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getContentDiySuggestion()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getContentDiySuggestion()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/DIYTextResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/DIYTextResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DIYTextResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/DIYTextResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p7}, Lcom/cmdm/control/http/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCampaignPicList()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p8

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

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

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

    const-string v6, "getCampaignPicList()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/NewCRSProfileList;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/NewCRSProfileList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/NewCRSProfileList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/NewCRSProfileList;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "getCampaignPicList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 18

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p7

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diyContent=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "binary/octet-stream"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "diyContent=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1, v4}, Lcom/cmdm/control/http/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "diyContent="

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

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/OperationResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/OperationResult;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    const-string v6, "\u4e0a\u4f20\u6210\u529f!"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "\u4e0a\u4f20DIY\u5931\u8d25!"

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :cond_1
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ActivityInfoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getActivityInfo()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {v15, v14, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getActivityInfo()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/ActivityInfoResult;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/cmdm/control/bean/ActivityInfoResult;

    invoke-direct {v3}, Lcom/cmdm/control/bean/ActivityInfoResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v3}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/bean/ActivityInfoResult;

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct {v3, v4, v5, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "getCampaignList()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v3

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/MySettingsCRS;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->n(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

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

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mySettingDetail()=="

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

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mySettingDetail()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/MySettingsCRS;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/MySettingsCRS;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MySettingsCRS;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/MySettingsCRS;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
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
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "detail()=="

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

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "detail()=="

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

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/CRSProfile;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/CRSProfile;

    invoke-direct {v5}, Lcom/cmdm/control/bean/CRSProfile;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/CRSProfile;

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/StarDetailResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string v6, "getStarDetailListUri()=="

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

    const-string v6, "getStarDetailListUri()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/StarDetailResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/StarDetailResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/StarDetailResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/StarDetailResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v5, 0x8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p5}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSubject()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v13, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSubject()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/SubjectResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/SubjectResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/SubjectResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/SubjectResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSubjectContent()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getSubjectContent()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/ContentResult;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ContentResult;

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move-object/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getHotContent()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getHotContent()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "200"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/ContentResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContentResult;

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/ContentSortResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p3 .. p6}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSort()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v13, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSort()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ContentSortResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/ContentSortResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/ContentSortResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ContentSortResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move-object/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getLatestContent()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getLatestContent()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "200"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_0

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/ContentResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ContentResult;

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x1

    const-string v7, ""

    invoke-direct {v5, v6, v7, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5f02\u5e38()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 18
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v7, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getBoxContent()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getBoxContent()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "200"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/ContentResult;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ContentResult;

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x1

    const-string v8, ""

    invoke-direct {v6, v7, v8, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    :goto_0
    return-object v5

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->u(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    const-string v6, "postContentEgg()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "postContentEgg()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Result;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object v4, v3

    :cond_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 14
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p6}, Lcom/cmdm/control/http/a;->w(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoSubjectSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v13, v2, v1}, Lcom/cmdm/control/dao/h;->a(Ljava/lang/String;Lcom/cmdm/control/http/c;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVideoSubjectSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/SubjectResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/SubjectResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/SubjectResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/SubjectResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "PUT"

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

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v15, v5, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentSettingMomentDelete()==="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Result;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object v4, v3

    :cond_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 15
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p6}, Lcom/cmdm/control/http/a;->B(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHotVideo()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

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

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v14, v13, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getHotVideo()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ClientVideoResult;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/ClientVideoResult;

    invoke-direct {v2}, Lcom/cmdm/control/bean/ClientVideoResult;-><init>()V

    invoke-virtual {p0, v3, v1, v2}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ClientVideoResult;

    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v2

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "application/xml"

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v5, p1

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v4}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v5

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postNetShare()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postNetShare()=="

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

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    const-class v6, Lcom/cmdm/control/bean/SharerecordResult;

    const/4 v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/SharerecordResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/SharerecordResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/SharerecordResult;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const-string v5, ""

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/cmdm/control/bean/SharerecordResult;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :cond_1
    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v4, "CaiYinSDK"

    const-string v5, "gainFlower()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x6

    const-string v6, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v4, v5, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v4

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v5

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/Content;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->x(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    const-string v6, "getCaiyInIdSelect()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCaiyInIdSelect()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Content;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Content;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Content;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/Content;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    invoke-static/range {p4 .. p6}, Lcom/cmdm/control/http/a;->y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v15, v3}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "statisticsVisit()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "statisticsVisit()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/NewResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/NewResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/NewResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/NewResult;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "gainFlower()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 17
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
            "Lcom/cmdm/control/bean/CampaignDetailResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p5}, Lcom/cmdm/control/http/a;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "campaignDetail()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

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

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

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

    const-string v6, "campaignDetail()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/CampaignDetailResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CampaignDetailResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CampaignDetailResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/CampaignDetailResult;

    new-instance v4, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "campaignDetail()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

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

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->A(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gainFlower()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gainFlower()=="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/NewResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/NewResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/NewResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/h;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/NewResult;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_1
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "CaiYinSDK"

    const-string v4, "gainFlower()==xml\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/h;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
