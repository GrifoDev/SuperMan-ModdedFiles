.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;
.super Ljava/lang/Object;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iput-object p2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v4}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get5(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iget-object v5, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->val$activity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap10(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    const-string/jumbo v5, "textservices"

    invoke-static {v4, v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.sec.android.inputmethod"

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    const-string/jumbo v5, "spellcheckers_settings"

    invoke-virtual {v4, v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v4}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
