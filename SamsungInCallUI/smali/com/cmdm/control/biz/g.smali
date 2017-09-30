.class public Lcom/cmdm/control/biz/g;
.super Ljava/lang/Object;


# instance fields
.field al:Lcom/cmdm/control/logic/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/d;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    return-void
.end method


# virtual methods
.method public U()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->U()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->V()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public W()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->W()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public X()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->X()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public Y()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsGroupUserResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->Y()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesFileResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->Z()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/d;->a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->a(Z)V

    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyPaidsCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BuyContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDIYCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyFavoriteCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CaiyinSettingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyDiyVideoList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRS;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/d;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShowingCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/d;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method
