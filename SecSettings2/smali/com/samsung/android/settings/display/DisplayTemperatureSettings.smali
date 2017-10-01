.class public Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DisplayTemperatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;,
        Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;
    }
.end annotation


# instance fields
.field private blue_stored:I

.field private green_stored:I

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field private mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

.field private mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

.field private mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

.field private red_stored:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$2;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$3;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;-><init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "diplay_temperature_red"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    const-string/jumbo v0, "diplay_temperature_green"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    const-string/jumbo v0, "diplay_temperature_blue"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0b0a97

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->red_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->blue_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->green_stored:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceRed:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceGreen:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->mDTSeekBarPreferenceBlue:Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string/jumbo v0, "DisplayTemperatureSettings"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method
