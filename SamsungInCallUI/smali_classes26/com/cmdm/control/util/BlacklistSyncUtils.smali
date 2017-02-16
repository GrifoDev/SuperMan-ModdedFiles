.class public Lcom/cmdm/control/util/BlacklistSyncUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncBlacklist(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v6, Lcom/cmdm/control/biz/d;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/cmdm/control/biz/d;-><init>(Landroid/content/Context;)V

    .line 23
    .local v6, "cxcb":Lcom/cmdm/control/biz/d;
    new-instance v3, Lcom/cmdm/control/biz/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cmdm/control/biz/c;-><init>(Landroid/content/Context;)V

    .line 25
    .local v3, "bbiz":Lcom/cmdm/control/biz/c;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v5, "cashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v15, "mBlacklistMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;"
    const-string v20, "1"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/cmdm/control/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 31
    .local v14, "localList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BlacklistInfo;>;"
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/cmdm/control/biz/d;->f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v17

    .line 32
    .local v17, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 34
    invoke-virtual/range {v17 .. v17}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cmdm/control/bean/GetBlankWhiteList;

    .line 35
    .local v8, "getBlankWhiteList":Lcom/cmdm/control/bean/GetBlankWhiteList;
    if-eqz v8, :cond_0

    .line 36
    invoke-virtual {v8}, Lcom/cmdm/control/bean/GetBlankWhiteList;->getListIsdn()Lcom/cmdm/control/bean/ListIsdn;

    move-result-object v13

    .line 37
    .local v13, "listIsdn":Lcom/cmdm/control/bean/ListIsdn;
    if-eqz v13, :cond_5

    .line 38
    invoke-virtual {v13}, Lcom/cmdm/control/bean/ListIsdn;->getList()Ljava/util/ArrayList;

    move-result-object v12

    .line 39
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 41
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v9, v0, :cond_1

    .line 54
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 55
    .local v11, "len":I
    const/4 v9, 0x0

    :goto_1
    if-lt v9, v11, :cond_2

    .line 66
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {v3, v14}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    .line 70
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    .line 71
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 72
    .local v10, "iterm":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 90
    .end local v8    # "getBlankWhiteList":Lcom/cmdm/control/bean/GetBlankWhiteList;
    .end local v9    # "i":I
    .end local v10    # "iterm":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;>;"
    .end local v11    # "len":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "listIsdn":Lcom/cmdm/control/bean/ListIsdn;
    :cond_0
    :goto_3
    return-void

    .line 42
    .restart local v8    # "getBlankWhiteList":Lcom/cmdm/control/bean/GetBlankWhiteList;
    .restart local v9    # "i":I
    .restart local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "listIsdn":Lcom/cmdm/control/bean/ListIsdn;
    :cond_1
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 43
    .local v16, "num":Ljava/lang/String;
    new-instance v2, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v2}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    .line 44
    .local v2, "b":Lcom/cmdm/control/bean/BlacklistInfo;
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setType(Ljava/lang/String;)V

    .line 45
    const-string v20, "blacklist"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    .line 46
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistnum(Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "b":Lcom/cmdm/control/bean/BlacklistInfo;
    .end local v16    # "num":Ljava/lang/String;
    .restart local v11    # "len":I
    :cond_2
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v18

    .line 58
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cmdm/control/bean/BlacklistInfo;

    .line 59
    .local v4, "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    if-eqz v4, :cond_3

    .line 60
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cmdm/control/bean/BlacklistInfo;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 75
    .end local v4    # "blacklistInfo":Lcom/cmdm/control/bean/BlacklistInfo;
    .end local v18    # "s":Ljava/lang/String;
    .restart local v10    # "iterm":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 76
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cmdm/control/bean/BlacklistInfo;

    .line 77
    .local v19, "val":Lcom/cmdm/control/bean/BlacklistInfo;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/cmdm/control/biz/c;->a(Lcom/cmdm/control/bean/BlacklistInfo;)Z

    goto :goto_2

    .line 83
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;"
    .end local v9    # "i":I
    .end local v10    # "iterm":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/cmdm/control/bean/BlacklistInfo;>;>;"
    .end local v11    # "len":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "val":Lcom/cmdm/control/bean/BlacklistInfo;
    :cond_5
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 84
    invoke-virtual {v3, v14}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    goto :goto_3
.end method
