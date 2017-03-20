.class public Lcom/cmdm/control/bean/CRSProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CRSProfile"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x61fae8156e60bc61L


# instance fields
.field public author:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Author"
    .end annotation
.end field

.field public categoryId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CategoryId"
    .end annotation
.end field

.field public categoryName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CategoryName"
    .end annotation
.end field

.field public commentsCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CommentsCount"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ContentId"
    .end annotation
.end field

.field public corpLinkList:Lcom/cmdm/control/bean/CorpLinkList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "corpLinkList"
    .end annotation
.end field

.field public crsName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSName"
    .end annotation
.end field

.field public crsType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "CRSType"
    .end annotation
.end field

.field public expire:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Expire"
    .end annotation
.end field

.field public flag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Flag"
    .end annotation
.end field

.field public hiFiUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "HiFiUrl"
    .end annotation
.end field

.field public isCheck:Z

.field private k:Z

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Size"
    .end annotation
.end field

.field public mThumList:Lcom/cmdm/control/bean/ThumList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ThumList"
    .end annotation
.end field

.field public mark:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mark"
    .end annotation
.end field

.field public oppose:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Oppose"
    .end annotation
.end field

.field public posterUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "PosterUrl"
    .end annotation
.end field

.field public previewUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "previewUrl"
    .end annotation
.end field

.field public price:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Price"
    .end annotation
.end field

.field public promotionPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "PromotionPrice"
    .end annotation
.end field

.field public pushCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "pushCount"
    .end annotation
.end field

.field public shareTime:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ShareTime"
    .end annotation
.end field

.field public sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "SourceUrl"
    .end annotation
.end field

.field public str:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "String"
    .end annotation
.end field

.field public support:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Support"
    .end annotation
.end field

.field public thumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "ThumbUrl"
    .end annotation
.end field

.field public traffic:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Traffic"
    .end annotation
.end field

.field public users:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Users"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    .line 151
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    .line 171
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    .line 176
    iput-boolean v1, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    .line 181
    iput-boolean v1, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    .line 184
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBuy()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 572
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v0, v2, 0x2

    .line 574
    .local v0, "a":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 576
    .end local v0    # "a":I
    :cond_0
    return v1
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->commentsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpLinkList()Lcom/cmdm/control/bean/CorpLinkList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->corpLinkList:Lcom/cmdm/control/bean/CorpLinkList;

    return-object v0
.end method

.method public getCrsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsName:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrsType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    .line 427
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    return-object v0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 420
    const-string v0, "2"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_5
    const-string v0, "3"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDIY()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    iget-object v4, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 591
    iget-object v4, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v0, v4, 0x8

    .line 592
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 593
    .local v1, "b":I
    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCategoryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCategoryName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "diy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    const/4 v1, 0x1

    .line 597
    :cond_0
    if-lez v1, :cond_1

    .line 599
    .end local v0    # "a":I
    .end local v1    # "b":I
    :goto_0
    return v2

    .restart local v0    # "a":I
    .restart local v1    # "b":I
    :cond_1
    move v2, v3

    .line 597
    goto :goto_0

    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_2
    move v2, v3

    .line 599
    goto :goto_0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 309
    const-string v0, ""

    .line 310
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_0
    return-object v0
.end method

.method public getFavor()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v0, v3, 0x4

    .line 564
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 565
    .local v1, "b":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 567
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_0
    return v2
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHiFiUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->hiFiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    return v0
.end method

.method public getMySetting()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v0, v2, 0x10

    .line 583
    .local v0, "a":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 585
    .end local v0    # "a":I
    :cond_0
    return v1
.end method

.method public getOppose()Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    const-string v0, "0"

    .line 511
    .local v0, "egg":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 512
    :cond_0
    const-string v0, "0"

    .line 516
    :cond_1
    :goto_0
    return-object v0

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x7b

    mul-int/lit8 v1, v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 8

    .prologue
    .line 267
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 270
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

    .line 275
    .end local v0    # "costLong":F
    :goto_0
    return-object v2

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "0.0"

    goto :goto_0

    .line 275
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "0.0"

    goto :goto_0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPushCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->pushCount:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 389
    const-string v0, ""

    .line 390
    .local v0, "set":Ljava/lang/String;
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "3"

    .line 438
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "2"

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getSupport()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x453

    .line 484
    const-string v1, "0"

    .line 485
    .local v1, "flower":Ljava/lang/String;
    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 486
    :cond_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_1
    :goto_0
    return-object v1

    .line 487
    :cond_2
    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

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

    .line 490
    .local v2, "mSupport":Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 491
    .end local v2    # "mSupport":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->traffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    return-object v0
.end method

.method public getmThumList()Lcom/cmdm/control/bean/ThumList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->mThumList:Lcom/cmdm/control/bean/ThumList;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->author:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryName:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    .line 201
    return-void
.end method

.method public setCommentsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentsCount"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->commentsCount:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->contentId:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setCorpLinkList(Lcom/cmdm/control/bean/CorpLinkList;)V
    .locals 0
    .param p1, "corpLinkList"    # Lcom/cmdm/control/bean/CorpLinkList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->corpLinkList:Lcom/cmdm/control/bean/CorpLinkList;

    .line 59
    return-void
.end method

.method public setCrsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsName"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->crsName:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsType"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0
    .param p1, "expire"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 554
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHiFiUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hiFiUrl"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->hiFiUrl:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setIsShowSetting(Z)V
    .locals 0
    .param p1, "isShowSetting"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    .line 631
    return-void
.end method

.method public setOppose(Ljava/lang/String;)V
    .locals 0
    .param p1, "oppose"    # Ljava/lang/String;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->posterUrl:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionPrice"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->promotionPrice:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setPushCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushCount"    # Ljava/lang/String;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->pushCount:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public setShareTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareTime"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    .line 646
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->sourceUrl:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->str:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public setSupport(Ljava/lang/String;)V
    .locals 0
    .param p1, "support"    # Ljava/lang/String;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbUrl"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->thumbUrl:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setTraffic(Ljava/lang/String;)V
    .locals 0
    .param p1, "traffic"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->traffic:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setUsers(Ljava/lang/String;)V
    .locals 0
    .param p1, "users"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setmThumList(Lcom/cmdm/control/bean/ThumList;)V
    .locals 0
    .param p1, "mThumList"    # Lcom/cmdm/control/bean/ThumList;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->mThumList:Lcom/cmdm/control/bean/ThumList;

    .line 67
    return-void
.end method
