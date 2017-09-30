.class public Lcom/cmdm/control/bean/MyVideoCRS;
.super Ljava/lang/Object;

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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    return-void
.end method


# virtual methods
.method public getCrsType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->crsType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ag:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->af:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowSetting()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    return v0
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->isCheck:Z

    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->crsType:Ljava/lang/String;

    return-void
.end method

.method public setDownloadtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ag:Ljava/lang/String;

    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->af:Ljava/lang/String;

    return-void
.end method

.method public setIsShowSetting(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ad:Ljava/lang/Boolean;

    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->posterUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/MyVideoCRS;->ae:Ljava/lang/String;

    return-void
.end method
