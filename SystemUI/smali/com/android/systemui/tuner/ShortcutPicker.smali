.class public Lcom/android/systemui/tuner/ShortcutPicker;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ShortcutPicker.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;,
        Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

.field private final mSelectablePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/SelectablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_ShortcutPicker_5387(Ljava/lang/String;Lcom/android/systemui/tuner/SelectablePreference;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/tuner/SelectablePreference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/SelectablePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_ShortcutPicker_2792(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 6

    :try_start_0
    new-instance v3, Lcom/android/systemui/tuner/ShortcutParser;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v3}, Lcom/android/systemui/tuner/ShortcutParser;->getShortcuts()Ljava/util/List;

    move-result-object v2

    new-instance v0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;

    invoke-direct {v0, p1, p4}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)V

    iget-object v3, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v3, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4$1;

    invoke-direct {v3, p0, p1, p4, p2}, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p3, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_tuner_ShortcutPicker_3437(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, p4, v1}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sysui_keyguard_left"

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120758

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120759

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    new-instance v4, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v4, v2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v7, 0x7f120b4a

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    new-instance v7, Lcom/android/systemui/tuner/SelectablePreference;

    invoke-direct {v7, v2}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    const v8, 0x7f120755

    invoke-virtual {v7, v8}, Lcom/android/systemui/tuner/SelectablePreference;->setTitle(I)V

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    const v8, 0x7f0802ce

    invoke-virtual {v7, v8}, Lcom/android/systemui/tuner/SelectablePreference;->setIcon(I)V

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Landroid/content/pm/LauncherApps;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v7, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4$2;

    invoke-direct {v7, p0, v2, v6, v4}, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-virtual {v4, v10}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const v7, 0x7fffffff

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/tuner/ShortcutPicker;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    const-class v7, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/tuner/TunerService;

    iput-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    new-array v8, v9, [Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v7, p0, v8}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4;

    invoke-direct {v2, v0}, Lcom/android/systemui/tuner/-$Lambda$P4sL6m0pbIGTLjq79-rRihokyC4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
