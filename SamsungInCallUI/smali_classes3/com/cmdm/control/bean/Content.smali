.class public Lcom/cmdm/control/bean/Content;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Content"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x61fae8156e60bc61L


# instance fields
.field public auditDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "auditDate"
    .end annotation
.end field

.field public autuor:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "autuor"
    .end annotation
.end field

.field public bugAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "bugAmount"
    .end annotation
.end field

.field public buyDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "buyDate"
    .end annotation
.end field

.field public clickAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "clickAmount"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentId"
    .end annotation
.end field

.field public contentPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentPrice"
    .end annotation
.end field

.field public contentText:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentText"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentType"
    .end annotation
.end field

.field public contentTypeId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentTypeId"
    .end annotation
.end field

.field public egg:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "egg"
    .end annotation
.end field

.field public expiredDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "expiredDate"
    .end annotation
.end field

.field public flag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flag"
    .end annotation
.end field

.field public flowers:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "flowers"
    .end annotation
.end field

.field public isChecked:Z

.field private k:Z

.field public keepDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "keepDate"
    .end annotation
.end field

.field public mark:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mark"
    .end annotation
.end field

.field public promotionPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "promotionPrice"
    .end annotation
.end field

.field public provinceId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "provinceId"
    .end annotation
.end field

.field public resourceType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resourceType"
    .end annotation
.end field

.field public reviewAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "reviewAmount"
    .end annotation
.end field

.field public userAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "userAmount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getAuditDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->auditDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAutuor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->autuor:Ljava/lang/String;

    return-object v0
.end method

.method public getBug()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v0, v1, 0x2

    .line 508
    .local v0, "a":I
    if-eqz v0, :cond_0

    .line 509
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 511
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getBugAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->bugAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->buyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->clickAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->contentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/cmdm/control/bean/Content;->contentText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/Content;->contentText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/Content;->contentText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "str":Ljava/lang/String;
    const-string v1, "str"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  ----str.size()=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->contentTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getDIY()Ljava/lang/String;
    .locals 4

    .prologue
    .line 491
    iget-object v2, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v0, v2, 0x8

    .line 492
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 493
    .local v1, "b":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/cmdm/control/bean/Content;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/cmdm/control/bean/Content;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "diy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    const/4 v1, 0x1

    .line 497
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEgg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->egg:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFavor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 481
    .local v0, "a":I
    rem-int/lit8 v1, v0, 0x2

    .line 482
    .local v1, "b":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->flowers:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/cmdm/control/bean/Content;->k:Z

    return v0
.end method

.method public getKeepDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->keepDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMySetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v0, v1, 0x10

    .line 487
    .local v0, "a":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->provinceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->reviewAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cmdm/control/bean/Content;->userAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setAuditDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "auditDate"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->auditDate:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setAutuor(Ljava/lang/String;)V
    .locals 0
    .param p1, "autuor"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->autuor:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setBugAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "bugAmount"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->bugAmount:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setBuyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "buyDate"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->buyDate:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setClickAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAmount"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->clickAmount:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->contentId:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setContentPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentPrice"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->contentPrice:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->contentText:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->contentType:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setContentTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTypeId"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->contentTypeId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setEgg(Ljava/lang/String;)V
    .locals 0
    .param p1, "egg"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->egg:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredDate"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->expiredDate:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 472
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmdm/control/bean/Content;->flag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFlowers(Ljava/lang/String;)V
    .locals 0
    .param p1, "flowers"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->flowers:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setIsShowSetting(Z)V
    .locals 0
    .param p1, "isShowSetting"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/cmdm/control/bean/Content;->k:Z

    .line 175
    return-void
.end method

.method public setKeepDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "keepDate"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->keepDate:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionPrice"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->promotionPrice:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setProvinceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "provinceId"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->provinceId:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->resourceType:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setReviewAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "reviewAmount"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->reviewAmount:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setUserAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAmount"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/cmdm/control/bean/Content;->userAmount:Ljava/lang/String;

    .line 270
    return-void
.end method