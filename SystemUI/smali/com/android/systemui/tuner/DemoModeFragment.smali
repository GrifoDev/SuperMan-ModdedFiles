.class public Lcom/android/systemui/tuner/DemoModeFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "DemoModeFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/DemoModeFragment$1;
    }
.end annotation


# static fields
.field private static final STATUS_ICONS:[Ljava/lang/String;


# instance fields
.field private final mDemoModeObserver:Landroid/database/ContentObserver;

.field private mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mOnSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "bluetooth"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "location"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "zen"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "sync"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "tty"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "eri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "mute"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "speakerphone"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "managed_profile"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/systemui/tuner/DemoModeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/DemoModeFragment$1;-><init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private setGlobal(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startDemoMode()V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.demo"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "enter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "clock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hhmm"

    const-string/jumbo v3, "0600"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "network"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "wifi"

    const-string/jumbo v3, "show"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "mobile"

    const-string/jumbo v3, "show"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sims"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "nosim"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "level"

    const-string/jumbo v3, "4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "datatypel"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "fully"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "battery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "level"

    const-string/jumbo v3, "100"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "plugged"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    const-string/jumbo v5, "hide"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "command"

    const-string/jumbo v3, "notifications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "visible"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "sysui_tuner_demo_on"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    return-void
.end method

.method private stopDemoMode()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "command"

    const-string/jumbo v2, "exit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "sysui_tuner_demo_on"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    return-void
.end method

.method private updateDemoModeEnabled()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_demo_allowed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDemoModeOn()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_tuner_demo_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v3, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f0f04ec

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v3, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f0f04ed

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sysui_demo_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "sysui_tuner_demo_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/DemoModeFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xeb

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-string/jumbo v3, "sysui_demo_allowed"

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xec

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->startDemoMode()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    goto :goto_1

    :cond_5
    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method
