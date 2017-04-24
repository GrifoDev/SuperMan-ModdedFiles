.class public Lcom/samsung/android/settings/RingtoneSettingTabActivity;
.super Landroid/app/TabActivity;
.source "RingtoneSettingTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActivePhone:I

.field private mContext:Landroid/content/Context;

.field private multiSimNum:I

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_0
    return-void
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 8

    const v7, 0x7f0b052a

    const v6, 0x7f0b0529

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v3, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "UNKNOWN"

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "UNKNOWN"

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_3

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez p1, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setupSimTab(I)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sim Id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->setupSimTab(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->configureActionBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    const/4 v4, 0x0

    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v4, v6, :cond_0

    sget-object v6, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v0

    float-to-int v5, v6

    invoke-virtual {v2, v8, v8, v5, v8}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v6, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/RingtoneSettingTabActivity$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/RingtoneSettingTabActivity$1;-><init>(Lcom/samsung/android/settings/RingtoneSettingTabActivity;)V

    iput-object v6, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/samsung/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
