.class Lcom/android/server/audio/AudioService$RampInPreset;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RampInPreset"
.end annotation


# static fields
.field private static final RAMP_IN_ABSOLUTE_MUTE_MS:I = 0x3e8

.field private static final RAMP_IN_DURATION_MS:I = 0xbb8

.field private static final RAMP_IN_TIMEOUT_MS:I = 0x2710


# instance fields
.field isCustomPreset:Z

.field mPresetName:Ljava/lang/String;

.field mRampDurationMs:I

.field mRampMuteMs:I

.field mRampTimeOutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampDurationMs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampMuteMs:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampTimeOutMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->isCustomPreset:Z

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mPresetName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampDurationMs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampMuteMs:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampTimeOutMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->isCustomPreset:Z

    iput-object p1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mPresetName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampDurationMs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampMuteMs:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampTimeOutMs:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->isCustomPreset:Z

    iput-object p1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mPresetName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampDurationMs:I

    iput p3, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampMuteMs:I

    iput p4, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampTimeOutMs:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$RampInPreset;->isCustomPreset:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRampConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mPresetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";duration_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";abs_mute_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampMuteMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";timeout_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mRampTimeOutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRampConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$RampInPreset;->mPresetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
