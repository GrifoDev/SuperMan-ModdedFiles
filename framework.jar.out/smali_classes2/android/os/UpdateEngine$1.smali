.class Landroid/os/UpdateEngine$1;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/UpdateEngine;

.field final synthetic val$callback:Landroid/os/UpdateEngineCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/os/UpdateEngine$1;->this$0:Landroid/os/UpdateEngine;

    iput-object p2, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayloadApplicationComplete(I)V
    .locals 3

    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngine$1$2;

    iget-object v2, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {v1, p0, v2, p1}, Landroid/os/UpdateEngine$1$2;-><init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1}, Landroid/os/UpdateEngineCallback;->onPayloadApplicationComplete(I)V

    goto :goto_0
.end method

.method public onStatusUpdate(IF)V
    .locals 3

    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/os/UpdateEngine$1$1;

    iget-object v2, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/os/UpdateEngine$1$1;-><init>(Landroid/os/UpdateEngine$1;Landroid/os/UpdateEngineCallback;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine$1;->val$callback:Landroid/os/UpdateEngineCallback;

    invoke-virtual {v0, p1, p2}, Landroid/os/UpdateEngineCallback;->onStatusUpdate(IF)V

    goto :goto_0
.end method
