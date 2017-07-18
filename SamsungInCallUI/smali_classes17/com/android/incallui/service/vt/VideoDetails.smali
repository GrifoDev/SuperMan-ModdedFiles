.class public Lcom/android/incallui/service/vt/VideoDetails;
.super Ljava/lang/Object;
.source "VideoDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;
    }
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mNeedToShowNoVideo:Z

.field private mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

.field private mPeerVideoState:I

.field private mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

.field private mPreviewState:Z

.field private mVideoPauseState:I

.field private mVideoQuality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mId:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    new-instance v0, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewState:Z

    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->PAUSE:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mNeedToShowNoVideo:Z

    return-void
.end method

.method public static getStringForVideoQuality(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string v0, "default"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string v0, "low"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "medium"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string v0, "high"

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    return-object v0
.end method

.method public getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    return v0
.end method

.method public isChanged(Lcom/android/incallui/service/vt/VideoDetails;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoPauseState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoQuality()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isPreviewReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewState:Z

    return v0
.end method

.method public isVideoDimensionChanged(Lcom/android/incallui/service/vt/VideoDetails;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoDimension;->isSame(Lcom/android/incallui/service/vt/VideoDimension;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public needToShowNoVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mNeedToShowNoVideo:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mId:Ljava/lang/String;

    return-void
.end method

.method public setNoVideoState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNoVideoState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mNeedToShowNoVideo:Z

    return-void
.end method

.method public setPeerDimension(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    if-eq v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPeerDimension - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/vt/VideoDimension;->update(II)V

    :cond_1
    return-void
.end method

.method public setPeerVideoBusy(Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->BUSY:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    sget v1, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->BUSY:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->PAUSE:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    goto :goto_0
.end method

.method public setPeerVideoState(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    sget v1, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMED:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMING:I

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPeerVideoState - ignored : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    sget p1, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMED:I

    :cond_0
    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPeerVideoState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerVideoState:I

    :cond_1
    return-void
.end method

.method public setPreviewDimension(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->width:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    iget v0, v0, Lcom/android/incallui/service/vt/VideoDimension;->height:I

    if-eq v0, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewDimension - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/service/vt/VideoDimension;->update(II)V

    :cond_1
    return-void
.end method

.method public setPreviewState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewState:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewState - ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewState:Z

    :cond_0
    return-void
.end method

.method public setVideoPauseState(I)Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoQuality(I)Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoQuality - New Quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getStringForVideoQuality(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->details(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " VideoDetails %s{Dimension[peer=%s, camera=%s], VideoPauseState=%s, VideoQuality=%s} "

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoDimension;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoDetails;->getStringForVideoQuality(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/service/vt/VideoDetails;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoQuality()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoQuality:I

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPeerDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mPreviewDimension:Lcom/android/incallui/service/vt/VideoDimension;

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoDetails;->getVideoPauseState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoDetails;->mVideoPauseState:I

    return-void
.end method
