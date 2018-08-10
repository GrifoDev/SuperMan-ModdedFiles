.class public Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil;
.super Ljava/lang/Object;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation build Landroid/support/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskViewAnimUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateAttach(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isEnterAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/android/systemui/recents/sec/grid/-$Lambda$hh8lRpCOsfmyKwncsd8tdwnPN8w;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/-$Lambda$hh8lRpCOsfmyKwncsd8tdwnPN8w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_sec_grid_TabletGridAnimationHelper$TaskViewAnimUtil_11159(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
