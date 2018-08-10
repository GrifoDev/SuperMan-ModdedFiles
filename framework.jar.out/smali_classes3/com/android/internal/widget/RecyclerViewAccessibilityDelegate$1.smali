.class Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

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
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate$1;->this$0:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
