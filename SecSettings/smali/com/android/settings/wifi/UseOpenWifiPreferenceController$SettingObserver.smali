.class Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "UseOpenWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->-wrap0(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->-get0(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->NETWORK_RECOMMENDATIONS_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
