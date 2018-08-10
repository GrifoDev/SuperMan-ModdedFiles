.class Landroid/support/v17/leanback/app/GuidedStepFragment$2;
.super Ljava/lang/Object;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$2;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$2;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$2;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$2;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->collapseAction(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasSubActions()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->hasEditableActivatorView()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$2;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    goto :goto_0
.end method
