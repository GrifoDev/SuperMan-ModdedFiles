.class public Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;
.super Landroid/os/Handler;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateNotification;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRE_SCREEN_CHECKER:I = 0x1

.field public static final SCREEN_DOWN:I = 0x1

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final SCREEN_UP:I = 0x2

.field private static final STATE_MODE_CALL:I = 0x2

.field private static final STATE_MODE_IDLE:I = 0x0

.field private static final STATE_MODE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TurnOverLighting"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

.field private mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

.field private mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

.field private mScreenState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    return-void
.end method

.method private stopTurnOverLightingDelayed()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTurnOverLightingInternal()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->cancel()V

    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    invoke-interface {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onIdle(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getScreenState()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-interface {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onScreenChanged(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setTurnOverLightingListener(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-void
.end method

.method public startNotificationLighting()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onNotification()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    :goto_0
    :pswitch_0
    const-string/jumbo v1, "TurnOverLighting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNotificationLighting: mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v3}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    return-void

    :pswitch_1
    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startRingingLighting()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onRinging()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    return-void
.end method

.method public stopTurnOverLighting()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    return-void
.end method
