.class public Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHeaderView()Landroid/widget/TextView;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040286

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v1, p1

    check-cast v1, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setDividerInset(I)V

    const v4, 0x7f0203f9

    const v5, 0x7f0203f8

    invoke-virtual {v1, v4, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setIllustration(II)V

    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    invoke-virtual {v2}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v4, 0x7f0b19ea

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
