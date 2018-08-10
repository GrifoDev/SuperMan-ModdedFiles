.class Lcom/android/server/SecExternalDisplayService$2;
.super Landroid/os/Handler;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayAlertMsg(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->-get2(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->-get2(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
