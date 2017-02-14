.class Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;
.super Landroid/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
