.class public Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# instance fields
.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v0, 0x1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float v3, v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    return v3

    :cond_0
    move v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    return v3
.end method


# virtual methods
.method protected commit()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    iget v3, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040110

    iput v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mActivityLayoutResId:I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x7f040111

    const/4 v7, 0x0

    aput v6, v5, v7

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mPreviewSampleResIds:[I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const v5, 0x7f0c0036

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mEntries:[Ljava/lang/String;

    const v5, 0x7f0c0037

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "font_scale"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0, v4}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mInitialIndex:I

    array-length v5, v4

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
