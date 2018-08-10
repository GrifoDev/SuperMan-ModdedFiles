.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivity$1;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$2;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$3;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private mDownDelta:Landroid/graphics/PointF;

.field private mDownPosition:Landroid/graphics/PointF;

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/phone/PipMenuActivity;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private cancelDelayedFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissPip()V
    .locals 2

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$6;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private expandPip()V
    .locals 2

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$7;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private hideMenu()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    if-eqz p2, :cond_0

    invoke-direct {p0, v7}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_12523(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_18806(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_20460(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_20791(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PipMenuActivity"

    const-string/jumbo v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string/jumbo v1, "Could not notify controller of activity finished"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private notifyMenuStateChange(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "Could not notify controller of PIP menu visibility"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private notifyRegisterInputConsumer()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "Could not notify controller to register input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private notifyUnregisterInputConsumer()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "Could not notify controller to unregister input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private repostDelayedFinish(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PipMenuActivity"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "PipMenuActivity"

    invoke-static {v2, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 9

    iput-boolean p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    iget v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v4, p1, :cond_5

    iget v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    xor-int/lit8 v4, v0, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x7d

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    const-wide/16 v4, 0x7d0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyUnregisterInputConsumer()V

    goto :goto_2
.end method

.method private showPipMenu()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "Could not notify controller to show PIP menu"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 13

    const/4 v10, 0x0

    const v9, 0x7f0a01b1

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v9, 0x7f0a002d

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;

    invoke-direct {v9}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;-><init>()V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    :cond_0
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    const v11, 0x7f0d0115

    invoke-virtual {v6, v11, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    move v9, v10

    :goto_3
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v9, 0x8

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v9, v11, :cond_6

    const/4 v7, 0x1

    :goto_4
    const/4 v5, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_a

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;

    invoke-direct {v11, v1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;-><init>(Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, p0, v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$5;

    invoke-direct {v9, v0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_9

    if-lez v5, :cond_9

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    :goto_7
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    const v9, 0x3f0a3d71    # 0.54f

    goto :goto_6

    :cond_9
    move v9, v10

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07047d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070482

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_0
.end method

.method private updateDismissFraction(F)V
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    const v5, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, p1

    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v2

    mul-float v4, v5, p1

    add-float v1, v3, v4

    mul-float v3, v1, v6

    float-to-int v0, v3

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    mul-float v3, p1, v5

    mul-float/2addr v3, v6

    float-to-int v0, v3

    goto :goto_0
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "messenger"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    iput-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    const-string/jumbo v5, "actions"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string/jumbo v5, "menu_state"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v5, "stack_bounds"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    const-string/jumbo v5, "movement_bounds"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const-string/jumbo v5, "allow_timeout"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v2, v4, v3, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyRegisterInputConsumer()V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->overridePendingTransition(II)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_12485(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$8;

    invoke-direct {v1, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_24297()V
    .locals 2

    const-string/jumbo v0, "Could not notify controller to expand PIP"

    const/16 v1, 0x65

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_24855()V
    .locals 2

    const-string/jumbo v0, "Could not notify controller to dismiss PIP"

    const/16 v1, 0x67

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_7961(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_8408(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_8859(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20040000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0116

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setContentView(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a032f

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07047f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    const v0, 0x7f120849

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setTitle(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setDisablePreviewScreenshots(Z)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    return-void

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method
