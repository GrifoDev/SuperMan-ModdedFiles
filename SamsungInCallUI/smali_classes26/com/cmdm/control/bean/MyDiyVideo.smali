.class public Lcom/cmdm/control/bean/MyDiyVideo;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    .line 22
    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->cost:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->diyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    .line 127
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

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->shared:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->verifyState:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInfo()Lcom/cmdm/control/bean/VideoInfo;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->videoInfo:Lcom/cmdm/control/bean/VideoInfo;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->isCheck:Z

    .line 116
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->contentId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCost(Ljava/lang/String;)V
    .locals 0
    .param p1, "cost"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->cost:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDiyDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "diyDate"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->diyDate:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setIsShowSetting(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isShowSetting"    # Ljava/lang/Boolean;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->ad:Ljava/lang/Boolean;

    .line 133
    return-void
.end method

.method public setShared(Ljava/lang/String;)V
    .locals 0
    .param p1, "shared"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->shared:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setVerifyState(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifyState"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->verifyState:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setVideoInfo(Lcom/cmdm/control/bean/VideoInfo;)V
    .locals 0
    .param p1, "videoInfo"    # Lcom/cmdm/control/bean/VideoInfo;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmdm/control/bean/MyDiyVideo;->videoInfo:Lcom/cmdm/control/bean/VideoInfo;

    .line 108
    return-void
.end method
