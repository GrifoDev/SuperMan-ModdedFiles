.class public Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;
.super Landroid/widget/TextView;
.source "EmergencyCryptkeeperText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;,
        Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public update()V
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v5, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v8

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCardConstants$State;->iccCardExist()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3

    const/4 v2, 0x0

    move-object v4, v3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_6

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x8

    :goto_3
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x10402f8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v13, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string/jumbo v11, "plmn"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method
