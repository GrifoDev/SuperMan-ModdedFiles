.class public interface abstract Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract cancelDAAffordance()V
.end method

.method public abstract getAffordanceFalsingFactor()F
.end method

.method public abstract getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getLeftPreview()Landroid/view/View;
.end method

.method public abstract getMaxTranslationDistance()F
.end method

.method public abstract getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.end method

.method public abstract getRightPreview()Landroid/view/View;
.end method

.method public abstract needsAntiFalsing()Z
.end method

.method public abstract onAnimationToSideEnded()V
.end method

.method public abstract onAnimationToSideStarted(ZFF)V
.end method

.method public abstract onAnimationToSideStarted(ZFFZZ)V
.end method

.method public abstract onIconClicked(Z)Z
.end method

.method public abstract onSwipingAborted()V
.end method

.method public abstract onSwipingStarted(Z)V
.end method

.method public abstract startPhoneLaunchAnimationInSecured()V
.end method

.method public abstract userActivity()V
.end method
