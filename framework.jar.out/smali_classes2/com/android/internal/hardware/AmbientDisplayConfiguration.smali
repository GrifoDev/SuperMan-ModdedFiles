.class public Lcom/android/internal/hardware/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ambientDisplayAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private boolSetting(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private boolSettingDefaultOff(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private boolSettingDefaultOn(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public alwaysOnAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public alwaysOnEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "doze_always_on"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ambientDisplayComponent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public available()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public doubleTapSensorType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pulseOnDoubleTapAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseOnDoubleTapEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseOnNotificationAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    return v0
.end method

.method public pulseOnNotificationEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseOnPickupAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseOnPickupEnabled(I)Z
    .locals 1

    const-string/jumbo v0, "doze_pulse_on_pick_up"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
