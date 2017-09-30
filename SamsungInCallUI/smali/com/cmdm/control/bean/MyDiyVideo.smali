.class public Lcom/cmdm/control/bean/MyDiyVideo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "myDiyVideo"
.end annotation


# instance fields
.field private ad:Ljava/lang/Boolean;

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "contentId"
    .end annotation
.end field

.field public cost:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "cost"
    .end annotation
.end field

.field public diyDate:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "diyDate"
    .end annotation
.end field

.field public isCheck:Z

.field public shared:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "shared"
    .end annotation
.end field

.field public verifyState:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "verifyState"
    .end annotation
.end field

.field public videoInfo:Lcom/cmdm/control/bean/VideoInfo;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "videoInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->cost:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->diyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getShared()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->shared:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->verifyState:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInfo()Lcom/cmdm/control/bean/VideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->videoInfo:Lcom/cmdm/control/bean/VideoInfo;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->cost:Ljava/lang/String;

    return-void
.end method

.method public setDiyDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->diyDate:Ljava/lang/String;

    return-void
.end method

.method public setIsShowSetting(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    return-void
.end method

.method public setShared(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->shared:Ljava/lang/String;

    return-void
.end method

.method public setVerifyState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->verifyState:Ljava/lang/String;

    return-void
.end method

.method public setVideoInfo(Lcom/cmdm/control/bean/VideoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->videoInfo:Lcom/cmdm/control/bean/VideoInfo;

    return-void
.end method
