.class Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;
.super Ljava/lang/Object;
.source "SeslAccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0
.end method

.method public newAccessibilityDelegateBridge(Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;Lcom/samsung/android/support/sesl/core/view/SeslAccessibilityDelegateCompat;)V

    return-object v0
.end method

.method public performAccessibilityAction(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
