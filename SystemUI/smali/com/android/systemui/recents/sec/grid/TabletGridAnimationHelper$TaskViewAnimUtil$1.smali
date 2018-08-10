.class final Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil;->lambda$-com_android_systemui_recents_sec_grid_TabletGridAnimationHelper$TaskViewAnimUtil_11159(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil$1;->val$v:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->resetViewAttrs(Landroid/view/View;)V

    return-void
.end method
