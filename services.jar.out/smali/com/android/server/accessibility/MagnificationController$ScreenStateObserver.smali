.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_SCREEN_STATE_CHANGE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/MagnificationController;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->handleOnScreenStateChange()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;-><init>(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleOnScreenStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
