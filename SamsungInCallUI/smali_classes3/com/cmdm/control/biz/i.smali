.class public Lcom/cmdm/control/biz/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field an:Lcom/cmdm/control/logic/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/cmdm/control/logic/f;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 23
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "starId"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->A(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sgTypeid"    # Ljava/lang/String;
    .param p3, "mType"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/f;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 144
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "c_price"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/f;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 35
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 59
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->s(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 60
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "c_price"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 47
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/f;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 48
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 71
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->t(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 72
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->u(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 84
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->v(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 95
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 106
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->w(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 107
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    .line 118
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->x(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 119
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/f;->y(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 130
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "friend"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CavassResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cmdm/control/biz/i;->an:Lcom/cmdm/control/logic/f;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/f;->z(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method
