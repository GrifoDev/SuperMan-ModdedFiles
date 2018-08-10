.class Lcom/android/server/display/NightDisplayService$1$1;
.super Ljava/lang/Object;
.source "NightDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/NightDisplayService$1;->onVrStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/NightDisplayService$1;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/NightDisplayService$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iput-boolean p2, p0, Lcom/android/server/display/NightDisplayService$1$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v4, 0x64

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get2(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get2(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    const-class v2, Lcom/android/server/display/DisplayTransformManager;

    invoke-static {v1, v2}, Lcom/android/server/display/NightDisplayService;->-wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->val$enabled:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/display/NightDisplayService;->-get0()[F

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v2, v2, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v2}, Lcom/android/server/display/NightDisplayService;->-get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v3, v3, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v3}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)[F

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/display/NightDisplayService;->-wrap2(Lcom/android/server/display/NightDisplayService;I[F)V

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService$1$1;->this$1:Lcom/android/server/display/NightDisplayService$1;

    iget-object v1, v1, Lcom/android/server/display/NightDisplayService$1;->this$0:Lcom/android/server/display/NightDisplayService;

    invoke-static {v1}, Lcom/android/server/display/NightDisplayService;->-get8(Lcom/android/server/display/NightDisplayService;)[F

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_0
.end method
