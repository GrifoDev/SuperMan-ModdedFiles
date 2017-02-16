.class public Lcom/cmdm/control/biz/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ar:Lcom/cmdm/control/logic/k;

.field as:Lcom/cmdm/control/biz/e;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

    .line 41
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u521d\u59cb\u5316\u5305\u540d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/cmdm/control/biz/e;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    .line 43
    new-instance v0, Lcom/cmdm/control/logic/k;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    .line 45
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "passwrodOrImsi"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/k;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 99
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/k;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 165
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/k;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 181
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/k;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 112
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "contentCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 263
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/k;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 265
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MediaResult;>;"
    return-object v0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/k;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 288
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    .line 195
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/k;->R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 196
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientResult;>;"
    return-object v0
.end method

.method public S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MsisdnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    .line 208
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 209
    .local v0, "login_result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MsisdnInfo;>;"
    return-object v0
.end method

.method public T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "quDaoHao"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BaseInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    .line 214
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/k;->T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 215
    .local v0, "login_result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BaseInfoResult;>;"
    return-object v0
.end method

.method public U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/k;->U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 252
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserStatus;>;"
    return-object v0
.end method

.method public V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "missdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/k;->V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 276
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSInfo;>;"
    return-object v0
.end method

.method public W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 1
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->Z(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public a(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 5
    .param p1, "appType"    # I

    .prologue
    .line 69
    iget-object v2, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v2, p1}, Lcom/cmdm/control/logic/k;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 70
    .local v0, "init_result":Lcom/cmdm/control/util/client/ResultEntity;
    iget-object v2, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    iget-object v3, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/cmdm/control/logic/k;->f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    .line 71
    .local v1, "result":Lcom/cmdm/control/util/client/ResultEntity;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x1

    const-string v4, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    .line 75
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v3, 0x0

    const-string v4, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v2, v3, v4}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "phoneIMSI"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 228
    return-void
.end method

.method public aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1
    .param p1, "missdn"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/k;->at()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 122
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public au()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->au()Z

    move-result v0

    return v0
.end method

.method public av()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    iget-object v2, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/logic/k;->f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 149
    .local v0, "login_result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public aw()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/k;->aw()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 343
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/RegionInfo;>;"
    return-object v0
.end method

.method public ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public ay()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CommercialTrialProvinceResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->bB()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public az()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    invoke-virtual {v0}, Lcom/cmdm/control/biz/e;->H()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    const-string v0, "com.cmdm.polychrome.ui"

    .line 238
    .local v0, "packName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "openOrClose"    # Ljava/lang/Boolean;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cmdm/control/biz/e;->setShowRing(Ljava/lang/String;)V

    .line 386
    return-void

    .line 385
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "appType"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/k;->j()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 299
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    return-object v0
.end method

.method public r(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/BuddySettingsCRS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "mBuddySettingsCRSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/BuddySettingsCRS;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->r(Ljava/util/ArrayList;)V

    .line 409
    return-void
.end method
