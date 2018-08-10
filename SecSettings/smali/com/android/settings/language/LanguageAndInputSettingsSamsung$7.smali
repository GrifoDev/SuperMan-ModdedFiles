.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;
.super Ljava/lang/Object;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateUserDictionaryPreference(Landroid/support/v7/preference/SecPreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/util/TreeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iput-object p2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->val$localeSet:Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-gt v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "locale"

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-class v6, Lcom/android/settings/UserDictionarySettings;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v7

    :cond_1
    const-class v6, Lcom/android/settings/inputmethod/UserDictionaryList;

    goto :goto_0
.end method
