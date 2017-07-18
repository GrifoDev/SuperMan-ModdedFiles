.class public Lcom/cmdm/control/util/BlacklistSyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncBlacklist(Landroid/content/Context;)V
    .locals 22

    new-instance v6, Lcom/cmdm/control/biz/d;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/cmdm/control/biz/d;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/biz/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cmdm/control/biz/c;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v20, "1"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/cmdm/control/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/cmdm/control/biz/d;->f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/GetBlankWhiteList;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/cmdm/control/bean/GetBlankWhiteList;->getListIsdn()Lcom/cmdm/control/bean/ListIsdn;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/cmdm/control/bean/ListIsdn;->getList()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v9, v0, :cond_1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v11, :cond_2

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v14}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    new-instance v2, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v2}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setType(Ljava/lang/String;)V

    const-string v20, "blacklist"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistnum(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/BlacklistInfo;

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/BlacklistInfo;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/BlacklistInfo;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/cmdm/control/biz/c;->a(Lcom/cmdm/control/bean/BlacklistInfo;)Z

    goto :goto_2

    :cond_5
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    invoke-virtual {v3, v14}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    goto :goto_3
.end method
