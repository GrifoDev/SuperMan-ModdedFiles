.class public Lcom/android/settings/Settings$LedCoverCallerIDSettingsActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LedCoverCallerIDSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/Utils;->hasCoverLEDCallerID(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings$LedCoverCallerIDSettingsActivity;->finish()V

    :cond_0
    return-void
.end method
