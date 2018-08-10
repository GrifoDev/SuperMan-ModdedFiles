.class Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

.field final synthetic val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->this$0:Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    iput-object p2, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v15, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v1, v15

    new-array v11, v1, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    const/4 v13, 0x0

    :goto_0
    array-length v1, v15

    if-ge v13, v1, :cond_1

    aget-object v1, v15, v13

    iget-object v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    new-array v12, v1, [Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    const/4 v14, 0x0

    :goto_1
    aget-object v1, v15, v13

    iget-object v1, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    if-ge v14, v1, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;

    aget-object v2, v15, v13

    iget-object v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v2, v2, v14

    iget v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    aget-object v3, v15, v13

    iget-object v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, v3, v14

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;-><init>(II)V

    aput-object v1, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;

    aget-object v2, v15, v13

    iget v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    aget-object v3, v15, v13

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    aget-object v4, v15, v13

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;)V

    aput-object v1, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    move-object/from16 v16, v0

    new-instance v1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    move-object/from16 v0, p1

    iget v5, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    :goto_2
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    move-object/from16 v16, v0

    new-instance v1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->soundModelHandle:I

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureAvailable:Z

    move-object/from16 v0, p1

    iget v5, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureSession:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureDelayMs:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->capturePreambleMs:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->triggerInData:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->captureFormat:Landroid/media/AudioFormat;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->data:[B

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onRecognition(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;)V

    goto :goto_2
.end method

.method public onServiceDied()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v0}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceDied()V

    return-void
.end method

.method public onServiceStateChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;->val$listener:Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;->onServiceStateChange(I)V

    return-void
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0

    return-void
.end method
