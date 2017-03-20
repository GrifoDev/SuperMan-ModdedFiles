.class public Lcom/cmdm/control/bean/VideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "VideoInfo"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x61fae8156e60bc61L


# instance fields
.field public author:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "author"
    .end annotation
.end field

.field public categoryId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "categoryId"
    .end annotation
.end field

.field public categoryName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "categoryName"
    .end annotation
.end field

.field public commentsCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "commentsCount"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentId"
    .end annotation
.end field

.field public crsName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "crsName"
    .end annotation
.end field

.field public crsType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "crsType"
    .end annotation
.end field

.field public expire:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "expire"
    .end annotation
.end field

.field public flag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flag"
    .end annotation
.end field

.field public hiFiUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "hiFiUrl"
    .end annotation
.end field

.field public isCheck:Z

.field private k:Z

.field public mThumList:Lcom/cmdm/control/bean/VideoThumList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "thumList"
    .end annotation
.end field

.field public mark:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mark"
    .end annotation
.end field

.field public oppose:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "oppose"
    .end annotation
.end field

.field public posterUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "posterUrl"
    .end annotation
.end field

.field public previewUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "previewUrl"
    .end annotation
.end field

.field public price:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "price"
    .end annotation
.end field

.field public promotionPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "promotionPrice"
    .end annotation
.end field

.field public shareTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "shareTime"
    .end annotation
.end field

.field public sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "sourceUrl"
    .end annotation
.end field

.field public support:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "support"
    .end annotation
.end field

.field public thumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "thumbUrl"
    .end annotation
.end field

.field public traffic:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "traffic"
    .end annotation
.end field

.field public users:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "users"
    .end annotation
.end field

.field private videoSize:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoSize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->support:Ljava/lang/String;

    .line 129
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->oppose:Ljava/lang/String;

    .line 149
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    .line 151
    iput-boolean v1, p0, Lcom/cmdm/control/bean/VideoInfo;->isCheck:Z

    .line 156
    iput-boolean v1, p0, Lcom/cmdm/control/bean/VideoInfo;->k:Z

    .line 159
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->videoSize:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBuy()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v0, v2, 0x2

    .line 549
    .local v0, "a":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 551
    .end local v0    # "a":I
    :cond_0
    return v1
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->commentsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsName:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrsType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    .line 402
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    return-object v0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    const-string v0, "2"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :cond_5
    const-string v0, "3"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDIY()Ljava/lang/String;
    .locals 4

    .prologue
    .line 569
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v0, v2, 0x8

    .line 571
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 572
    .local v1, "b":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "diy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v1, 0x1

    .line 576
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .end local v0    # "a":I
    .end local v1    # "b":I
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 284
    const-string v0, ""

    .line 285
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0
.end method

.method public getFavor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 537
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 539
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 540
    .local v1, "b":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    .end local v0    # "a":I
    .end local v1    # "b":I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHiFiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->hiFiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/cmdm/control/bean/VideoInfo;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMySetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v0, v1, 0x10

    .line 562
    .local v0, "a":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .end local v0    # "a":I
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public getOppose()Ljava/lang/String;
    .locals 3

    .prologue
    .line 485
    const-string v0, "0"

    .line 486
    .local v0, "egg":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->oppose:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->oppose:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x7b

    mul-int/lit8 v1, v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 489
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 8

    .prologue
    .line 242
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->price:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->price:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->price:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 245
    .local v0, "costLong":F
    new-instance v2, Ljava/lang/StringBuilder;

    float-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    .end local v0    # "costLong":F
    :goto_0
    return-object v2

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "0.0"

    goto :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "0.0"

    goto :goto_0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 364
    const-string v0, ""

    .line 365
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_0
    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "3"

    .line 413
    :goto_0
    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/cmdm/control/bean/VideoInfo;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const-string v0, "2"

    goto :goto_0

    .line 413
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSupport()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x453

    .line 459
    const-string v1, "0"

    .line 460
    .local v1, "flower":Ljava/lang/String;
    iget-object v3, p0, Lcom/cmdm/control/bean/VideoInfo;->support:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cmdm/control/bean/VideoInfo;->support:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    :try_start_0
    iget-object v3, p0, Lcom/cmdm/control/bean/VideoInfo;->support:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7b

    add-long/2addr v4, v6

    const-wide/16 v6, 0x9

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 463
    .local v2, "mSupport":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 470
    .end local v2    # "mSupport":Ljava/lang/Long;
    :goto_0
    return-object v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->traffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->users:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->users:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->users:Ljava/lang/String;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->users:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->videoSize:Ljava/lang/String;

    return-object v0
.end method

.method public getmThumList()Lcom/cmdm/control/bean/VideoThumList;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->mThumList:Lcom/cmdm/control/bean/VideoThumList;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/cmdm/control/bean/VideoInfo;->isCheck:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->author:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->categoryId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->categoryName:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/cmdm/control/bean/VideoInfo;->isCheck:Z

    .line 176
    return-void
.end method

.method public setCommentsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentsCount"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->commentsCount:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->contentId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setCrsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->crsName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsType"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->crsType:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0
    .param p1, "expire"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->expire:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/VideoInfo;->flag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHiFiUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hiFiUrl"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->hiFiUrl:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setIsShowSetting(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isShowSetting"    # Ljava/lang/Boolean;

    .prologue
    .line 594
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/VideoInfo;->k:Z

    .line 595
    return-void
.end method

.method public setOppose(Ljava/lang/String;)V
    .locals 0
    .param p1, "oppose"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->oppose:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->posterUrl:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->price:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionPrice"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->promotionPrice:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setShareTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareTime"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->shareTime:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->sourceUrl:Ljava/lang/String;

    .line 640
    return-void
.end method

.method public setSupport(Ljava/lang/String;)V
    .locals 0
    .param p1, "support"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->support:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->thumbUrl:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setTraffic(Ljava/lang/String;)V
    .locals 0
    .param p1, "traffic"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->traffic:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setUsers(Ljava/lang/String;)V
    .locals 0
    .param p1, "users"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->users:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setVideoSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->videoSize:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setmThumList(Lcom/cmdm/control/bean/VideoThumList;)V
    .locals 0
    .param p1, "mThumList"    # Lcom/cmdm/control/bean/VideoThumList;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/cmdm/control/bean/VideoInfo;->mThumList:Lcom/cmdm/control/bean/VideoThumList;

    .line 625
    return-void
.end method
