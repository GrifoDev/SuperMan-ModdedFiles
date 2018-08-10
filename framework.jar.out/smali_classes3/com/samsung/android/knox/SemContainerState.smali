.class public Lcom/samsung/android/knox/SemContainerState;
.super Ljava/lang/Object;
.source "SemContainerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemContainerState$EventListener;,
        Lcom/samsung/android/knox/SemContainerState$LockListener;,
        Lcom/samsung/android/knox/SemContainerState$StateListener;,
        Lcom/samsung/android/knox/SemContainerState$StateReceiver;
    }
.end annotation


# static fields
.field public static ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

.field private mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

.field private mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

.field private mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$EventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$LockListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/knox/SemContainerState;)Lcom/samsung/android/knox/SemContainerState$StateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SemContainerState"

    sput-object v0, Lcom/samsung/android/knox/SemContainerState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/knox/SemContainerState;->DEBUG:Z

    const-string/jumbo v0, "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

    sput-object v0, Lcom/samsung/android/knox/SemContainerState;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;Lcom/samsung/android/knox/SemContainerState$StateListener;Lcom/samsung/android/knox/SemContainerState$LockListener;Lcom/samsung/android/knox/SemContainerState$EventListener;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/SemContainerState;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object p2, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object p4, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    new-instance v1, Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/SemContainerState$StateReceiver;-><init>(Lcom/samsung/android/knox/SemContainerState;Lcom/samsung/android/knox/SemContainerState$StateReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    iget-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mLockListener:Lcom/samsung/android/knox/SemContainerState$LockListener;

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mStateListener:Lcom/samsung/android/knox/SemContainerState$StateListener;

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mEventListener:Lcom/samsung/android/knox/SemContainerState$EventListener;

    iput-object v1, p0, Lcom/samsung/android/knox/SemContainerState;->mReceiver:Lcom/samsung/android/knox/SemContainerState$StateReceiver;

    return-void
.end method
