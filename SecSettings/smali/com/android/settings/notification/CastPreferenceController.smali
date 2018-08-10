.class public Lcom/android/settings/notification/CastPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "CastPreferenceController.java"


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_display"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
