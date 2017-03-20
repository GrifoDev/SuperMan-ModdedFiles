.class public Lcom/android/incallui/util/CallAnimationUtils;
.super Ljava/lang/Object;
.source "CallAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsolutePositionLeft(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 14
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 15
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static getAbsolutePositionTop(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 8
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 9
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method
