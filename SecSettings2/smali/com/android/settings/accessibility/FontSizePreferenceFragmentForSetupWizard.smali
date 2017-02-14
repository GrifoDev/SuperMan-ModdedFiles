.class public Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;
.source "FontSizePreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x171

    return v0
.end method

.method public onStop()V
    .locals 3

    iget v0, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    iget v1, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mInitialIndex:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/FontSizePreferenceFragmentForSetupWizard;->mCurrentIndex:I

    const/16 v2, 0x171

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->onStop()V

    return-void
.end method
