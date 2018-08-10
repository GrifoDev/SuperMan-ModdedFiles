.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenMode:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method static synthetic -get0(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return v0
.end method

.method static synthetic -get2(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic -get4(Landroid/service/dreams/DreamService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method static synthetic -set0(Landroid/service/dreams/DreamService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/service/dreams/DreamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/service/dreams/DreamService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    iput-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    iput v2, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iput-boolean v2, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    return-void
.end method

.method private applyFlags(III)I
    .locals 2

    not-int v0, p3

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .locals 2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private applyWindowFlags(II)V
    .locals 3

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, Landroid/service/dreams/DreamService;->applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private final attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 12

    const/16 v11, 0x7e7

    const/4 v10, -0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() called when already attached with token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after dream already finished"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iput-boolean p2, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Only doze dreams can be windowless"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    if-nez v3, :cond_6

    new-instance v3, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x1000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/view/Window;->setFormat(I)V

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Attaching window token: %s to window of type %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const v3, 0x10302f1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x400

    :goto_1
    const v7, 0x490101

    or-int/2addr v7, v3

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v3, :cond_8

    const/16 v3, 0x80

    :goto_2
    or-int/2addr v3, v7

    or-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v6, -0x80000000

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const-string/jumbo v6, "dream"

    invoke-virtual {v3, v9, p1, v6, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v3, :cond_9

    move v3, v5

    :goto_3
    invoke-direct {p0, v3, v5}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v3, :cond_5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v10}, Landroid/view/Window;->setFormat(I)V

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    const/16 v3, 0x96a

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget-object v3, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v3, 0x1600000

    const/high16 v4, 0x1600000

    invoke-direct {p0, v3, v4}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    iget-object v3, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/dreams/DreamService$1;

    invoke-direct {v4, p0, p3}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    move v3, v4

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto/16 :goto_2

    :cond_9
    move v3, v4

    goto :goto_3

    :catch_0
    move-exception v1

    iget-object v3, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "attach() called after window token already removed, dream will finish soon"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private final detach()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mStarted:Z

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "detach(): Removing window from window manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Dream"

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iput-boolean v5, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    :cond_4
    return-void
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return p2

    :cond_0
    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_1
.end method

.method private getWindowFlagValue(IZ)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-nez v1, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private updateDoze()V
    .locals 6

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    iget v3, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    iget v4, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    iget v5, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/service/dreams/IDreamManager;->semStartDozing(Landroid/os/IBinder;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private wakeUp(Z)V
    .locals 4

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wakeUp(): fromSystem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mWaking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mWaking:Z

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onWakeUp()V

    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WakeUp was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public canDoze()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on back key"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    return v2

    :cond_3
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isWindowless()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finish(): mFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    if-nez v1, :cond_1

    iput-boolean v4, p0, Landroid/service/dreams/DreamService;->mFinished:Z

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Finish was called before the dream was attached."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->stopSelf()V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDozeScreenBrightness()I
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    return v0
.end method

.method public getDozeScreenState()I
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isWindowless()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    return-object v0
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/service/dreams/DreamService;->detach()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWakeUp()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semSetDozeScreenBrightness(II)V
    .locals 2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-static {p2}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p2

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v1, p2, :cond_1

    iput p2, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    const/4 v0, 0x1

    :cond_1
    iget v1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenMode:I

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_3
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mDebug:Z

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/service/dreams/DreamService;->clampAbsoluteBrightness(I)I

    move-result p1

    :cond_0
    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenBrightness:I

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_1
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1

    iget v0, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/service/dreams/DreamService;->mDozeScreenState:I

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 2

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    const/16 v0, 0x400

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mFullscreen:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x400

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mInteractive:Z

    return-void
.end method

.method public setLowProfile(Z)V
    .locals 2

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mLowProfile:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applySystemUiVisibilityFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScreenBright(Z)V
    .locals 2

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    const/16 v0, 0x80

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mScreenBright:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/service/dreams/DreamService;->applyWindowFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWindowless(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/service/dreams/DreamService;->mWindowless:Z

    return-void
.end method

.method public startDozing()V
    .locals 1

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mCanDoze:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    invoke-direct {p0}, Landroid/service/dreams/DreamService;->updateDoze()V

    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 3

    iget-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/dreams/DreamService;->mDozing:Z

    :try_start_0
    iget-object v1, p0, Landroid/service/dreams/DreamService;->mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v2, p0, Landroid/service/dreams/DreamService;->mWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final wakeUp()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/service/dreams/DreamService;->wakeUp(Z)V

    return-void
.end method
