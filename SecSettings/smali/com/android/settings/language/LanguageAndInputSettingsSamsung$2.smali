.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;
.super Landroid/database/ContentObserver;
.source "LanguageAndInputSettingsSamsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get8(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap0(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_keyboard_button"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get8(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
