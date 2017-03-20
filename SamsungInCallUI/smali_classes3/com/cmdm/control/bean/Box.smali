.class public Lcom/cmdm/control/bean/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "box"
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

.field public boxId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxId"
    .end annotation
.end field

.field public boxName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxName"
    .end annotation
.end field

.field public boxPrice:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxPrice"
    .end annotation
.end field

.field public boxSort:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxSort"
    .end annotation
.end field

.field public boxSortId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxSortId"
    .end annotation
.end field

.field public boxdes:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxdes"
    .end annotation
.end field

.field public clickAmount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "clickAmount"
    .end annotation
.end field

.field public contentCount:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentCount"
    .end annotation
.end field

.field public existContent:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "existContent"
    .end annotation
.end field

.field public expiredDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "expiredDate"
    .end annotation
.end field

.field private k:Z

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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/Box;->k:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getAuditDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->auditDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAutuor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->autuor:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxName:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxSort:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxSortId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxSortId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxdes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxdes:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->clickAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getExistContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->existContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/cmdm/control/bean/Box;->k:Z

    return v0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->reviewAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->userAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setAuditDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "auditDate"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->auditDate:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setAutuor(Ljava/lang/String;)V
    .locals 0
    .param p1, "autuor"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->autuor:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setBoxId(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setBoxName(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxName"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxName:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setBoxPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxPrice"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxPrice:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setBoxSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxSort"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxSort:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setBoxSortId(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxSortId"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxSortId:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setBoxdes(Ljava/lang/String;)V
    .locals 0
    .param p1, "boxdes"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxdes:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setClickAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAmount"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->clickAmount:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentCount"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->contentCount:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setExistContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "existContent"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->existContent:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredDate"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->expiredDate:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setIsShowSetting(Z)V
    .locals 0
    .param p1, "isShowSetting"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/cmdm/control/bean/Box;->k:Z

    .line 141
    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionPrice"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->promotionPrice:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->resourceType:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setReviewAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "reviewAmount"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->reviewAmount:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setUserAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAmount"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->userAmount:Ljava/lang/String;

    .line 261
    return-void
.end method
