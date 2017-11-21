.class public Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartBondingSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private activity:Lcom/android/settings/SettingsActivity;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private smartBondingdesc:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method public static replaceLTEString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LTE"

    const-string/jumbo v1, "4G"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f0b0431

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const v3, 0x7f040205

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x30

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f11053a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0bda

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "%d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0bdb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->replaceLTEString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SmartBondingSettings"

    const-string/jumbo v4, "There is no %d."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "download_booster"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "download_booster"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DownloadBooster"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v5, "isWifiEnabled"

    invoke-static {v3, v4, v5, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isCellularDataAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-nez v1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->finish()V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "DownloadBooster"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
