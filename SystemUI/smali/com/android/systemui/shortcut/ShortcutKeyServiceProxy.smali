.class public Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;
.super Lcom/android/internal/policy/IShortcutService$Stub;
.source "ShortcutKeyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;,
        Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/IShortcutService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mCallbacks:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    return-void
.end method


# virtual methods
.method public notifyShortcutKeyPressed(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
