.class public Lcom/cmdm/control/bean/DIYContentResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "DiyResult"
.end annotation


# instance fields
.field public diyList:Lcom/cmdm/control/bean/DiyList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyList"
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
.method public getDiyList()Lcom/cmdm/control/bean/DiyList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->diyList:Lcom/cmdm/control/bean/DiyList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setDiyList(Lcom/cmdm/control/bean/DiyList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->diyList:Lcom/cmdm/control/bean/DiyList;

    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->range:Ljava/lang/String;

    return-void
.end method
