.class public Lcom/android/systemui/tuner/SelectablePreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "SelectablePreference.java"


# instance fields
.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/SelectablePreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/SelectablePreference;->setSelectable(Z)V

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/tuner/SelectablePreference;->mSize:I

    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v1, p0, Lcom/android/systemui/tuner/SelectablePreference;->mSize:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-super {p0, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
