.class public Landroid/media/audiofx/SemDolbyAudioEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "SemDolbyAudioEffect.java"


# static fields
.field private static final DOLBY_ENABLED:Z

.field public static final EFFECT_PARAM_EFF_ENAB:I = 0x13

.field public static final EFFECT_PARAM_PROFILE:I = 0x0

.field public static final EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

.field public static final PROFILE_AUTO:I = 0x0

.field public static final PROFILE_COUNT:I = 0x4

.field public static final PROFILE_MOVIE:I = 0x1

.field public static final PROFILE_MUSIC:I = 0x2

.field public static final PROFILE_VOICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemDolbyAudioEffect"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_DOLBY_AUDIO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/media/audiofx/SemDolbyAudioEffect;->DOLBY_ENABLED:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_DOLBY_AUDIO_PROCESSING:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemDolbyAudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    if-nez p2, :cond_0

    const-string/jumbo v0, "SemDolbyAudioEffect"

    const-string/jumbo v1, "WARNING: attaching a SemDolbyAudioEffect to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Landroid/media/audiofx/SemDolbyAudioEffect;->DOLBY_ENABLED:Z

    return v0
.end method


# virtual methods
.method public getProfile()I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [I

    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    aget v1, v0, v2

    return v1
.end method

.method public isProfileEnabled()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v3, 0x13

    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    aget v3, v0, v2

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setProfile(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setProfileEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SemDolbyAudioEffect;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SemDolbyAudioEffect;->checkStatus(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
