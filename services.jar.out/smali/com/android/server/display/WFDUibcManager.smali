.class public Lcom/android/server/display/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WFDUibcManager$1;,
        Lcom/android/server/display/WFDUibcManager$EventDispatcher;,
        Lcom/android/server/display/WFDUibcManager$EventQueue;,
        Lcom/android/server/display/WFDUibcManager$Keyevnt_arrC;,
        Lcom/android/server/display/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String;

.field private final KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String;

.field private final PRESENTATION_START_ACTION:Ljava/lang/String;

.field private final PRESENTATION_STOP_ACTION:Ljava/lang/String;

.field private final SEC_UIBC_GET_FOCUS:Ljava/lang/String;

.field private final SLIDESHOW_START_ACTION:Ljava/lang/String;

.field private final SLIDESHOW_STOP_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_START_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsPortraitMode:Z

.field private mIsSlideShowVideoPlaying:Z

.field private mKDDIServiceConnected:Z

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mPresentDisplayID:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSinkUIBCVersion:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WFDUibcManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/WFDUibcManager;->mKDDIServiceConnected:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WFDUibcManager;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WFDUibcManager;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WFDUibcManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WFDUibcManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WFDUibcManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WFDUibcManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mKDDIServiceConnected:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WFDUibcManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/WFDUibcManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mCoupleShot:Z

    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_X:F

    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_Y:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/WFDUibcManager;->mPresentDisplayID:I

    iput v1, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    iput-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mKDDIServiceConnected:Z

    const-string/jumbo v0, "com.samsung.android.video.START_PRESENTATION"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->VIDEOPLAY_START_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.video.END_PRESENTATION"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.gallery.action.slideshow.start"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SLIDESHOW_START_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.gallery.action.slideshow.finish"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SLIDESHOW_STOP_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->PRESENTATION_START_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->PRESENTATION_STOP_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->SEC_UIBC_GET_FOCUS:Ljava/lang/String;

    const-string/jumbo v0, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WFDUibcManager$1;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/display/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "WFDUibcManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mCoupleShot:Z

    return-void
.end method

.method public setPortraitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    return-void
.end method

.method public setSinkUIBCVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mSinkUIBCVersion:I

    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_X:F

    iput p2, p0, Lcom/android/server/display/WFDUibcManager;->mNegRs_Y:F

    return-void
.end method

.method public start()Z
    .locals 2

    new-instance v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 2

    new-instance v0, Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/android/server/display/WFDUibcManager$EventDispatcher;-><init>(Lcom/android/server/display/WFDUibcManager;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "Uibc Manager start with sessionId"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/display/WFDUibcManager;->mKDDIServiceConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_1

    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-boolean v3, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->running:Z

    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-object v4, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    return v5

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-boolean v4, v1, Lcom/android/server/display/WFDUibcManager$EventDispatcher;->running:Z

    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcher:Lcom/android/server/display/WFDUibcManager$EventDispatcher;

    iput-object v3, p0, Lcom/android/server/display/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iput-boolean v4, p0, Lcom/android/server/display/WFDUibcManager;->mIsPortraitMode:Z

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
