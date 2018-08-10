.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi19Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi18Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v0

    return v0
.end method

.method public getCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCanOpenPopup(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method
