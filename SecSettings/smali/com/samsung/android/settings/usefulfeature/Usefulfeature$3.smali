.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11

    const v6, 0x7f121b3e

    const v7, 0x7f121b3d

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "access_control_enabled"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ne v4, v10, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121b37

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_1

    if-ne v4, v10, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121466

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_2

    if-ne v4, v10, :cond_15

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121469

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_3

    if-ne v4, v10, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap6()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "surface_palm_swipe"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_8

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const v5, 0x7f121b37

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_a

    move v5, v6

    :goto_7
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_a
    move v5, v7

    goto :goto_7

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121465

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_pick_up"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v2, 0x1

    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_f

    move v5, v6

    :goto_9
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f121466

    goto :goto_9

    :cond_10
    const v5, 0x7f121465

    goto :goto_9

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_12

    move v5, v6

    :goto_a
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_12
    move v5, v7

    goto :goto_a

    :cond_13
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121468

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_14
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_pick_up_to_call_out"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_16

    const/4 v3, 0x1

    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_17

    move v5, v6

    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_16
    const/4 v3, 0x0

    goto :goto_b

    :cond_17
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_18

    const v5, 0x7f121469

    goto :goto_c

    :cond_18
    const v5, 0x7f121468

    goto :goto_c

    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_1a

    move v5, v6

    :goto_d
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_1a
    move v5, v7

    goto :goto_d

    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_merged_mute_pause"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v0, 0x1

    :goto_e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v0, :cond_1e

    :goto_f
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1d
    const/4 v0, 0x0

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap6()I

    move-result v6

    goto :goto_f

    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v0, :cond_20

    :goto_10
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_20
    move v6, v7

    goto :goto_10

    :cond_21
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4
.end method
