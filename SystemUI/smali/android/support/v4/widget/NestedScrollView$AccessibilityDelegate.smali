.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_1

    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    sparse-switch p2, :sswitch_data_0

    return v5

    :sswitch_0
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v1, v3, :cond_2

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    return v6

    :cond_2
    return v5

    :sswitch_1
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    return v6

    :cond_3
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
