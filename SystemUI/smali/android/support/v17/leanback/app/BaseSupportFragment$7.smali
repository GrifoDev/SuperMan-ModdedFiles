.class Landroid/support/v17/leanback/app/BaseSupportFragment$7;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BaseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BaseSupportFragment;->internalCreateEntranceTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method
