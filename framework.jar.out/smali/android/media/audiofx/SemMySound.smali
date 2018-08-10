.class public Landroid/media/audiofx/SemMySound;
.super Landroid/media/audiofx/AudioEffect;
.source "SemMySound.java"


# static fields
.field public static final EFFECT_TYPE_MYSOUND:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemMySound"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "d2bc05e0-50b0-11e2-bcfd-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemMySound;->EFFECT_TYPE_MYSOUND:Ljava/util/UUID;

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

    sget-object v0, Landroid/media/audiofx/SemMySound;->EFFECT_TYPE_MYSOUND:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemMySound;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const-string/jumbo v0, "SemMySound"

    const-string/jumbo v1, "init SemMySound module"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string/jumbo v0, "SemMySound"

    const-string/jumbo v1, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public setGain([I[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/16 v9, 0x28

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v4, 0xc

    new-array v1, v4, [B

    const/4 v4, 0x1

    new-array v3, v4, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_2

    aget v4, p1, v0

    if-lt v4, v7, :cond_0

    aget v4, p1, v0

    if-le v4, v9, :cond_1

    :cond_0
    const/4 v2, -0x4

    :cond_1
    aget v4, p1, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_5

    aget v4, p2, v0

    if-lt v4, v7, :cond_3

    aget v4, p2, v0

    if-le v4, v9, :cond_4

    :cond_3
    const/4 v2, -0x4

    :cond_4
    add-int/lit8 v4, v0, 0x6

    aget v5, p2, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    aput-byte v6, v3, v6

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SemMySound;->setParameter([B[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/SemMySound;->checkStatus(I)V

    return v2
.end method

.method public setMySoundGain([I[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/16 v9, 0x28

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v4, 0xc

    new-array v1, v4, [B

    const/4 v4, 0x1

    new-array v3, v4, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_2

    aget v4, p1, v0

    if-lt v4, v7, :cond_0

    aget v4, p1, v0

    if-le v4, v9, :cond_1

    :cond_0
    const/4 v2, -0x4

    :cond_1
    aget v4, p1, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_5

    aget v4, p2, v0

    if-lt v4, v7, :cond_3

    aget v4, p2, v0

    if-le v4, v9, :cond_4

    :cond_3
    const/4 v2, -0x4

    :cond_4
    add-int/lit8 v4, v0, 0x6

    aget v5, p2, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    aput-byte v6, v3, v6

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/SemMySound;->setParameter([B[B)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/audiofx/SemMySound;->checkStatus(I)V

    return v2
.end method
