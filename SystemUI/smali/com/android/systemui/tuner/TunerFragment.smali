.class public Lcom/android/systemui/tuner/TunerFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "TunerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;
    }
.end annotation


# static fields
.field private static final DEBUG_ONLY:[Ljava/lang/String;

.field private static final KEY_DOZE:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "doze"

    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "nav_bar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "picture_in_picture"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private alwaysOnAvailable()Z
    .locals 2

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f120996

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f16000f

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/TunerFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginPrefs;->hasPlugins(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "plugins"

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerFragment;->alwaysOnAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/TunerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "seen_tuner_warning"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "tuner_warning"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    invoke-direct {v2}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "tuner_warning"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return v2

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/TunerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/TunerFragment$1;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ad3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method
