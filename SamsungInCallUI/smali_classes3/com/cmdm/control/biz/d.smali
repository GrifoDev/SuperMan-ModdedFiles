.class public Lcom/cmdm/control/biz/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ai:Lcom/cmdm/control/logic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/cmdm/control/logic/a;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "content_name"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "picturePath"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "moodLableId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "optype"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
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

    .prologue
    .line 133
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/UserContent;>;"
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 135
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
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

    .prologue
    .line 94
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 95
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BillList;>;"
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SoftCRSList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 108
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftCRSList;>;"
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

    .prologue
    .line 232
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/a;->e(Ljava/util/ArrayList;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "moodLableId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/a;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 205
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "bwtype"    # Ljava/lang/String;
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

    .prologue
    .line 118
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    .line 119
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/a;->f(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 120
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/GetBlankWhiteList;>;"
    return-object v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "shortMobile"    # Ljava/lang/String;
    .param p2, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "mobile"    # Ljava/lang/String;
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

    .prologue
    .line 329
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/a;->g(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "shortMobile"    # Ljava/lang/String;
    .param p2, "longMobile"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

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
    .line 53
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->j()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 54
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SoftwarePackage;>;"
    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
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

    .prologue
    .line 343
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->k()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 64
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/UserProfile;>;"
    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "mobile"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/a;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BlackUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->l()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 145
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BlackUserInfo;>;"
    return-object v0
.end method

.method public m()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyMoodResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->m()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 156
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyMoodResult;>;"
    return-object v0
.end method

.method public n()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/MyStatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->n()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 167
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/MyStatusResult;>;"
    return-object v0
.end method

.method public o()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/InterestLableResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    .line 178
    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->o()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 179
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/InterestLableResult;>;"
    return-object v0
.end method

.method public p()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/HarassMobilesResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    .line 190
    invoke-virtual {v1}, Lcom/cmdm/control/logic/a;->p()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 191
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/HarassMobilesResult;>;"
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

    .prologue
    .line 242
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

    .prologue
    .line 252
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

    .prologue
    .line 262
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

    .prologue
    .line 272
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

    .prologue
    .line 282
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

    .prologue
    .line 304
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

    .prologue
    .line 353
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

    .prologue
    .line 391
    iget-object v0, p0, Lcom/cmdm/control/biz/d;->ai:Lcom/cmdm/control/logic/a;

    invoke-virtual {v0}, Lcom/cmdm/control/logic/a;->x()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
