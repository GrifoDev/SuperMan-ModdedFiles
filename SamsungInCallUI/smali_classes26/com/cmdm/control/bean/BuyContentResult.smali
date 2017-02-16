.class public Lcom/cmdm/control/bean/BuyContentResult;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getmBuyContentList()Lcom/cmdm/control/bean/BuyContentList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmdm/control/bean/BuyContentResult;->mBuyContentList:Lcom/cmdm/control/bean/BuyContentList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->offset:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->range:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setmBuyContentList(Lcom/cmdm/control/bean/BuyContentList;)V
    .locals 0
    .param p1, "mBuyContentList"    # Lcom/cmdm/control/bean/BuyContentList;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cmdm/control/bean/BuyContentResult;->mBuyContentList:Lcom/cmdm/control/bean/BuyContentList;

    .line 85
    return-void
.end method
