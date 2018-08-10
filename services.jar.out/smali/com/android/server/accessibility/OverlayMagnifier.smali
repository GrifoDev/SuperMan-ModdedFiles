.class public final Lcom/android/server/accessibility/OverlayMagnifier;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/OverlayMagnifier$1;,
        Lcom/android/server/accessibility/OverlayMagnifier$2;,
        Lcom/android/server/accessibility/OverlayMagnifier$3;,
        Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MY_PID:I

.field private static final SIZE_LARGE:I = 0x2

.field private static final SIZE_MEDIUM:I = 0x1

.field private static final SIZE_SMALL:I


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mHeight:I

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private mMagnifierScale:I

.field private mMagnifierSize:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWidth:I

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/OverlayMagnifier;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iput v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    iput-boolean v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/OverlayMagnifier$2;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$3;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$3;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v4, "display"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    new-instance v4, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;-><init>(Lcom/android/server/accessibility/OverlayMagnifier;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iput-object p2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v4, v3, v2, v5}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->setMagnificationSettings()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideMagnifier()V
    .locals 3

    sget-object v1, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "hideMagnifier()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->stopMagnifier()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setMagnificationSettings()V
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    sget-object v4, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMagnificationSettings: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    if-eq v4, v2, :cond_0

    const/4 v0, 0x1

    iput v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    :cond_0
    iget v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    if-eq v4, v3, :cond_1

    const/4 v0, 0x1

    iput v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierSize:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget v5, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget v6, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    iget v7, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnifierScale:I

    int-to-float v7, v7

    invoke-interface {v4, v5, v6, v7}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mWidth:I

    iget-object v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mHeight:I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    iget-boolean v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mCoverState:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void

    :pswitch_1
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: HoverEnter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->isMagnifying()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mPolicy:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onMotionEvent: spec is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/accessibility/OverlayMagnifier;->hideMagnifier()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
