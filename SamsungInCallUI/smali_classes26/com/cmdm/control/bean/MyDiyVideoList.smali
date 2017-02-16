.class public Lcom/cmdm/control/bean/MyDiyVideoList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MyDiyVideoList"
.end annotation


# instance fields
.field public diyVideoList:Lcom/cmdm/control/bean/DiyVideoList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyVideoList"
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiyVideoList()Lcom/cmdm/control/bean/DiyVideoList;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->diyVideoList:Lcom/cmdm/control/bean/DiyVideoList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setDiyVideoList(Lcom/cmdm/control/bean/DiyVideoList;)V
    .locals 0
    .param p1, "diyVideoList"    # Lcom/cmdm/control/bean/DiyVideoList;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->diyVideoList:Lcom/cmdm/control/bean/DiyVideoList;

    .line 30
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->offset:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->range:Ljava/lang/String;

    .line 58
    return-void
.end method
