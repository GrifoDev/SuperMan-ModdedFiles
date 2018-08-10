.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LanguageAndInputSettingsSamsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;


# direct methods
.method public constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap9(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get9(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get3(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get9(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get2(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get2(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get2(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v2}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "handwriting_language"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v2}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get3(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
