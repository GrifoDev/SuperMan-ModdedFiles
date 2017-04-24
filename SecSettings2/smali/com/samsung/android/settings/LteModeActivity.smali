.class public Lcom/samsung/android/settings/LteModeActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LteModeActivity.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/LteModeActivity$1;,
        Lcom/samsung/android/settings/LteModeActivity$2;,
        Lcom/samsung/android/settings/LteModeActivity$3;,
        Lcom/samsung/android/settings/LteModeActivity$4;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isAirplaneModeOn:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLteModeDesc:Landroid/widget/TextView;

.field private final mLteModeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/LteModeActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/LteModeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/LteModeActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/LteModeActivity;->getCardStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/LteModeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/LteModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/LteModeActivity;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/LteModeActivity$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/LteModeActivity$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/LteModeActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v0, Lcom/samsung/android/settings/LteModeActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LteModeActivity$1;-><init>(Lcom/samsung/android/settings/LteModeActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/LteModeActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/LteModeActivity$2;-><init>(Lcom/samsung/android/settings/LteModeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/LteModeActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/LteModeActivity$3;-><init>(Lcom/samsung/android/settings/LteModeActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getCardStatus()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string/jumbo v4, "0"

    invoke-static {v3, v6, v4}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ril.IsCSIM"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    const-string/jumbo v3, "3"

    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    const-string/jumbo v5, "9"

    invoke-static {v4, v6, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v6
.end method

.method private setSwitchChecked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    sget-boolean v0, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "LteModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KKK setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_mode_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KKK updateUi: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/LteModeActivity;->getCardStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_0
    if-ne v0, v4, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0x10

    const v4, 0x7f04020a

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f11053c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/LteModeActivity;->mLteModeDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LteModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0ab0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/LteModeActivity;->mLteModeDesc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    return-object v3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "LteModeActivity"

    const-string/jumbo v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "LteModeActivity"

    const-string/jumbo v1, "KKK onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lte_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/LteModeActivity;->updateUi()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lte_mode_switch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "LteModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KKK onCheckedChanged isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    const-string/jumbo v2, "LteModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KKK oncheckedchange airmode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0358

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    if-nez v1, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/LteModeActivity;->sendLteModeChange(Z)V

    :cond_3
    return-void

    :cond_4
    if-nez p2, :cond_3

    if-ne v1, v6, :cond_3

    goto :goto_0
.end method

.method public sendLteModeChange(Z)V
    .locals 4

    const-string/jumbo v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KKK sendLteModeChange mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.action.LTE_MODE_CHNAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "lte_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
