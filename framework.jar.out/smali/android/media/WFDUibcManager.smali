.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$1;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$Keyevnt_arrC;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private final PRESENTATION_START_ACTION:Ljava/lang/String;

.field private final PRESENTATION_STOP_ACTION:Ljava/lang/String;

.field private final SEC_UIBC_GET_FOCUS:Ljava/lang/String;

.field private final SLIDESHOW_START_ACTION:Ljava/lang/String;

.field private final SLIDESHOW_STOP_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_START_ACTION:Ljava/lang/String;

.field private final VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsPortraitMode:Z

.field private mIsSlideShowVideoPlaying:Z

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPresentDisplayID:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method

.method static synthetic -get3(Landroid/media/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mIsPortraitMode:Z

    return v0
.end method

.method static synthetic -get4(Landroid/media/WFDUibcManager;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return v0
.end method

.method static synthetic -get5(Landroid/media/WFDUibcManager;)F
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic -get6(Landroid/media/WFDUibcManager;)F
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic -get7(Landroid/media/WFDUibcManager;)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic -get8(Landroid/media/WFDUibcManager;)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/WFDUibcManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/WFDUibcManager;I)I
    .locals 0

    iput p1, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/WFDUibcManager;I)I
    .locals 0

    iput p1, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    .line 67
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 74
    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    .line 78
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 80
    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 81
    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 83
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mIsSlideShowVideoPlaying:Z

    .line 84
    iput-boolean v1, p0, Landroid/media/WFDUibcManager;->mIsPortraitMode:Z

    .line 86
    const-string/jumbo v0, "com.samsung.android.video.START_PRESENTATION"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->VIDEOPLAY_START_ACTION:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "com.samsung.android.video.END_PRESENTATION"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->VIDEOPLAY_STOP_ACTION:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "com.samsung.android.gallery.action.slideshow.start"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SLIDESHOW_START_ACTION:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "com.samsung.android.gallery.action.slideshow.finish"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SLIDESHOW_STOP_ACTION:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->PRESENTATION_START_ACTION:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->PRESENTATION_STOP_ACTION:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "com.samsung.intent.action.SEC_UIBC_GET_FOCUS"

    iput-object v0, p0, Landroid/media/WFDUibcManager;->SEC_UIBC_GET_FOCUS:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    new-instance v0, Landroid/media/WFDUibcManager$1;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    iput-object p1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.video.START_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.video.END_PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.gallery.action.slideshow.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "WFDUibcManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/media/WFDUibcManager$2;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$2;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 136
    return-void
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .param p1, "isCoupleShot"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    .line 257
    return-void
.end method

.method public setPortraitMode(Z)V
    .locals 0
    .param p1, "isPortraitMode"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mIsPortraitMode:Z

    .line 262
    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0
    .param p1, "negRs_X"    # F
    .param p2, "negRs_Y"    # F

    .prologue
    .line 252
    iput p1, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    .line 253
    iput p2, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    .line 251
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 210
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 211
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 215
    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 2
    .param p1, "mSessionId"    # I

    .prologue
    .line 165
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 168
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 170
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 173
    const-string/jumbo v0, "WFDUibcManager"

    const-string/jumbo v1, "Uibc Manager start with sessionId"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 225
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 226
    .local v1, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    :cond_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v2, :cond_1

    return v6

    .line 234
    :cond_1
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v4, v2, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 235
    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    .line 237
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Going to stop Uibc manager"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Uibc manager stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput-object v5, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 246
    iput-object v5, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 248
    return v6

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Error joining event dispatcher thread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop(I)Z
    .locals 5
    .param p1, "mSessionId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 184
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    return v4

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 187
    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    .line 196
    iput-object v3, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 198
    return v4

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "WFDUibcManager"

    const-string/jumbo v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
