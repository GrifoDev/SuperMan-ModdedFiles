.class public Lcom/cmdm/control/biz/m;
.super Ljava/lang/Object;


# instance fields
.field ar:Lcom/cmdm/control/logic/k;

.field as:Lcom/cmdm/control/biz/e;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

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

    new-instance v0, Lcom/cmdm/control/biz/e;

    invoke-direct {v0, p1}, Lcom/cmdm/control/biz/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    new-instance v0, Lcom/cmdm/control/logic/k;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/k;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/k;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/k;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/k;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/k;->J(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/k;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->R(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->S(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->T(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->U(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->V(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->W(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->X(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiYinShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->Y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public Z(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->Z(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 3

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    iget-object v2, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cmdm/control/logic/k;->f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x1

    const-string v2, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity;

    const/4 v1, 0x0

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lcom/cmdm/control/util/client/ResultEntity;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/k;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->aa(Ljava/lang/String;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->at()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public au()Z
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->au()Z

    move-result v0

    return v0
.end method

.method public av()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    iget-object v1, p0, Lcom/cmdm/control/biz/m;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/logic/k;->f(Landroid/content/Context;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public aw()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/RegionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->aw()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public ax()Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 1

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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->bB()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public az()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    invoke-virtual {v0}, Lcom/cmdm/control/biz/e;->H()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.cmdm.polychrome.ui"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v1, v0}, Lcom/cmdm/control/logic/k;->aF(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/cmdm/control/biz/m;->as:Lcom/cmdm/control/biz/e;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cmdm/control/biz/e;->setShowRing(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public init(I)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwarePackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/k;->j()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

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

    iget-object v0, p0, Lcom/cmdm/control/biz/m;->ar:Lcom/cmdm/control/logic/k;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/k;->r(Ljava/util/ArrayList;)V

    return-void
.end method
