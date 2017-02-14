.class public Lcom/cmdm/control/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "CaiYinSDK"

.field private static volatile aA:Lcom/cmdm/control/dao/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aK()Lcom/cmdm/control/dao/a;
    .locals 2

    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmdm/control/dao/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmdm/control/dao/a;

    invoke-direct {v0}, Lcom/cmdm/control/dao/a;-><init>()V

    sput-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmdm/control/dao/a;->aA:Lcom/cmdm/control/dao/a;

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
    .locals 31

    const/16 v25, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getcRSProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/CRSProfile;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v24

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v22, 0x0

    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_1

    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v21

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x0

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v5

    const-string v3, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-result-object v23

    const-string v3, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delShow()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/SettingResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/SettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/cmdm/control/bean/SettingResult;

    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v26, v25

    :goto_1
    return-object v26

    :cond_1
    if-nez v22, :cond_2

    :try_start_2
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v19

    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_3
    move-object/from16 v26, v25

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v29, ""

    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcom/cmdm/control/bean/SettingResult;->getText()Ljava/lang/String;

    move-result-object v29

    :cond_4
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v26, v25

    goto :goto_1

    :catch_1
    move-exception v18

    :try_start_4
    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v26, v25

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v20

    new-instance v25, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/cmdm/control/exception/a; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26

    const/16 v21, 0x0

    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delPraise()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

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

    move-result-object v19

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delPraise()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :cond_0
    const-string v24, ""

    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    goto :goto_0

    :catch_0
    move-exception v15

    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v22, v21

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v16

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "PUT"

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

    move-result-object v19

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->toString()Ljava/lang/String;

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

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteMul()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/OperationResult;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/OperationResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/OperationResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/OperationResult;

    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :cond_0
    const-string v24, ""

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/OperationResult;->getText()Ljava/lang/String;

    move-result-object v24

    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v16

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
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

    const/16 v21, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

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

    move-result-object v19

    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putBuyDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :cond_0
    const-string v24, ""

    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v16

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/cmdm/control/util/client/ResultUtil;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 8
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

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cmdm/control/bean/ShowingCRS;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v1, v5, v6, v3}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v5, 0xf

    const-string v6, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    invoke-direct {v1, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_1

    new-instance v1, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v7}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lcom/cmdm/control/util/client/ResultUtil;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 13
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

    const/4 v12, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v9, :cond_0

    iget-object v3, v9, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v1, v10, :cond_1

    :cond_0
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v10, 0xf

    const-string v11, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u6ca1\u6709\u6570\u636e"

    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_1
    move-object v7, v6

    :goto_2
    return-object v7

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/ShowingCRS;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v10, 0x1

    const-string v11, ""

    invoke-direct {v6, v10, v11, v8}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v7, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v6, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v10

    invoke-virtual {p1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v10, v11, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/cmdm/control/bean/BuddySettingsCRSList;",
            ">;"
        }
    .end annotation

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

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

    move-result-object v21

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddysettingsurl="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buddysettings="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    invoke-direct {v6}, Lcom/cmdm/control/bean/BuddySettingsCRSList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/BuddySettingsCRSList;

    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x1

    const-string v5, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v5, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :catch_0
    move-exception v17

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
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

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "diy()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyDIYCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/MyDIYCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyDIYCRSList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyDIYCRSList;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v12

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v13

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
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
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v8, p13

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "paids()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyPaidsCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/MyPaidsCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyPaidsCRSList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyPaidsCRSList;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v12

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v13

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
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
            "Lcom/cmdm/control/bean/IsGroupUserResult;",
            ">;"
        }
    .end annotation

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGroupUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x0

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getGroupUser()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/IsGroupUserResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/IsGroupUserResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/IsGroupUserResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/IsGroupUserResult;

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v22, v21

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p6

    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v8, p13

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p13, :cond_0

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v16, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResourceList != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    :cond_0
    move-object/from16 v23, v24

    :goto_1
    return-object v24

    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    if-eqz v13, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResource != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    move-exception v18

    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v24, v23

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_2
    move-exception v18

    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    goto :goto_7

    :catch_4
    move-exception v17

    goto :goto_6

    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    goto :goto_3

    :cond_4
    move-object/from16 v24, v23

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
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
            "Lcom/cmdm/control/bean/MyDiyVideoList;",
            ">;"
        }
    .end annotation

    const/16 v21, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoDIY()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x0

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

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

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVideoDIY()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/MyDiyVideoList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/MyDiyVideoList;

    invoke-direct {v5}, Lcom/cmdm/control/bean/MyDiyVideoList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyDiyVideoList;

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v22, v21

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BuyContentResult;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getBuySelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/BuyContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/BuyContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/BuyContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/BuyContentResult;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "cid=? and uid=? and (type=? or type=? ) "

    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    const-string v6, "3"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "4"

    aput-object v6, v2, v5

    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    const-string v7, " type=? and uid=? "

    const-string v5, "id desc"

    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "3"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    aput-object p2, v1, v9

    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "4"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object p2, v6, v9

    new-instance v8, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v8, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v8}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v2, v7, v1, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v2, v7, v6, v5}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "CaiYinSDK"

    const-string v4, "\u8bf7\u6c42\u670d\u52a1\u5668\u6570\u636e"

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v4, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v4}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v16

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/cmdm/control/http/c;

    move-object/from16 v0, p7

    invoke-direct {v15, v0}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v17

    return-object v17
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/cmdm/control/http/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentSettingMomentDelete()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "POST"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v5}, Lcom/cmdm/control/util/encry/Signature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

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

    invoke-virtual/range {v4 .. v15}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "putContentSettingMomentDelete()==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/Result;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/Result;

    invoke-direct {v6}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :cond_0
    const-string v25, ""

    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
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

    const/16 v22, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->p(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

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

    move-result-object v20

    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentDIYDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :cond_0
    const-string v25, ""

    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 19
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

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v8, p13

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "favorite()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/MyFavoriteCRSList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/MyFavoriteCRSList;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v12

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v13

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 25
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
            "Lcom/cmdm/control/bean/HarassMobilesFileResult;",
            ">;"
        }
    .end annotation

    const/16 v21, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/cmdm/control/http/a;->w(I)Ljava/lang/String;

    move-result-object v24

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobilesFile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v23, 0x0

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v3

    const-string v5, ""

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/plain"

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Lcom/cmdm/control/http/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getHarassMobilesFile()=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    invoke-direct {v5}, Lcom/cmdm/control/bean/HarassMobilesFileResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/HarassMobilesFileResult;

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x1

    const-string v4, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v22, v21

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move/from16 v8, p6

    :try_start_0
    invoke-static/range {v2 .. v8}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserPicSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v8, p13

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUserPicSetting()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p13, :cond_0

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v16, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResourceList != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    :cond_0
    move-object/from16 v23, v24

    :goto_1
    return-object v24

    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    if-eqz v13, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResource != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    move-exception v18

    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v24, v23

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_2
    move-exception v18

    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    goto :goto_7

    :catch_4
    move-exception v17

    goto :goto_6

    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    goto :goto_3

    :cond_4
    move-object/from16 v24, v23

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContentDiySelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/DIYContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/DIYContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/DIYContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/DIYContentResult;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "call_number=? and uid=? and type=? "

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    const-string v6, "1"

    aput-object v6, v2, v5

    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    const-string v5, " type=? and uid=? "

    const-string v4, "id desc"

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    aput-object p2, v1, v7

    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->r(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lcom/cmdm/control/http/b;->bg()Lcom/cmdm/control/http/b;

    move-result-object v4

    const-string v5, "PUT"

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

    move-result-object v20

    const-string v4, "x-use-as-delete-method"

    const-string v5, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteDIYVideo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->toString()Ljava/lang/String;

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

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "CaiYinSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleteDIYVideo()=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v5, Lcom/cmdm/control/bean/NewResult;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/cmdm/control/bean/NewResult;

    invoke-direct {v6}, Lcom/cmdm/control/bean/NewResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v6}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/NewResult;

    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :cond_0
    const-string v25, ""

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/cmdm/control/bean/NewResult;->getResultText()Ljava/lang/String;

    move-result-object v25

    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x6

    const-string v5, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
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

    const/16 v22, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/SettingIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->i(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

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

    move-result-object v20

    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :cond_0
    const-string v25, ""

    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 28
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

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v16, 0x0

    const-string v4, "2"

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v14}, Lcom/cmdm/control/dao/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v22

    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cmdm/control/bean/ShowingCRSList;

    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/cmdm/control/bean/ShowingCRSList;->showingCRSList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v18, 0x0

    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v2, 0xc

    const-string v3, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_2
    return-object v2

    :cond_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/cmdm/control/bean/ShowingCRS;

    invoke-virtual/range {v25 .. v25}, Lcom/cmdm/control/bean/ShowingCRS;->getBuddies()Lcom/cmdm/control/bean/PhoneList;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/PhoneList;->getMsisdnlist()Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_2

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    :goto_3
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_4
    move-object/from16 v2, v23

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_3

    :cond_4
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/cmdm/control/bean/ShowingCRS;->cRSProfile:Lcom/cmdm/control/bean/CRSProfile;

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v16

    const-string v2, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getSourceUrl()Ljava/lang/String;

    move-result-object v27

    :goto_5
    new-instance v24, Lcom/cmdm/control/bean/RichScrnSettingObject;

    invoke-direct/range {v24 .. v24}, Lcom/cmdm/control/bean/RichScrnSettingObject;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setLocalThumUrl(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cmdm/control/bean/RichScrnSettingObject;->setType(Ljava/lang/String;)V

    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getHiFiUrl()Ljava/lang/String;

    move-result-object v27

    goto :goto_5

    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getResCode()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "group_id=? and uid=? and type=? "

    const/4 v5, 0x3

    new-array v2, v5, [Ljava/lang/String;

    aput-object p3, v2, v7

    aput-object p2, v2, v8

    const/4 v5, 0x2

    const-string v6, "2"

    aput-object v6, v2, v5

    new-instance v3, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v3, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v0, v3}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v0, v4, v2}, Lcom/cmdm/control/database/DBContext;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    const-string v5, " type=? and uid=? group by group_id"

    const-string v4, "id desc"

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "2"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    aput-object p2, v1, v7

    new-instance v6, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;

    invoke-direct {v6, p1}, Lcom/cmdm/control/database/Impl/CaiXiangSinceShowingStrategy;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/cmdm/control/database/DBContext;

    invoke-direct {v2, v6}, Lcom/cmdm/control/database/DBContext;-><init>(Lcom/cmdm/control/database/IDBStrategy;)V

    invoke-virtual {v2, v5, v1, v4}, Lcom/cmdm/control/database/DBContext;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 27
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

    const/16 v22, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/SettingIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v20

    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putContentSettingMomentDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cmdm/control/bean/Result;

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    :goto_0
    return-object v23

    :cond_0
    const-string v25, ""

    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v25, v0

    :cond_1
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v22

    goto :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x6

    const-string v4, "xml\u89e3\u6790\u5f02\u5e38"

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v23, v22

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v18

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v23, v22

    goto :goto_0

    :catch_1
    move-exception v17

    new-instance v22, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getShow()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ShowingCRSList;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ShowingCRSList;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ShowingCRSList;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cmdm/control/bean/ShowingCRSList;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v15}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v12

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v13

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v13}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 26
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

    const/16 v21, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/cmdm/control/bean/ContentIdList;->getRelevanceRequest(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/cmdm/control/http/a;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putCollectionDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

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

    move-result-object v19

    const-string v3, "x-use-as-delete-method"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v18, Lcom/cmdm/control/http/c;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/cmdm/control/http/c;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v15, v1, v3, v2}, Lcom/cmdm/control/http/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "CaiYinSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putCollectionDelete()==="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    :try_start_1
    const-class v4, Lcom/cmdm/control/bean/Result;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/cmdm/control/bean/Result;

    invoke-direct {v5}, Lcom/cmdm/control/bean/Result;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/Result;

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultCode:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    move-object/from16 v22, v21

    :goto_0
    return-object v22

    :cond_0
    const-string v24, ""

    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cmdm/control/bean/Result;->resultText:Ljava/lang/String;

    move-object/from16 v24, v0

    :cond_1
    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v22, v21

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v17

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v22, v21

    goto :goto_0

    :catch_1
    move-exception v16

    new-instance v21, Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->be()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 27
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
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSettingMomentSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790xml"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cmdm/control/bean/CaiyinSettingResult;

    new-instance v24, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p12, :cond_0

    :try_start_2
    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u89e3\u6790saveData"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmdm/control/util/file/FileUtil;->saveData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v16, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "diyContentResult != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cmdm/control/bean/CaiyinSettingResult;->getmCaiyinSettingResourceList()Lcom/cmdm/control/bean/CaiyinSettingResourceList;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResourceList != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/cmdm/control/bean/CaiyinSettingResourceList;->getCaiyinSettingResourceList()Ljava/util/ArrayList;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    const-string v3, "list != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1

    :cond_0
    move-object/from16 v23, v24

    :goto_1
    return-object v24

    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cmdm/control/bean/CaiyinSettingResource;

    if-eqz v13, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "caiyinSettingResource != null"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cmdm/control/bean/CaiyinSettingResource;->getCrsProfile()Lcom/cmdm/control/bean/CRSProfile;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v2, "CaiYinSDK"

    const-string v3, "\u5f00\u59cb\u4fdd\u5b58\u7f29\u7565\u56fe"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/cmdm/control/bean/CRSProfile;->getThumbUrl()Ljava/lang/String;

    move-result-object v26

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f29\u7565\u56fe\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/cmdm/control/download/b;

    invoke-direct {v12}, Lcom/cmdm/control/download/b;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/cmdm/control/download/b;->aC(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u6210\u529f"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "CaiYinSDK"

    const-string v3, "\u4fdd\u5b58\u7f29\u7565\u56fe\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_0
    move-exception v18

    :goto_3
    :try_start_3
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v24, v23

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v19

    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_1
    move-exception v17

    move-object/from16 v24, v23

    :goto_6
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/cmdm/control/exception/a; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v24, v23

    goto/16 :goto_1

    :catch_2
    move-exception v18

    :goto_7
    new-instance v23, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catch_3
    move-exception v18

    move-object/from16 v23, v24

    goto :goto_7

    :catch_4
    move-exception v17

    goto :goto_6

    :catch_5
    move-exception v18

    move-object/from16 v24, v23

    goto :goto_3

    :cond_4
    move-object/from16 v24, v23

    goto :goto_4
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSettingAllSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/CaiyinSettingResult;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFriendSettingSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/CaiyinSettingResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/CaiyinSettingResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/CaiyinSettingResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/CaiyinSettingResult;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
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

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/cmdm/control/http/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v2 .. v11}, Lcom/cmdm/control/dao/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    const-string v2, "CaiYinSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCollectionSelect()=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-class v3, Lcom/cmdm/control/bean/ContentResult;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/cmdm/control/bean/ContentResult;

    invoke-direct {v4}, Lcom/cmdm/control/bean/ContentResult;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Lcom/cmdm/control/dao/a;->saxObject(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/cmdm/control/bean/ContentResult;

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v12}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/cmdm/control/exception/a; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v16

    :goto_0
    return-object v17

    :catch_0
    move-exception v13

    :try_start_2
    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x6

    const-string v3, "xml\u89e3\u6790\u5f02\u5e38"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v17, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cmdm/control/dao/a;->a(Ljava/util/List;)Lcom/cmdm/control/bean/ErrorXMLException;

    move-result-object v15

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    const/4 v2, 0x0

    invoke-virtual {v15}, Lcom/cmdm/control/bean/ErrorXMLException;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/cmdm/control/exception/a; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v17, v16

    goto :goto_0

    :catch_1
    move-exception v14

    new-instance v16, Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->be()I

    move-result v2

    invoke-virtual {v14}, Lcom/cmdm/control/exception/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
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

    move-result-object v1

    return-object v1
.end method
