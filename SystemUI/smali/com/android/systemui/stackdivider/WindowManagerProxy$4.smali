.class Lcom/android/systemui/stackdivider/WindowManagerProxy$4;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get2(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get1(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get0(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->setResizeDimLayer(ZIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resize stack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
