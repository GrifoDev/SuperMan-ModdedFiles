.class public abstract Lcom/android/systemui/tuner/TunerPreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "TunerPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/systemui/tuner/CustomListPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_preference"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    goto :goto_0
.end method
