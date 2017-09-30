.class public Lcom/cmdm/control/bean/Box;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmdm/control/bean/Box;->k:Z

    return-void
.end method


# virtual methods
.method public getAuditDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->auditDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAutuor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->autuor:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxName:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxSort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxSort:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxSortId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxSortId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxdes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->boxdes:Ljava/lang/String;

    return-object v0
.end method

.method public getClickAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->clickAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->contentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getExistContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->existContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->expiredDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/Box;->k:Z

    return v0
.end method

.method public getPromotionPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->promotionPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->resourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->reviewAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Box;->userAmount:Ljava/lang/String;

    return-object v0
.end method

.method public setAuditDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->auditDate:Ljava/lang/String;

    return-void
.end method

.method public setAutuor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->autuor:Ljava/lang/String;

    return-void
.end method

.method public setBoxId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxId:Ljava/lang/String;

    return-void
.end method

.method public setBoxName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxName:Ljava/lang/String;

    return-void
.end method

.method public setBoxPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxPrice:Ljava/lang/String;

    return-void
.end method

.method public setBoxSort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxSort:Ljava/lang/String;

    return-void
.end method

.method public setBoxSortId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxSortId:Ljava/lang/String;

    return-void
.end method

.method public setBoxdes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->boxdes:Ljava/lang/String;

    return-void
.end method

.method public setClickAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->clickAmount:Ljava/lang/String;

    return-void
.end method

.method public setContentCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->contentCount:Ljava/lang/String;

    return-void
.end method

.method public setExistContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->existContent:Ljava/lang/String;

    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public setIsShowSetting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/Box;->k:Z

    return-void
.end method

.method public setPromotionPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->promotionPrice:Ljava/lang/String;

    return-void
.end method

.method public setResourceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->resourceType:Ljava/lang/String;

    return-void
.end method

.method public setReviewAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->reviewAmount:Ljava/lang/String;

    return-void
.end method

.method public setUserAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Box;->userAmount:Ljava/lang/String;

    return-void
.end method
