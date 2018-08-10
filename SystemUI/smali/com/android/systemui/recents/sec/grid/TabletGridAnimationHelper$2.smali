.class final Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$2;
.super Landroid/transition/TransitionListenerAdapter;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2

    const-string/jumbo v0, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v1, "onTransitionCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->setLayoutChangeAnimRunning(Z)V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    const-string/jumbo v0, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v1, "onTransitionEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->setLayoutChangeAnimRunning(Z)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    const-string/jumbo v0, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v1, "onTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->setLayoutChangeAnimRunning(Z)V

    return-void
.end method
