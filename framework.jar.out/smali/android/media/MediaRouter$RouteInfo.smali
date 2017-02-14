.class public Landroid/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$RouteInfo$1;
    }
.end annotation


# static fields
.field public static final DEVICE_TYPE_BLUETOOTH:I = 0x3

.field public static final DEVICE_TYPE_SPEAKER:I = 0x2

.field public static final DEVICE_TYPE_TV:I = 0x1

.field public static final DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x3

.field public static final STATUS_CONNECTED:I = 0x6

.field public static final STATUS_CONNECTING:I = 0x2

.field public static final STATUS_IN_USE:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_NOT_AVAILABLE:I = 0x4

.field public static final STATUS_SCANNING:I = 0x1


# instance fields
.field final mCategory:Landroid/media/MediaRouter$RouteCategory;

.field mDescription:Ljava/lang/CharSequence;

.field mDeviceAddress:Ljava/lang/String;

.field mDeviceType:I

.field mEnabled:Z

.field mGlobalRouteId:Ljava/lang/String;

.field mGroup:Landroid/media/MediaRouter$RouteGroup;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/CharSequence;

.field mNameResId:I

.field mPlaybackStream:I

.field mPlaybackType:I

.field mPresentationDisplay:Landroid/view/Display;

.field mPresentationDisplayId:I

.field private mRealStatusCode:I

.field final mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

.field private mResolvedStatusCode:I

.field private mStatus:Ljava/lang/CharSequence;

.field mSupportedTypes:I

.field private mTag:Ljava/lang/Object;

.field mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method static synthetic -get0(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    return v0
.end method

.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 3

    const/16 v0, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iput-boolean v2, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    new-instance v0, Landroid/media/MediaRouter$RouteInfo$1;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return-void
.end method

.method private choosePresentationDisplay()Landroid/view/Display;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v3}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v1

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ltz v3, :cond_2

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget v5, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ne v4, v5, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v6

    :cond_2
    iget-object v3, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_5

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v6

    :cond_5
    sget-object v3, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v3, v3, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v3, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    aget-object v2, v1, v2

    return-object v2

    :cond_6
    return-object v6
.end method


# virtual methods
.method public getCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public getGroup()Landroid/media/MediaRouter$RouteGroup;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPlaybackStream()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getPresentationDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    return v0
.end method

.method public getSupportedTypes()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVolume()I
    .locals 4

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaRouter"

    const-string/jumbo v3, "Error getting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    return v2
.end method

.method public getVolumeHandling()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .locals 4

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaRouter"

    const-string/jumbo v3, "Error getting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v2
.end method

.method public isConnecting()Z
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesTypes(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public requestSetVolume(I)V
    .locals 5

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v4, v3}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MediaRouter"

    const-string/jumbo v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v1, p0, p1}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 6

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v5, v4}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaRouter"

    const-string/jumbo v3, "Error setting local stream volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method resolveStatusCode()Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    if-ne v2, v1, :cond_1

    return v3

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    return v2

    :pswitch_2
    const v0, 0x104050a

    goto :goto_1

    :pswitch_3
    const v0, 0x104050b

    goto :goto_1

    :pswitch_4
    const v0, 0x104050c

    goto :goto_1

    :pswitch_5
    const v0, 0x104050d

    goto :goto_1

    :pswitch_6
    const v0, 0x104050e

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method routeUpdated()V
    .locals 0

    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public select()V
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    return-void
.end method

.method setRealStatusCode(I)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setStatusInt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", presentationDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updatePresentationDisplay()Z
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
