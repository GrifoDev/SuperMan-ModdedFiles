.class public interface abstract Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxController.java"


# virtual methods
.method public abstract cancelGuideNotification()V
.end method

.method public abstract disableBlurFlag(Ljava/lang/String;)V
.end method

.method public abstract dismissServiceBox(Ljava/lang/String;)V
.end method

.method public abstract getClockScaleMode()I
.end method

.method public abstract getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
.end method

.method public abstract getCurrentPagePkgName()Ljava/lang/String;
.end method

.method public abstract getOwnerInfo()Landroid/view/View;
.end method

.method public abstract getPageTopPos(Ljava/lang/String;)I
.end method

.method public abstract getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
.end method

.method public abstract hideArrowAnimation()V
.end method

.method public abstract isContainerExpanded()Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isScalableClockShowing()Z
.end method

.method public abstract isShowServiceBox()Z
.end method

.method public abstract onDismissServiceBoxStarted(Ljava/lang/String;)V
.end method

.method public abstract onPageSelected(Ljava/lang/String;)V
.end method

.method public abstract onSettingsChanged(Landroid/net/Uri;)V
.end method

.method public abstract reissueAllPages()V
.end method

.method public abstract removeRemoteViews(Ljava/lang/String;)V
.end method

.method public abstract sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V
.end method

.method public abstract setClockScaleMode(I)V
.end method

.method public abstract setCurrentPage(Ljava/lang/String;)V
.end method

.method public abstract setFixedClockShowing(Z)V
.end method

.method public abstract setScalableClockShowing(Z)V
.end method

.method public abstract showServiceBox(Ljava/lang/String;)V
.end method

.method public abstract updateClockPageLocation(F)V
.end method
