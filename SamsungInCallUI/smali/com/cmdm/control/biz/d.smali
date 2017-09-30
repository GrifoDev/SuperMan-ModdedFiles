.class public Lcom/cmdm/control/biz/d;
.super Ljava/lang/Object;


# instance fields
.field ai:Lcom/cmdm/control/logic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/logic/a;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/UserContent;",
            ">;)",
            "Lcom/cmdm/control/util/client/ResultEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BillList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftCRSList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
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

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/a;->e(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetBlankWhiteList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/a;->f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsHarassMobileResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/a;->g(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->j()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BillListResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->k()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BlackUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->l()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyMoodResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->m()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyStatusResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->n()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/InterestLableResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->o()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->p()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SoftwareResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->q()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/IsNewUserResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->r()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PraComCountResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->s()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/cmdm/control/util/client/ResultUtil;
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

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->t()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/Welcome;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->u()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetCornetBindingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->v()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobileTypeResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->w()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetParaInfoResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->x()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
