.class public Lcom/android/settings/deviceinfo/StorageSummaryPreference;
.super Landroid/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const v0, 0x7f0402a6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setShouldDisableView(Z)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4

    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "#8a000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPercent(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->mPercent:I

    return-void
.end method
