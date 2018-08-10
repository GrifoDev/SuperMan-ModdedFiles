.class public Lcom/android/settings/deviceinfo/SafetyLegalPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "SafetyLegalPreferenceController.java"


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "safetylegal"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo v0, "ro.url.safetylegal"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
