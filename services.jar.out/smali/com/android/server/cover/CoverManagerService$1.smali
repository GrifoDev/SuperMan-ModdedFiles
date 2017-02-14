.class Lcom/android/server/cover/CoverManagerService$1;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get6(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getBridge()Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IWindowManagerServiceBridge;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->-get5(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/StateNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get2(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method
