.class Lcom/android/systemui/droplaunch/DropLaunchService$1$1;
.super Ljava/lang/Object;
.source "DropLaunchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/droplaunch/DropLaunchService$1;->finishService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/droplaunch/DropLaunchService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;->this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;->this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;

    iget-object v0, v0, Lcom/android/systemui/droplaunch/DropLaunchService$1;->this$0:Lcom/android/systemui/droplaunch/DropLaunchService;

    invoke-static {v0}, Lcom/android/systemui/droplaunch/DropLaunchService;->-get0(Lcom/android/systemui/droplaunch/DropLaunchService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;->this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;

    iget-object v0, v0, Lcom/android/systemui/droplaunch/DropLaunchService$1;->this$0:Lcom/android/systemui/droplaunch/DropLaunchService;

    invoke-static {v0}, Lcom/android/systemui/droplaunch/DropLaunchService;->-get0(Lcom/android/systemui/droplaunch/DropLaunchService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;->this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;

    iget-object v0, v0, Lcom/android/systemui/droplaunch/DropLaunchService$1;->this$0:Lcom/android/systemui/droplaunch/DropLaunchService;

    invoke-static {v0}, Lcom/android/systemui/droplaunch/DropLaunchService;->-get0(Lcom/android/systemui/droplaunch/DropLaunchService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/droplaunch/DropLaunchService$1$1;->this$1:Lcom/android/systemui/droplaunch/DropLaunchService$1;

    iget-object v0, v0, Lcom/android/systemui/droplaunch/DropLaunchService$1;->this$0:Lcom/android/systemui/droplaunch/DropLaunchService;

    invoke-virtual {v0}, Lcom/android/systemui/droplaunch/DropLaunchService;->stopSelf()V

    return-void
.end method
