.class Landroid/support/v17/leanback/app/BaseSupportFragment$6;
.super Ljava/lang/Object;
.source "BaseSupportFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BaseSupportFragment;->onExecuteEntranceTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->internalCreateEntranceTransition()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onEntranceTransitionStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->runEntranceTransition(Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    goto :goto_0
.end method
