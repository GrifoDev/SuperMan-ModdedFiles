.class public final Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    return v0
.end method

.method public static isFromSource(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
