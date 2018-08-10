.class public Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;
.super Landroid/widget/LinearLayout;
.source "SharedDeviceKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$1;,
        Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SharedDeviceKeyguardScrimView"

.field private static final TOLERABLE_SCRIM_VISIBLE_TIME_MILLIS:I = 0x1388


# instance fields
.field public isScrimVisible:Z

.field mHandler:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mThread:Landroid/os/HandlerThread;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mHandler:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$1;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->isScrimVisible:Z

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->createScrim()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SharedDeviceKeyguardScrimView"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mHandler:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;

    return-void
.end method

.method private createScrim()V
    .locals 8

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setBackgroundColor(I)V

    const v4, -0x7ffff700

    const/4 v6, -0x1

    const/16 v7, 0x969

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x969

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string/jumbo v1, "SharedDeviceKeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public hideScrim()V
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$3;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSharedDeviceKeyguardServiceRunning(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showScrim(Z)V
    .locals 2

    const-string/jumbo v0, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v1, "show scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$2;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
