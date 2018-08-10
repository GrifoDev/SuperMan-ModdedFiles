.class Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;
.super Ljava/lang/Object;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateHardKeyboards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

.field final synthetic val$identifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method constructor <init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iput-object p2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;->this$0:Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;->val$identifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-static {v0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->-wrap8(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 v0, 0x1

    return v0
.end method
