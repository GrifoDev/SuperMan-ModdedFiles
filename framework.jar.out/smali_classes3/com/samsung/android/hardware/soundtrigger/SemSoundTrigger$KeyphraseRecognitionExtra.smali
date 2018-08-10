.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyphraseRecognitionExtra"
.end annotation


# instance fields
.field public final coarseConfidenceLevel:I

.field public final confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

.field public final id:I

.field instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

.field public final recognitionModes:I


# direct methods
.method public constructor <init>(III[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p4

    new-array v1, v2, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, p4, v0

    iget v3, v3, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->userId:I

    aget-object v4, p4, v0

    iget v4, v4, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v2, v3, v4}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-direct {v2, p1, p2, p3, v1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iput p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->id:I

    iput p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    iput p3, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    iput-object p4, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    return-void
.end method
