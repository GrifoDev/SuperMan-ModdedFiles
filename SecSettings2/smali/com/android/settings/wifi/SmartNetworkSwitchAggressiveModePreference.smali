.class public Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference;
.super Landroid/preference/CheckBoxPreference;
.source "SmartNetworkSwitchAggressiveModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference$OnClickListener;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference;->mListener:Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference;->mListener:Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/wifi/SmartNetworkSwitchAggressiveModePreference;)V

    :cond_0
    return-void
.end method
