.class public Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;
    }
.end annotation


# instance fields
.field final mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mRecyclerView:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;-><init>(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v1, p1, Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldIgnore()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
