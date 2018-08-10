.class Lcom/samsung/android/settings/display/SecDisplaySettings$30;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iput p2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->val$menu:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_night_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$30;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120175 -> :sswitch_0
        0x7f1212e8 -> :sswitch_1
    .end sparse-switch
.end method
