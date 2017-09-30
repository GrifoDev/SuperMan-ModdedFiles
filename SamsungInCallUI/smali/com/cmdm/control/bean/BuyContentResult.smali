.class public Lcom/cmdm/control/bean/BuyContentResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BuyContentResult"
.end annotation


# instance fields
.field public mBuyContentList:Lcom/cmdm/control/bean/BuyContentList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "buyContentList"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getmBuyContentList()Lcom/cmdm/control/bean/BuyContentList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->mBuyContentList:Lcom/cmdm/control/bean/BuyContentList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->range:Ljava/lang/String;

    return-void
.end method

.method public setmBuyContentList(Lcom/cmdm/control/bean/BuyContentList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->mBuyContentList:Lcom/cmdm/control/bean/BuyContentList;

    return-void
.end method
