.class Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;
.super Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue",
        "<",
        "Landroid/support/v17/leanback/widget/Parallax$FloatProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactionOfMax:F

.field private final mValue:F


# virtual methods
.method final getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->mFactionOfMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->mValue:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->mValue:F

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->mFactionOfMax:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method
