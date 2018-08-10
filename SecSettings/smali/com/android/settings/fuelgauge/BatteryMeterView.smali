.class public Lcom/android/settings/fuelgauge/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    }
.end annotation


# instance fields
.field mAccentColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mErrorColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x7f060039

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060036

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setShowPercent(Z)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setWarningColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setBatteryLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryLevel(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->getCriticalLevel()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mErrorColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mAccentColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setBatteryColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setCharging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryMeterView;->mDrawable:Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;->setCharging(Z)V

    return-void
.end method
