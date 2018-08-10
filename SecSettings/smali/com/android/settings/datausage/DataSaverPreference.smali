.class public Lcom/android/settings/datausage/DataSaverPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method


# virtual methods
.method public getDataSaverBackend()Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f121b3e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverPreference;->setSummary(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_0
    const v0, 0x7f121b3d

    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onDetached()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
