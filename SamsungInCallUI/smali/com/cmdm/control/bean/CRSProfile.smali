.class public Lcom/cmdm/control/bean/CRSProfile;
.super Ljava/lang/Object;

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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    iput-boolean v1, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBuy()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->commentsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpLinkList()Lcom/cmdm/control/bean/CorpLinkList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->corpLinkList:Lcom/cmdm/control/bean/CorpLinkList;

    return-object v0
.end method

.method public getCrsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsName:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmdm/control/util/client/Setting;->getDefaultSpecialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrsType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "2"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    const-string v0, "3"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDIY()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    rem-int/lit8 v2, v2, 0x2

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "diy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    const-string v0, ""

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

    if-lt v1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFavor()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHiFiUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->hiFiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    return v0
.end method

.method public getMySetting()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getOppose()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "0"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x7b

    mul-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    float-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0.0"

    goto :goto_0

    :cond_0
    const-string v0, "0.0"

    goto :goto_0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPushCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->pushCount:Ljava/lang/String;

    return-object v0
.end method

.method public getShareTime()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x4

    const-string v0, ""

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3"

    :goto_0
    return-object v0

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

    invoke-virtual {p0}, Lcom/cmdm/control/bean/CRSProfile;->getCrsType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    goto :goto_0

    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->str:Ljava/lang/String;

    return-object v0
.end method

.method public getSupport()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x453

    const-string v0, "0"

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x7b

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->traffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsers()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    return-object v0
.end method

.method public getmThumList()Lcom/cmdm/control/bean/ThumList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->mThumList:Lcom/cmdm/control/bean/ThumList;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->author:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/CRSProfile;->isCheck:Z

    return-void
.end method

.method public setCommentsCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->commentsCount:Ljava/lang/String;

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCorpLinkList(Lcom/cmdm/control/bean/CorpLinkList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->corpLinkList:Lcom/cmdm/control/bean/CorpLinkList;

    return-void
.end method

.method public setCrsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->crsName:Ljava/lang/String;

    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->crsType:Ljava/lang/String;

    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->expire:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/CRSProfile;->flag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHiFiUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->hiFiUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsShowSetting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/CRSProfile;->k:Z

    return-void
.end method

.method public setOppose(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->oppose:Ljava/lang/String;

    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->posterUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->price:Ljava/lang/String;

    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->promotionPrice:Ljava/lang/String;

    return-void
.end method

.method public setPushCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->pushCount:Ljava/lang/String;

    return-void
.end method

.method public setShareTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->shareTime:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->l:Ljava/lang/String;

    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->sourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->str:Ljava/lang/String;

    return-void
.end method

.method public setSupport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->support:Ljava/lang/String;

    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method public setTraffic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->traffic:Ljava/lang/String;

    return-void
.end method

.method public setUsers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->users:Ljava/lang/String;

    return-void
.end method

.method public setmThumList(Lcom/cmdm/control/bean/ThumList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/CRSProfile;->mThumList:Lcom/cmdm/control/bean/ThumList;

    return-void
.end method
