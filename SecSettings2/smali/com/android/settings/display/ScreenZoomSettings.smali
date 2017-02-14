.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenZoomSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mCurrentIndex:I

    aget v0, v1, v2

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    if-ne v0, v1, :cond_0

    invoke-static {v3}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    goto :goto_0
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x153

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040254

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mActivityLayoutResId:I

    const v3, 0x7f040255

    const v4, 0x7f040256

    const v5, 0x7f040258

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mPreviewSampleResIds:[I

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    new-array v3, v7, [I

    aput v1, v3, v6

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array v3, v7, [Ljava/lang/String;

    sget v4, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    iput v6, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    iput v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0
.end method
