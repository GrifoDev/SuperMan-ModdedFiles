.class final Lcom/android/server/autofill/RemoteFillService$MyHandler;
.super Lcom/android/internal/os/HandlerCaller;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BINDER_DIED:I = 0x2

.field public static final MSG_DESTROY:I = 0x1

.field public static final MSG_ON_PENDING_REQUEST:I = 0x4

.field public static final MSG_UNBIND:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$MyHandler;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/RemoteFillService$MyHandler$1;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    return-void
.end method
