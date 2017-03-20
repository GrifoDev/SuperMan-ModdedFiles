.class public Lcom/cmdm/control/biz/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aq:Lcom/cmdm/control/logic/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/cmdm/control/logic/i;

    invoke-direct {v0, p1}, Lcom/cmdm/control/logic/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 56
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/i;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public A(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "crstype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->A(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 206
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    return-object v0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "crstype"    # Ljava/lang/String;
    .param p2, "taskid"    # Ljava/lang/String;
    .param p3, "diyVideoPath"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmdm/control/logic/i;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->B(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 263
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    return-object v0
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->C(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 297
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 314
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/SubjectResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 444
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->E(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 446
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SubjectResult;>;"
    return-object v0
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 534
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    return-object v0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "visitId"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->G(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 637
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "channel_id"    # Ljava/lang/String;
    .param p2, "share_channel"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->H(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 661
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public I(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 233
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->I(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 234
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public J(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->J(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 404
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public K(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/DIYTextResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 416
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->K(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 417
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/DIYTextResult;>;"
    return-object v0
.end method

.method public L(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "caiyinId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 466
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->L(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 468
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/Content;>;"
    return-object v0
.end method

.method public M(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaignDetailResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 622
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 623
    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->M(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 624
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignDetailResult;>;"
    return-object v0
.end method

.method public N(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1}, Lcom/cmdm/control/logic/i;->N(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    .line 648
    .local v0, "result":Lcom/cmdm/control/util/client/ResultEntity;
    return-object v0
.end method

.method public O(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "searchContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetMatchListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/i;->O(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public P(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ActivityInfoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/i;->P(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public Q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarDetailResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/i;->Q(Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->a(II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 70
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicList;>;"
    return-object v0
.end method

.method public a(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "topic_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 162
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->a(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 163
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "category_id"    # Ljava/lang/String;
    .param p4, "feetype"    # Ljava/lang/String;
    .param p5, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/i;->a(IILjava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 137
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v6
.end method

.method public a(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "category_id"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CategoryList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 102
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CategoryList;>;"
    return-object v0
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 4
    .param p1, "searchContent"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "everypage"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetSearchListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x1

    mul-int/2addr v3, p3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 733
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/cmdm/control/logic/i;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "sortId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .param p4, "feeType"    # Ljava/lang/String;
    .param p5, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 559
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    return-object v6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .param p4, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 350
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "isLocalCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/GetResourceListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public am()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SearchHots;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->am()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 191
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/SearchHots;>;"
    return-object v0
.end method

.method public an()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 246
    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->an()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 247
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public ao()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StatusResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 427
    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->ao()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 428
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/StatusResult;>;"
    return-object v0
.end method

.method public ap()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaignRecommendListResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 604
    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->ap()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 605
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignRecommendListResource;>;"
    return-object v0
.end method

.method public aq()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CampaigTemplateStart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 690
    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->aq()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 691
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaigTemplateStart;>;"
    return-object v0
.end method

.method public ar()Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ShareMessageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 701
    invoke-virtual {v1}, Lcom/cmdm/control/logic/i;->ar()Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 702
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ShareMessageResult;>;"
    return-object v0
.end method

.method public b(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 83
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->b(II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 85
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public b(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxSortResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/cmdm/control/logic/i;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "query_word"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->b(Ljava/lang/String;II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 181
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .param p4, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 377
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    return-object v0
.end method

.method public b(Z)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 1
    .param p1, "isLocalCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/SusFrameRecmndResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/logic/i;->b(Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 117
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->c(II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 118
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public c(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "page"    # I
    .param p2, "everypage"    # I
    .param p3, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/VideoStarResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    mul-int v1, p1, p2

    add-int/lit8 v2, p1, 0x1

    .line 888
    mul-int/2addr v2, p2

    .line 887
    invoke-virtual {v0, v1, v2, p3}, Lcom/cmdm/control/logic/i;->c(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public d(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 221
    invoke-virtual {v1, p1, p2}, Lcom/cmdm/control/logic/i;->d(II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 222
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v0
.end method

.method public d(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "page"    # I
    .param p2, "everypage"    # I
    .param p3, "starId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/PicStarResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    mul-int v1, p1, p2

    add-int/lit8 v2, p1, 0x1

    .line 905
    mul-int/2addr v2, p2

    .line 904
    invoke-virtual {v0, v1, v2, p3}, Lcom/cmdm/control/logic/i;->d(IILjava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public e(II)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "page"    # I
    .param p2, "everypage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/StarListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    mul-int v1, p1, p2

    add-int/lit8 v2, p1, 0x1

    .line 859
    mul-int/2addr v2, p2

    .line 858
    invoke-virtual {v0, v1, v2}, Lcom/cmdm/control/logic/i;->e(II)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    return-object v0
.end method

.method public g(IILjava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "offset"    # I
    .param p2, "range"    # I
    .param p3, "category_id"    # Ljava/lang/String;
    .param p4, "feetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 144
    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/i;->a(IILjava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 145
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfileList;>;"
    return-object v6
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 7
    .param p1, "sortId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .param p4, "feeType"    # Ljava/lang/String;
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
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 551
    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 550
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v6

    .line 552
    .local v6, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    return-object v6
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
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
            "Lcom/cmdm/control/bean/CampaignListResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 593
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/cmdm/control/logic/i;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 594
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CampaignListResource;>;"
    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1
    .param p1, "crstype"    # Ljava/lang/String;
    .param p2, "taskid"    # Ljava/lang/String;
    .param p3, "diyname"    # Ljava/lang/String;
    .param p4, "diyshare"    # Ljava/lang/String;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmdm/control/logic/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "subjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 280
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 282
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ContentSortResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 331
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentSortResult;>;"
    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 356
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 357
    const/4 v2, 0x0

    .line 356
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/cmdm/control/logic/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 358
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 3
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "sortId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/BoxResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 384
    const/4 v2, 0x0

    .line 383
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/cmdm/control/logic/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 385
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/BoxResult;>;"
    return-object v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "boxId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 396
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 398
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "offset"    # Ljava/lang/String;
    .param p2, "range"    # Ljava/lang/String;
    .param p3, "subjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/TopicVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 452
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 454
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/TopicVideoResult;>;"
    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "diyName"    # Ljava/lang/String;
    .param p2, "isShare"    # Ljava/lang/String;
    .param p3, "diyPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/CRSProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 486
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/CRSProfile;>;"
    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "diyName"    # Ljava/lang/String;
    .param p2, "isShare"    # Ljava/lang/String;
    .param p3, "diyPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/VedioDiyResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 501
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/VedioDiyResult;>;"
    return-object v0
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "isFee"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 520
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    return-object v0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "isFee"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 578
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    return-object v0
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 613
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 614
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 615
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ContentResult;>;"
    return-object v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/ClientVideoResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 670
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 671
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/ClientVideoResult;>;"
    return-object v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;
    .locals 2
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "range"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmdm/control/util/client/ResultUtil",
            "<",
            "Lcom/cmdm/control/bean/NewCRSProfileList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v1, p0, Lcom/cmdm/control/biz/l;->aq:Lcom/cmdm/control/logic/i;

    .line 680
    invoke-virtual {v1, p1, p2, p3}, Lcom/cmdm/control/logic/i;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    .line 681
    .local v0, "result":Lcom/cmdm/control/util/client/ResultUtil;, "Lcom/cmdm/control/util/client/ResultUtil<Lcom/cmdm/control/bean/NewCRSProfileList;>;"
    return-object v0
.end method
