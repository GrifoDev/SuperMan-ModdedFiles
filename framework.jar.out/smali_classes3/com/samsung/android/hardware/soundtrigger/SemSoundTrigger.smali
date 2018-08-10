.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;
    }
.end annotation


# static fields
.field public static final RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final SERVICE_STATE_DISABLED:I = 0x1

.field public static final SERVICE_STATE_ENABLED:I = 0x0

.field public static final STATUS_BAD_VALUE:I

.field public static final STATUS_DEAD_OBJECT:I

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I

.field public static final STATUS_NO_INIT:I

.field public static final STATUS_OK:I

.field public static final STATUS_PERMISSION_DENIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_PERMISSION_DENIED:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_NO_INIT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_BAD_VALUE:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_DEAD_OBJECT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_INVALID_OPERATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachModule(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static listModules(Ljava/util/ArrayList;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v18 .. v18}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    new-instance v1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;

    move-object/from16 v0, v16

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    move-object/from16 v0, v16

    iget v7, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    move-object/from16 v0, v16

    iget v8, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    move-object/from16 v0, v16

    iget v9, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    move-object/from16 v0, v16

    iget v10, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    move-object/from16 v0, v16

    iget-boolean v11, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    move-object/from16 v0, v16

    iget v12, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    move-object/from16 v0, v16

    iget-boolean v13, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    move-object/from16 v0, v16

    iget v14, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    move-object/from16 v0, v16

    iget-boolean v15, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    invoke-direct/range {v1 .. v15}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
