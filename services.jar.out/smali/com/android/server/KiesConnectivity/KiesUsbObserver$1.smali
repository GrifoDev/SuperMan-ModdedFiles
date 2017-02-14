.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    const/16 v2, 0x2710

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-wrap1(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mBr get"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
