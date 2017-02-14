.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroid/preference/PreferenceGroup;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x101008e

    invoke-direct {p0, p1, p2, v4}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.android.settings.display.ScreenZoomSettings"

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setFragment(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
