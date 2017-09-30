.class public Lcom/cmdm/control/util/BlacklistSyncUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncBlacklist(Landroid/content/Context;)V
    .locals 10

    const/4 v2, 0x0

    new-instance v0, Lcom/cmdm/control/biz/d;

    invoke-direct {v0, p0}, Lcom/cmdm/control/biz/d;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/cmdm/control/biz/c;

    invoke-direct {v3, p0}, Lcom/cmdm/control/biz/c;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/cmdm/control/biz/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/cmdm/control/biz/d;->f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/GetBlankWhiteList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/GetBlankWhiteList;->getListIsdn()Lcom/cmdm/control/bean/ListIsdn;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cmdm/control/bean/ListIsdn;->getList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-lt v2, v1, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v6}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v8, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/BlacklistInfo;-><init>()V

    const-string v9, "1"

    invoke-virtual {v8, v9}, Lcom/cmdm/control/bean/BlacklistInfo;->setType(Ljava/lang/String;)V

    const-string v9, "blacklist"

    invoke-virtual {v8, v9}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistname(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/cmdm/control/bean/BlacklistInfo;->setBlacklistnum(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/BlacklistInfo;->getBlacklistnum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlacklistInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/bean/BlacklistInfo;

    invoke-virtual {v3, v0}, Lcom/cmdm/control/biz/c;->a(Lcom/cmdm/control/bean/BlacklistInfo;)Z

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3, v6}, Lcom/cmdm/control/biz/c;->d(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    goto :goto_3
.end method
