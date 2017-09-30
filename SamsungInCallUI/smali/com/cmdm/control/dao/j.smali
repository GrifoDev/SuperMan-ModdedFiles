.class public Lcom/cmdm/control/dao/j;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aN:Lcom/cmdm/control/dao/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aT()Lcom/cmdm/control/dao/j;
    .locals 2

    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmdm/control/dao/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/dao/j;

    invoke-direct {v0}, Lcom/cmdm/control/dao/j;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/j;->aN:Lcom/cmdm/control/dao/j;

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

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v5, v3, :cond_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delShow()==="

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

    const-string v4, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "application/xml"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

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
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/SettingResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/SettingResult;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :goto_1
    return-object v3

    :cond_1
    if-nez v5, :cond_2

    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_0

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v4, v3

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->be()I

    move-result v5

    invoke-virtual {v4}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v4, ""

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_4
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v3, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v4

    new-instance v3, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 16

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

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

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

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

    const-string v6, "deleteMul()=="

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
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v4, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const-string v4, ""

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

    move-result-object v3

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

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

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0, v5, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putBuyDelete()==="

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
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public a(Lcom/cmdm/control/util/client/ResultUtil;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ShowingCRS;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0xf

    const-string v3, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/cmdm/control/util/client/ResultUtil;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v1, 0xf

    const-string v2, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    invoke-direct {v0, v1, v2, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ShowingCRS;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v4, v3

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
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
            "Lcom/cmdm/control/bean/MyDIYCRSList;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move v1, p3

    move v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move/from16 v4, p8

    move/from16 v6, p12

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "diy()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-class v2, Lcom/cmdm/control/bean/MyDIYCRSList;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmdm/control/bean/MyDIYCRSList;

    invoke-direct {v1}, Lcom/cmdm/control/bean/MyDIYCRSList;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/MyDIYCRSList;

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x6

    const-string v2, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v1

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cid=? and uid=? and (type=? or type=? ) "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object p5, v1, v4

    aput-object p4, v1, v5

    const/4 v2, 0x2

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "4"

    aput-object v3, v1, v2

    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v3, v0, v1}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, " type=? and uid=? "

    const-string v2, "id desc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "3"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    new-instance v5, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v5, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v6, v5}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v6, v1, v3, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v6, v1, v4, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CaiYinSDK"

    const-string v2, "\u8bf7\u6c42\u670d\u52a1\u5668\u6570\u636e"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v1

    const-string v2, "GET"

    move-object/from16 v0, p3

    invoke-static {p2, v0, p1, v2}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    const-string v6, ""

    const-string v7, ""

    move-object v2, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

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

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0, v5, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentDIYDelete()==="

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
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/Result;

    invoke-direct {v4}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v4}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v0, v4}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

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

.method public b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
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
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p9

    move/from16 v6, p13

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "favorite()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-class v2, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    invoke-direct {v1}, Lcom/cmdm/control/bean/MyFavoriteCRSList;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x6

    const-string v2, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v1

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYContentResult;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p8

    move/from16 v6, p12

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContentDiySelect()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-class v2, Lcom/cmdm/control/bean/DIYContentResult;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmdm/control/bean/DIYContentResult;

    invoke-direct {v1}, Lcom/cmdm/control/bean/DIYContentResult;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/DIYContentResult;

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x6

    const-string v2, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v1

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "call_number=? and uid=? and type=? "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p5, v1, v4

    aput-object p4, v1, v5

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v3, v0, v1}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, " type=? and uid=? "

    const-string v2, "id desc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    new-instance v4, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v4, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v5, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v5, v1, v3, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RichScrnSettingObject;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x0

    const-string v3, "2"

    const/4 v13, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/cmdm/control/dao/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_1
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0xc

    const-string v3, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_2
    return-object v1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmdm/control/bean/ShowingCRS;

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v3, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct {v3}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    invoke-virtual {v3, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, v1, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v3, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct {v3}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    invoke-virtual {v3, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v4, ""

    invoke-direct {v1, v2, v4, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_6
    new-instance v2, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    move-object v1, v14

    goto/16 :goto_2
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "group_id=? and uid=? and type=? "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p5, v1, v4

    aput-object p4, v1, v5

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    new-instance v2, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v2, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v3, v2}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v3, v0, v1}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, " type=? and uid=? group by group_id"

    const-string v2, "id desc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    new-instance v4, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v4, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v5, v4}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v5, v1, v3, v2}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p8

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v6, p12

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getShow()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-class v2, Lcom/cmdm/control/bean/ShowingCRSList;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmdm/control/bean/ShowingCRSList;

    invoke-direct {v1}, Lcom/cmdm/control/bean/ShowingCRSList;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/ShowingCRSList;

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x6

    const-string v2, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v1

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 19

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v5, "CaiYinSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postProductInfo()=="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v6, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v6}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "text/html"

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

    const-string v8, "postProductInfo()=="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "CaiYinSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "postProductInfo()=="

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
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    :try_start_1
    const-class v7, Lcom/cmdm/control/bean/ResultInfo;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/ResultInfo;

    invoke-direct {v6}, Lcom/cmdm/control/bean/ResultInfo;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v6}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cmdm/control/bean/ResultInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/cmdm/control/bean/ResultInfo;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x0

    const-string v7, "\u4e1a\u52a1\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5!"

    invoke-direct {v5, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v6, 0x6

    const-string v7, "xml\u89e3\u6790\u5f02\u5e38"

    invoke-direct {v5, v6, v7}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v5

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v6}, Lcom/cmdm/control/exception/a;->be()I

    move-result v7

    invoke-virtual {v6}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v6

    new-instance v5, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
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

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 10
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
            "Lcom/cmdm/control/bean/BusinessPackageResult;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p4, p5}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "CaiYinSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getProductInfo()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "CaiYinSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProductInfo()=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    const-class v2, Lcom/cmdm/control/bean/BusinessPackageResult;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmdm/control/bean/BusinessPackageResult;

    invoke-direct {v1}, Lcom/cmdm/control/bean/BusinessPackageResult;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lcom/cmdm/control/dao/j;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BusinessPackageResult;

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v1, 0x6

    const-string v2, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v1}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/dao/j;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v1

    new-instance v0, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
