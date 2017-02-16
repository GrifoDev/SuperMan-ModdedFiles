.class public Lcom/cmdm/control/biz/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field al:Lcom/cmdm/control/logic/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/cmdm/control/logic/d;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 38
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

    .prologue
    .line 468
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

    .prologue
    .line 477
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

    .prologue
    .line 486
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->W()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public X()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 544
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

    .prologue
    .line 580
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

    .prologue
    .line 589
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/d;->Z()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "showingCRS"    # Lcom/cmdm/control/bean/ShowingCRS;
    .param p2, "showmode"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/d;->a(Lcom/cmdm/control/bean/ShowingCRS;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 459
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 52
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 54
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .param p1, "islocal"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->a(Z)V

    .line 34
    return-void
.end method

.method public b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 81
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->b(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 83
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyPaidsCRSList;>;"
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 165
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 166
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYContentResult;>;"
    return-object v0
.end method

.method public c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 109
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->c(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 111
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BuyContentResult;>;"
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 240
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 241
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 242
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    return-object v0
.end method

.method public d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 138
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->d(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 140
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyDIYCRSList;>;"
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 293
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 294
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 295
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    return-object v0
.end method

.method public e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 380
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 381
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->e(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 382
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 309
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 310
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 311
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    return-object v0
.end method

.method public f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 64
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 65
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->f(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 66
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 410
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 411
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->f(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 412
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyFavoriteCRSList;>;"
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "showcategory"    # Ljava/lang/String;
    .param p3, "friendMobile"    # Ljava/lang/String;
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

    .prologue
    .line 259
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 260
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 261
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 350
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 351
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 352
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 93
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 94
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->g(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 95
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "showcategory"    # Ljava/lang/String;
    .param p3, "friendMobile"    # Ljava/lang/String;
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

    .prologue
    .line 277
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 278
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 279
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CaiyinSettingResult;>;"
    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "seletDate"    # Ljava/lang/String;
    .param p4, "dateRange"    # Ljava/lang/String;
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

    .prologue
    .line 558
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 123
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->h(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 124
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "showmode"    # Ljava/lang/String;
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

    .prologue
    .line 441
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 442
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/d;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 443
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    return-object v0
.end method

.method public i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 150
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->i(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 151
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 177
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->j(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 178
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 321
    .local p1, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 322
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->k(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 323
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 334
    .local p1, "setIdlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 335
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->l(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 336
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 363
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->m(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 365
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 393
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->n(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 395
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "missdn"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
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

    .prologue
    .line 190
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 191
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/d;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 192
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRS;>;"
    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->n(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
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

    .prologue
    .line 422
    .local p1, "xml_cid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/d;->o(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 423
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
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

    .prologue
    .line 205
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 206
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 207
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
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

    .prologue
    .line 219
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    .line 220
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 221
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShowingCRSList;>;"
    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "settingId"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/d;->q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "friendMobile"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v1, p0, Lcom/cmdm/control/biz/g;->al:Lcom/cmdm/control/logic/d;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/d;->q(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 533
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method
