.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "mPolicyReceiver :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string/jumbo v3, "storage_itpolicy"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Z)V

    return-void
.end method
