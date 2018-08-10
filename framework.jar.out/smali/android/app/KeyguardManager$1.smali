.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method static synthetic -android_app_KeyguardManager$1-mthref-0(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissError()V

    return-void
.end method

.method static synthetic -android_app_KeyguardManager$1-mthref-1(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    return-void
.end method

.method static synthetic -android_app_KeyguardManager$1-mthref-2(Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissCancelled()V

    return-void
.end method

.method constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    iput-object p3, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94;

    invoke-direct {v2, v1}, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$1;

    invoke-direct {v2, v1}, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;

    invoke-direct {v2, v1}, Landroid/app/-$Lambda$umlIgU-_zKMY7m6DKD443zi2a94$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
