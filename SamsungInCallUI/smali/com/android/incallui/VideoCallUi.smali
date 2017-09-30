.class public interface abstract Lcom/android/incallui/VideoCallUi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/Ui;


# virtual methods
.method public abstract captureSurface(I)Ljava/lang/String;
.end method

.method public abstract getDisplayVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getPreviewVideoSurface()Landroid/view/Surface;
.end method

.method public abstract invalidateUi()V
.end method

.method public abstract isPreviewReady()Z
.end method

.method public abstract needToShowPreparingImage()Z
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setPrimaryCall(Lcom/android/incallui/Call;)V
.end method

.method public abstract setPrimaryCallElapsedTime(ZLjava/lang/String;)V
.end method

.method public abstract setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
.end method

.method public abstract showCallBannerByDialpad(Z)V
.end method

.method public abstract showFarEndCaptureAnimation()V
.end method

.method public abstract showIncomingHideMeImage(Z)V
.end method

.method public abstract showNearEndCaptureAnimation()V
.end method

.method public abstract showNearEndImage(Z)V
.end method

.method public abstract showSwitchCameraAnimation(Z)V
.end method

.method public abstract showVideoInCallResize(Z)V
.end method

.method public abstract showVideoIndicatorArea(Z)V
.end method

.method public abstract switchVideoDisplay()V
.end method

.method public abstract updateFullscreenMode(Z)V
.end method

.method public abstract updateSmallView(Lcom/android/incallui/Call;)V
.end method

.method public abstract updateVideoSessionEvent(ILcom/android/incallui/Call;)V
.end method
