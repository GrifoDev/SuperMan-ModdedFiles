.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardAffordanceHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "DcmKeyguardAffordanceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    const-string/jumbo v0, "DcmKeyguardAffordanceHelper"

    const-string/jumbo v1, "Make Dummy DcmKeyguardAffordanceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 0

    return-void
.end method

.method public cancelDAAffordance()V
    .locals 0

    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removePreviews()V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 0

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public updatePreviews()V
    .locals 0

    return-void
.end method
