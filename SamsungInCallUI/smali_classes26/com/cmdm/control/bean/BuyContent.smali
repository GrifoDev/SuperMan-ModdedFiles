.class public Lcom/cmdm/control/bean/BuyContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "buyContent"
.end annotation


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

.field public isExpand:Z

.field public promotionPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "promotionPrice"
    .end annotation
.end field

.field public resType:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "resType"
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
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuditDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->auditDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAutuor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->autuor:Ljava/lang/String;

    return-object v0
.end method

.method public getBugAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->bugAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->buyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->clickAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->contentPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, Lcom/cmdm/control/bean/BuyContent;->contentText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmdm/control/bean/BuyContent;->contentText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmdm/control/bean/BuyContent;->contentText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
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

    .line 162
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 164
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
    .line 194
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->contentTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEgg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->egg:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->flowers:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getResType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->resType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->reviewAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContent;->userAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setAuditDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "auditDate"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->auditDate:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setAutuor(Ljava/lang/String;)V
    .locals 0
    .param p1, "autuor"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->autuor:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setBugAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "bugAmount"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->bugAmount:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setBuyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "buyDate"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->buyDate:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setClickAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAmount"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->clickAmount:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->contentId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setContentPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentPrice"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->contentPrice:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentText"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->contentText:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->contentType:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setContentTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentTypeId"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->contentTypeId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setEgg(Ljava/lang/String;)V
    .locals 0
    .param p1, "egg"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->egg:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredDate"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->expiredDate:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->flag:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setFlowers(Ljava/lang/String;)V
    .locals 0
    .param p1, "flowers"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->flowers:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionPrice"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->promotionPrice:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setResType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resType"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->resType:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->resourceType:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setReviewAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "reviewAmount"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->reviewAmount:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setUserAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAmount"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContent;->userAmount:Ljava/lang/String;

    .line 233
    return-void
.end method
