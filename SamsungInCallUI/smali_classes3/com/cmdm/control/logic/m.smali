.class public Lcom/cmdm/control/logic/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bW:Ljava/lang/String;

.field bX:Ljava/lang/String;

.field bY:I

.field bZ:Ljava/lang/String;

.field clientKey:Ljava/lang/String;

.field clientid:Ljava/lang/String;

.field private ct:Lcom/cmdm/control/dao/k;

.field mContext:Landroid/content/Context;

.field v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/cmdm/control/logic/m;->bY:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    invoke-static {}, Lcom/cmdm/control/dao/k;->aU()Lcom/cmdm/control/dao/k;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    new-instance v1, Lcom/cmdm/control/logic/b;

    invoke-direct {v1, p1}, Lcom/cmdm/control/logic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/cmdm/control/logic/b;->y()Lcom/cmdm/control/bean/CaiXiangSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPhone_num()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getClientKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getSavelogin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cmdm/control/bean/CaiXiangSetting;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cmdm/control/logic/m;->bY:I

    :cond_0
    return-void
.end method

.method private a(Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmdm/control/bean/CRSProfile;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p4, :cond_1

    const-string v0, "1"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    if-eqz p4, :cond_2

    const-string v0, "2"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->b(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->c(Ljava/lang/String;Ljava/lang/String;Lcom/cmdm/control/bean/CRSProfile;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v5, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/dao/k;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v9, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v11, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/k;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/cmdm/control/dao/k;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v10, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v10, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p6, :cond_0

    const-string v1, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x34

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x34

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/cmdm/control/logic/m;->bY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p3

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-virtual/range {v1 .. v17}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v18

    :goto_0
    return-object v18

    :cond_1
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x9

    const-string v2, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v18, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v1, 0x12

    const-string v2, "\u672a\u8fde\u63a5\u7f51\u7edc"

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v13

    :goto_0
    return-object v13

    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public aA()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SwitchResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public aB()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/WorkTimeResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/dao/k;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v8, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/network/c;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v9, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v10, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v12, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v12}, Lcom/cmdm/control/dao/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v13

    :goto_0
    return-object v13

    :cond_0
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v13, Lcom/cmdm/control/util/client/ResultEntity;

    const/16 v0, 0x12

    const-string v1, "\u672a\u8fde\u63a5\u7f51\u7edc"

    invoke-direct {v13, v0, v1}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingCommentResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SettingPraiseResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->bZ:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/logic/m;->ct:Lcom/cmdm/control/dao/k;

    iget-object v1, p0, Lcom/cmdm/control/logic/m;->bW:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/logic/m;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmdm/control/logic/m;->bX:Ljava/lang/String;

    iget v4, p0, Lcom/cmdm/control/logic/m;->bY:I

    iget-object v5, p0, Lcom/cmdm/control/logic/m;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmdm/control/logic/m;->clientid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmdm/control/logic/m;->clientKey:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmdm/control/dao/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v11

    :goto_0
    return-object v11

    :cond_0
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x8

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/cmdm/control/util/client/ResultUtil;

    const/16 v0, 0x9

    const-string v1, "\u5f53\u524d\u72b6\u6001\u662f\u672a\u767b\u5f55\u72b6\u6001\uff0c\u8bf7\u767b\u5f55\u4e4b\u540e\u91cd\u8bd5"

    invoke-direct {v11, v0, v1, v2}, Lcom/cmdm/control/util/client/ResultUtil;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
