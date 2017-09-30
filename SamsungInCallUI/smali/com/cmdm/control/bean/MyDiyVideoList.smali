.class public Lcom/cmdm/control/bean/MyDiyVideoList;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiyVideoList()Lcom/cmdm/control/bean/DiyVideoList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->diyVideoList:Lcom/cmdm/control/bean/DiyVideoList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setDiyVideoList(Lcom/cmdm/control/bean/DiyVideoList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->diyVideoList:Lcom/cmdm/control/bean/DiyVideoList;

    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideoList;->range:Ljava/lang/String;

    return-void
.end method
