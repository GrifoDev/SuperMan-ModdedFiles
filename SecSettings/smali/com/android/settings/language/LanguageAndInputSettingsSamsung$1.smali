.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;
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

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-get2(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-static {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
