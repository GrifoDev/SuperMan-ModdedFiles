.class public Lcom/cmdm/control/bean/BoxResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "BoxResult"
.end annotation


# instance fields
.field public mBoxList:Lcom/cmdm/control/bean/BoxList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "boxList"
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
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/cmdm/control/bean/BoxList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/BoxList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    .line 23
    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cmdm/control/bean/BoxResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cmdm/control/bean/BoxResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getmBoxList()Lcom/cmdm/control/bean/BoxList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cmdm/control/bean/BoxResult;->offset:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cmdm/control/bean/BoxResult;->range:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setmBoxList(Lcom/cmdm/control/bean/BoxList;)V
    .locals 0
    .param p1, "mBoxList"    # Lcom/cmdm/control/bean/BoxList;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cmdm/control/bean/BoxResult;->mBoxList:Lcom/cmdm/control/bean/BoxList;

    .line 52
    return-void
.end method
