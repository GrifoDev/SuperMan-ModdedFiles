.class Landroid/app/Activity$2;
.super Ljava/lang/Thread;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$2;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity$2;->val$token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-static {v3}, Landroid/app/Activity;->-get0(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
