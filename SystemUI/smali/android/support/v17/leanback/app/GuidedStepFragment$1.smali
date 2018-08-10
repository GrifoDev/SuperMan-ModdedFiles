.class Landroid/support/v17/leanback/app/GuidedStepFragment$1;
.super Ljava/lang/Object;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;


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

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onImeClose()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->runImeAnimations(Z)V

    return-void
.end method

.method public onImeOpen()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment$1;->this$0:Landroid/support/v17/leanback/app/GuidedStepFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->runImeAnimations(Z)V

    return-void
.end method
