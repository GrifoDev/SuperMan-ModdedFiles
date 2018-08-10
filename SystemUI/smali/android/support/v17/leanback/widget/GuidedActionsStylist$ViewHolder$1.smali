.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->mAction:Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
