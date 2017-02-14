.class Lcom/android/server/policy/GlobalActions$14;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$14;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 11

    const v10, 0x1040869

    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v6, "in onPress of AirplaneMode"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v6, "com.android.service.GlobalAction"

    const-string/jumbo v7, "0002"

    const-string/jumbo v8, "AirplaneMode"

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get36(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get58(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-boolean v4, v4, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get41(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string/jumbo v4, "CTC"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get53()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "DSNETWORK"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v10}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "DUALMODE_SETTING"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v10}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v6, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get53()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Z)Z

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "usb"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    invoke-static {v6, v4}, Lcom/android/server/policy/GlobalActions;->-set16(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get63(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get63(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get63(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v4

    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Z)Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v6, "isSettingsChangesAllowed"

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get57(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v6, "isAirplaneModeAllowed"

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get57(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "restricted by MDM "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v2, -0x1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v4, v5, :cond_c

    const v2, 0x10407b0

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get53()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v2, 0x1040878

    :cond_8
    :goto_1
    const/4 v1, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v1, 0x10407b3

    :goto_2
    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get53()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v1, 0x1040879

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v9}, Lcom/android/server/policy/GlobalActions;->-set12(Lcom/android/server/policy/GlobalActions;Z)Z

    :cond_9
    const/4 v0, -0x1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v0, 0x10407b5

    :goto_3
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_a
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v4

    sget-object v5, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v4, v5, :cond_12

    :cond_b
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, p0, v2, v1, v0}, Lcom/android/server/policy/GlobalActions;->-wrap16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    :goto_4
    return-void

    :cond_c
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v2, 0x10407b1

    goto :goto_1

    :cond_d
    const v2, 0x1040143

    goto :goto_1

    :cond_e
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-nez v4, :cond_f

    const v1, 0x10407b7

    goto :goto_2

    :cond_f
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v1, 0x104087b

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v9}, Lcom/android/server/policy/GlobalActions;->-set11(Lcom/android/server/policy/GlobalActions;Z)Z

    goto :goto_2

    :cond_10
    const v1, 0x10407b2

    goto :goto_2

    :cond_11
    const v0, 0x10407b4

    goto :goto_3

    :cond_12
    const-string/jumbo v4, "americano"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get54()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "mocha"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get54()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    goto :goto_4
.end method

.method onToggle(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set13(Lcom/android/server/policy/GlobalActions;Z)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirplaneModeOn : onToggle : changeAirplaneModeSystemSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2, p1}, Lcom/android/server/policy/GlobalActions;->-wrap14(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "lock"

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
