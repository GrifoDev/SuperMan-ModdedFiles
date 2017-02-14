.class public Lcom/android/settings/datausage/DataSaverPreference;
.super Landroid/preference/Preference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method


# virtual methods
.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0b18ae

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_0
    const v0, 0x7f0b18af

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
