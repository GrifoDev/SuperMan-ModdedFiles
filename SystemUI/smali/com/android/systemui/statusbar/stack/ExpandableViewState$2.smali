.class Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->this$0:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a0204

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->mWasCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;->mWasCancelled:Z

    return-void
.end method
