.class public Lcom/cmdm/control/bean/MyVideoCRS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ad:Ljava/lang/Boolean;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private crsType:Ljava/lang/String;

.field private isCheck:Z

.field private posterUrl:Ljava/lang/String;

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    .line 17
    iput-boolean v1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getCrsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->crsType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->af:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    .line 24
    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsType"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->crsType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDownloadtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadtime"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ag:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->af:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setIsShowSetting(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isShowSetting"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    .line 27
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->posterUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->videoId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ae:Ljava/lang/String;

    .line 33
    return-void
.end method
