.class public Lcom/samsung/android/media/SemHiddenSoundManager;
.super Ljava/lang/Object;
.source "SemHiddenSoundManager.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final PACKAGE_ALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final VOLUME_DEVICE:I = -0x3

.field public static final VOLUME_FULL:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "SemHiddenSoundManager"

    sput-object v0, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaybackRecorderPackage()I
    .locals 5

    .prologue
    .line 108
    const-string/jumbo v3, "audioParam;hiddensound_pid"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "strPid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "pid":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid PID"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getPlaybackRecorderVersion()I
    .locals 5

    .prologue
    .line 46
    const-string/jumbo v3, "audioParam;hiddensound_version"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "version":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Dont support"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v3, -0x1

    return v3

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 55
    .local v1, "ver":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid Version"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getPlaybackRecorderVolume()I
    .locals 5

    .prologue
    .line 79
    const-string/jumbo v3, "audioParam;hiddensound_volume"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "strVolume":Ljava/lang/String;
    const/4 v2, -0x1

    .line 83
    .local v2, "volume":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    return v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/samsung/android/media/SemHiddenSoundManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid volume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v3, -0x1

    return v3
.end method

.method public static setPlaybackRecorderPackage(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;hiddensound_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public static setPlaybackRecorderVolume(I)V
    .locals 2
    .param p0, "volume"    # I

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;hiddensound_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 68
    return-void
.end method
