.class public Lcom/cmdm/control/bean/DIYContentResult;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiyList()Lcom/cmdm/control/bean/DiyList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->diyList:Lcom/cmdm/control/bean/DiyList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmdm/control/bean/DIYContentResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setDiyList(Lcom/cmdm/control/bean/DiyList;)V
    .locals 0
    .param p1, "diyList"    # Lcom/cmdm/control/bean/DiyList;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->diyList:Lcom/cmdm/control/bean/DiyList;

    .line 54
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->offset:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmdm/control/bean/DIYContentResult;->range:Ljava/lang/String;

    .line 84
    return-void
.end method
