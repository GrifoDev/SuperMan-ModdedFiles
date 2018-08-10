.class final Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiCallingDetailAdapter"
.end annotation


# instance fields
.field private mPrefInx:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSummary:Landroid/widget/TextView;

.field private mWfcHelpIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isVisiblePrefMode()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_menu_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    return v6

    :cond_0
    if-ne v3, v7, :cond_2

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    aget v2, v4, v6

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v4, "carrier_wfc_sem_required_show_preferred_menu_bool"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v7

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    aget v2, v4, v6

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    goto :goto_0

    :cond_4
    return v6
.end method

.method private updateWifiCallingDetail(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->isVisiblePrefMode()Z

    move-result v2

    const v4, 0x7f0a059e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0509

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v4, 0x7f0a020d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mWfcHelpIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mWfcHelpIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_preferred"

    invoke-static {v4, v5, v8}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    new-instance v3, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$M2clPisUsRjPaF2mY9ybml71wMk$9;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v5, v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_3

    const v5, 0x7f13018a

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextAppearance(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WFC_HELP_NOTI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f12094b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mWfcHelpIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mWfcHelpIcon:Landroid/widget/ImageView;

    const v5, 0x7f0807bd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    sget-boolean v4, Lcom/android/systemui/Rune;->QPANEL_IS_ZVV_ICON:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f12094c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mWfcHelpIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v5, 0x7f12094a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    const v5, 0x7f13018b

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WFC_PREF_ADD_WIFI_ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v8}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    const v6, 0x1020019

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->check(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d014e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->updateWifiCallingDetail(Landroid/view/View;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1391

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get7(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_WifiCallingTile$WifiCallingDetailAdapter_38941(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick() mPrefInx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get4(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_preferred"

    iget v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mPrefInx:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/WifiCallingDBController;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isWifiCallingTileBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-wrap0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingDetailAdapter;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    if-eqz p1, :cond_2

    const v3, 0x7f13018a

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextAppearance(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v3, 0x7f13018b

    goto :goto_1

    :cond_3
    return p1
.end method
