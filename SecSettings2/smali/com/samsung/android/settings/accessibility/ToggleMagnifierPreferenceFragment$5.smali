.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 10

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isMagnifierWindowExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "is_enabled"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v5, "dialog_content"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "MGWI"

    const-string/jumbo v9, "Accessibility settings"

    invoke-static {v5, v7, v8, v9}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "air_button_onoff"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "finger_magnifier"

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100248

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/16 v8, 0x3e8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100248

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_0

    :cond_3
    move v5, v6

    goto :goto_1
.end method
