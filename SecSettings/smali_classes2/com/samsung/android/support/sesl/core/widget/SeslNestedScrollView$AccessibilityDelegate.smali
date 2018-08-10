.class Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;
.super Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;
.source "SeslNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->setScrollable(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-gtz v2, :cond_2

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_0

    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sparse-switch p2, :sswitch_data_0

    return v5

    :cond_0
    return v6

    :cond_1
    return v5

    :sswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-ne v1, v3, :cond_2

    return v5

    :cond_2
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    return v6

    :sswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    if-ne v1, v3, :cond_3

    return v5

    :cond_3
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
