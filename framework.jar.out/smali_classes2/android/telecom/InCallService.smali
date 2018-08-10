.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$1;,
        Landroid/telecom/InCallService$2;,
        Landroid/telecom/InCallService$InCallServiceBinder;,
        Landroid/telecom/InCallService$VideoCall;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "Telecom-InCallService"

.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_ON_CHANGE_IN_CONTENT:I = 0x64

.field private static final MSG_ON_CONNECTION_EVENT:I = 0x9

.field private static final MSG_ON_RTT_INITIATION_FAILURE:I = 0xb

.field private static final MSG_ON_RTT_UPGRADE_REQUEST:I = 0xa

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_SILENCE_RINGER:I = 0x8

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method static synthetic -get0(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .locals 0

    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/telecom/InCallService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_EVENT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "SET_IN_CALL_ADAPTER"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ADD_CALL"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "UPDATE_CALL"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "SET_POST_DIAL_WAIT"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "ON_CALL_AUDIO_STATE_CHANGED"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "BRING_TO_FOREGROUND"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "ON_CAN_ADD_CALL_CHANGED"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "SILENCE_RINGER"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "ON_CONNECTION_EVENT"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "ON_RTT_UPGRADE_REQUEST"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "ON_RTT_INITIATION_FAILURE"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "ON_CHANGE_IN_CONTENT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public final canAddCall()Z
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhone()Landroid/telecom/Phone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 0

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSilenceRinger()V
    .locals 0

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    iput-object v2, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final setAudioRoute(I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    :cond_0
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    :cond_0
    return-void
.end method
