.class Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getVirtualViewAt(FF)I

    move-result v0

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$1;->this$0:Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method
