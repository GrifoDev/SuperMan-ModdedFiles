.class Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DateTimeSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    const-string/jumbo v5, "auto_time"

    invoke-static {v2, v5}, Lcom/samsung/android/settings/DateTimeSettings;->-wrap0(Lcom/samsung/android/settings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SettingsObserver onChange getAutoState() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get0(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-get1(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/DateTimeSettings;->-wrap1(Lcom/samsung/android/settings/DateTimeSettings;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method
