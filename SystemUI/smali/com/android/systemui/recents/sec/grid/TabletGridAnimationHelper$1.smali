.class Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->startEnterTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$1;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string/jumbo v0, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v1, "mEnterAnimSet is end.\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
