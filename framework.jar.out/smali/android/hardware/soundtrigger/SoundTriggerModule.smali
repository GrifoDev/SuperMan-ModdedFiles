.class public Landroid/hardware/soundtrigger/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final EVENT_RECOGNITION:I = 0x1

.field private static final EVENT_SERVICE_DIED:I = 0x2

.field private static final EVENT_SERVICE_STATE_CHANGE:I = 0x4

.field private static final EVENT_SOUNDMODEL:I = 0x3


# instance fields
.field private mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field private mId:I

.field private mNativeContext:J


# direct methods
.method constructor <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "moduleId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 44
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_setup(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "module_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "module_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 187
    .local v3, "module":Landroid/hardware/soundtrigger/SoundTriggerModule;
    if-nez v3, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v0, v3, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 192
    .local v0, "delegate":Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->handler()Landroid/os/Handler;

    move-result-object v1

    .line 194
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 196
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public native detach()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_finalize()V

    .line 50
    return-void
.end method

.method public native loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
.end method

.method public native startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public native stopRecognition(I)I
.end method

.method public native unloadSoundModel(I)I
.end method
