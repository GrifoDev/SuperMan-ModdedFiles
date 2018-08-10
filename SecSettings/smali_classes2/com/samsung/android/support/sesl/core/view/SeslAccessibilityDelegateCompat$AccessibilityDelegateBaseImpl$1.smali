.class Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslAccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;->newAccessibilityDelegateBridge(Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;

.field final synthetic val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;->val$compat:Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
