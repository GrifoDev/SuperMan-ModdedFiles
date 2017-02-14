.class public Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;
.super Landroid/preference/Preference;
.source "AvoidRootPreference.java"


# instance fields
.field private badge:Landroid/widget/TextView;

.field private showRedIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const-string/jumbo v0, "AvoidRootPreference"

    const-string/jumbo v1, "onBindView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f11016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->badge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->badge:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setAvoidRootVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->showRedIcon:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->notifyChanged()V

    return-void
.end method
