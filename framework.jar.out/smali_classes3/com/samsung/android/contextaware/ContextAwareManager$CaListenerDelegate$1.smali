.class Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;
.super Landroid/os/Handler;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager;Lcom/samsung/android/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-static {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->-get0(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-static {v2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->-get0(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareListener;->onContextChanged(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
