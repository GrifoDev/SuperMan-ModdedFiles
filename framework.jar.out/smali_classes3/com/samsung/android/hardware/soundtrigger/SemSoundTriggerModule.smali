.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
.super Ljava/lang/Object;
.source "SemSoundTriggerModule.java"


# static fields
.field private static final EVENT_RECOGNITION:I = 0x1

.field private static final EVENT_SERVICE_DIED:I = 0x2

.field private static final EVENT_SERVICE_STATE_CHANGE:I = 0x4

.field private static final EVENT_SOUNDMODEL:I = 0x3


# instance fields
.field private instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;


# direct methods
.method constructor <init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule$1;-><init>(Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;)V

    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    invoke-direct {v1, p1, v0, p3}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->detach()V

    :cond_0
    return-void
.end method

.method public loadSoundModel(Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;[I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    iget-object v1, p1, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;->instance:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {v0, v1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;[I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public startRecognition(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    iget-object v1, p2, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;->instance:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public stopRecognition(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->stopRecognition(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public unloadSoundModel(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;->instance:Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->unloadSoundModel(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
