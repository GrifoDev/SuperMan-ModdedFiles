.class public Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;
.super Ljava/lang/Object;
.source "SoundTriggerModuleWrapper.java"


# instance fields
.field private instance:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method public constructor <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    :cond_0
    return-void
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;[I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public stopRecognition(I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public unloadSoundModel(I)I
    .locals 1

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModuleWrapper;->instance:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method
