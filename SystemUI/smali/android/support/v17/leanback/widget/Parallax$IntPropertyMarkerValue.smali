.class Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;
.super Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue",
        "<",
        "Landroid/support/v17/leanback/widget/Parallax$IntProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactionOfMax:F

.field private final mValue:I


# virtual methods
.method final getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
