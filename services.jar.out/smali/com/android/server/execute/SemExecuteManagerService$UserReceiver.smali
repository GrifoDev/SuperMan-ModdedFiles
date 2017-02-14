.class final Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;-><init>(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap0(Lcom/android/server/execute/SemExecuteManagerService;I)V

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v0}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap1(Lcom/android/server/execute/SemExecuteManagerService;)V

    return-void
.end method
