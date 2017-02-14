.class public Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/display/ScreenZoomSettings;
.source "ScreenZoomPreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x172

    return v0
.end method

.method public onStop()V
    .locals 3

    iget v0, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->mCurrentIndex:I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->mInitialIndex:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->mCurrentIndex:I

    const/16 v2, 0x172

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/display/ScreenZoomSettings;->onStop()V

    return-void
.end method
