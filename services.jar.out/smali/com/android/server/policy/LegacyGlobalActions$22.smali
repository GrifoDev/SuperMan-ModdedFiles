.class Lcom/android/server/policy/LegacyGlobalActions$22;
.super Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Z

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

    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "LegacyGlobalActions"

    const-string/jumbo v5, "in onPress of AirplaneMode"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v5, "0002"

    const-string/jumbo v6, "AirplaneMode"

    invoke-static {v3, v5, v6}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get30(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap11(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v4, 0x10403cf

    invoke-static {v3, v4, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get33(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v4, 0x10403ce

    invoke-static {v3, v4, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap39(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_1
    const-string/jumbo v3, "CTC"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap7(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "DSNETWORK"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "DUALMODE_SETTING"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v5, "VZW"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/policy/LegacyGlobalActions;->-set12(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get34(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "usb"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    invoke-static {v5, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-set16(Lcom/android/server/policy/LegacyGlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get56(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get34(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get56(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get56(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v3

    :goto_0
    invoke-static {v5, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-set12(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v5, "isSettingsChangesAllowed"

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/LegacyGlobalActions;->-get55(Lcom/android/server/policy/LegacyGlobalActions;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v5, "isAirplaneModeAllowed"

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v6}, Lcom/android/server/policy/LegacyGlobalActions;->-get55(Lcom/android/server/policy/LegacyGlobalActions;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap19(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const-string/jumbo v3, "LegacyGlobalActions"

    const-string/jumbo v4, "restricted by MDM "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move v3, v4

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->mState:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    sget-object v4, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_c

    const v2, 0x10403ca

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v2, 0x1040a65

    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap15(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_e

    const v1, 0x10403c3

    :goto_2
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v1, 0x1040a64

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-set11(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    :cond_9
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get34(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_10

    const v0, 0x10403be

    :goto_3
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap13(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap4(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_a
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-result-object v3

    sget-object v4, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    if-ne v3, v4, :cond_11

    :cond_b
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, p0, v2, v1, v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap26(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;III)V

    :goto_4
    return-void

    :cond_c
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get34(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v2, 0x10403cb

    goto :goto_1

    :cond_d
    const v2, 0x10403c9

    goto :goto_1

    :cond_e
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap4(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_f

    const v1, 0x1040a62

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-set10(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    goto :goto_2

    :cond_f
    const v1, 0x10403c1

    goto :goto_2

    :cond_10
    const v0, 0x10403bd

    goto :goto_3

    :cond_11
    const-string/jumbo v3, "americano"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "mocha"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap21(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_4
.end method

.method onToggle(Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-set13(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LegacyGlobalActions"

    const-string/jumbo v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "LegacyGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirplaneModeAction : onToggle : changeAirplaneModeSystemSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$22;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2, p1}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap22(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
