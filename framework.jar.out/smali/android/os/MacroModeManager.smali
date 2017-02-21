.class public Landroid/os/MacroModeManager;
.super Ljava/lang/Object;
.source "MacroModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MacroModeManager$MacroModeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final MACRO_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MacroModeManager"

.field private static final bGameTunerEnabled:Z = true


# instance fields
.field private mMacroChannel:Landroid/view/InputChannel;

.field private mMacroCounter:Ljava/lang/Integer;

.field private mMacroHandler:Landroid/os/Handler;

.field private mMacroJSON:Lorg/json/JSONObject;

.field private mMacroMode:Landroid/os/MacroModeManager$MacroModeInputEventReceiver;

.field private mRecordingState:Z

.field private mSpecificEvent:Lorg/json/JSONObject;


# direct methods
.method static synthetic -get0(Landroid/os/MacroModeManager;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic -get2(Landroid/os/MacroModeManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/MacroModeManager;->mRecordingState:Z

    return v0
.end method

.method static synthetic -get3(Landroid/os/MacroModeManager;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/MacroModeManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic -set1(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic -set2(Landroid/os/MacroModeManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/MacroModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/MacroModeManager;->flushRecording(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    return-void
.end method

.method private disposeMacroChannel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v1, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    :cond_0
    return-void
.end method

.method private flushRecording(Z)V
    .locals 6

    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "macroModeEvents"

    iget-object v4, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "stopRecording"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final validateNotAppThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public sendPointerAsync(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/MacroModeManager;->validateNotAppThread()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setRecordingState(ZLandroid/os/Handler;)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/os/MacroModeManager;->mRecordingState:Z

    iput-object p2, p0, Landroid/os/MacroModeManager;->mMacroHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const-string/jumbo v2, "MacroModeTapper"

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    new-instance v1, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;

    iget-object v2, p0, Landroid/os/MacroModeManager;->mMacroChannel:Landroid/view/InputChannel;

    invoke-direct {v1, p0, v2}, Landroid/os/MacroModeManager$MacroModeInputEventReceiver;-><init>(Landroid/os/MacroModeManager;Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/os/MacroModeManager;->mMacroMode:Landroid/os/MacroModeManager$MacroModeInputEventReceiver;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/os/MacroModeManager;->mMacroCounter:Ljava/lang/Integer;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    const-string/jumbo v2, "event"

    iget-object v3, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "MacroModeManager"

    const-string/jumbo v2, "Start Recording!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/os/MacroModeManager;->flushRecording(Z)V

    iput-object v2, p0, Landroid/os/MacroModeManager;->mMacroJSON:Lorg/json/JSONObject;

    iput-object v2, p0, Landroid/os/MacroModeManager;->mSpecificEvent:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/os/MacroModeManager;->disposeMacroChannel()V

    const-string/jumbo v1, "MacroModeManager"

    const-string/jumbo v2, "Stop Recording!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
