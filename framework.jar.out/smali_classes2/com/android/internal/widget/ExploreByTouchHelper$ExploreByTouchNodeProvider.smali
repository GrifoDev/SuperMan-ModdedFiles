.class Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ExploreByTouchHelper;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ExploreByTouchHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->-wrap0(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/android/internal/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->-wrap1(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
