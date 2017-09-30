.class public Lcom/cmdm/control/bean/TopicVideoResult;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "TopicVideoResult"
.end annotation


# instance fields
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

.field public videoList:Lcom/cmdm/control/bean/VideoList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cmdm/control/bean/VideoList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/VideoList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/TopicVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/TopicVideoResult;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/TopicVideoResult;->range:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoList()Lcom/cmdm/control/bean/VideoList;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/TopicVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    return-object v0
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/TopicVideoResult;->offset:Ljava/lang/String;

    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/TopicVideoResult;->range:Ljava/lang/String;

    return-void
.end method

.method public setVideoList(Lcom/cmdm/control/bean/VideoList;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/TopicVideoResult;->videoList:Lcom/cmdm/control/bean/VideoList;

    return-void
.end method
