.class public Lcom/android/systemui/statusbar/phone/DoubleTapHelper;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;,
        Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private final mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

.field private mActivationX:F

.field private mActivationY:F

.field private final mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

.field private final mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

.field private mDoubleTapSlop:F

.field private mDownX:F

.field private mDownY:F

.field private final mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

.field private mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:F

.field private mTrackTouch:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$VflaHiY9Nrg-d1bwzwQR_CntEUI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$VflaHiY9Nrg-d1bwzwQR_CntEUI;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    return-void
.end method

.method private isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/Rune;->NOTI_SUPPORT_DOUBLETAP_ON_LOCKSCREEN:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapSlop:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTouchSlop:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeActive()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_DoubleTapHelper-mthref-0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    return-void
.end method

.method public makeInactive()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive(Z)V

    return-void
.end method

.method public makeInactive(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;->onActiveChanged(Z)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDownY:F

    int-to-float v3, p2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;->onSlideBack()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivated:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeActive()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->isWithinDoubleTapSlop(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapLogListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationX:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mActivationY:F

    sub-float/2addr v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;->onDoubleTapLog(ZFF)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;->onDoubleTap()Z

    move-result v2

    if-nez v2, :cond_0

    return v6

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->makeInactive()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->mTrackTouch:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
