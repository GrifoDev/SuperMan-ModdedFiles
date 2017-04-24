.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NearbyScanning.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private setLayoutOnClickForLogging()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onActivityCreated.setLayoutOnClickForLogging Failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0800a7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1
    invoke-static {v0, v3}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    const-string/jumbo v1, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onDestroyView()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "NearbyScanning"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NearbyDeviceScanning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "NearbyScanning"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "NearbyDeviceScanning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
