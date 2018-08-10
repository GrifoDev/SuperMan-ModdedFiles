.class public Landroid/app/KeyguardManager$KeyguardLock;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardLock"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableKeyguard()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const v3, 0x8d03

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v2}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reenableKeyguard()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const v3, 0x8d03

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v2}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
