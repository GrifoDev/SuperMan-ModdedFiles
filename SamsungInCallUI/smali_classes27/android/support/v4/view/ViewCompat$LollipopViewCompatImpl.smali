.class Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1581
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 1704
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1664
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1669
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 1657
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "offsetInWindow"    # [I

    .prologue
    .line 1650
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/ViewCompatLollipop;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1679
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1694
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1604
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1589
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1614
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1709
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1644
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1674
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1629
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1719
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1720
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1724
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1725
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 1699
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1594
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->requestApplyInsets(Landroid/view/View;)V

    .line 1595
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1684
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 1685
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1689
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 1690
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "elevation"    # F

    .prologue
    .line 1599
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    .line 1600
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 1624
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1625
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .prologue
    .line 1619
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 1620
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .prologue
    .line 1584
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translationZ"    # F

    .prologue
    .line 1609
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setTranslationZ(Landroid/view/View;F)V

    .line 1610
    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "z"    # F

    .prologue
    .line 1714
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->setZ(Landroid/view/View;F)V

    .line 1715
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "axes"    # I

    .prologue
    .line 1634
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatLollipop;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1639
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatLollipop;->stopNestedScroll(Landroid/view/View;)V

    .line 1640
    return-void
.end method
