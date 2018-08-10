.class Lcom/android/server/connectivity/Tethering$3;
.super Landroid/os/ResultReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iput p3, p0, Lcom/android/server/connectivity/Tethering$3;->val$type:I

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$type:I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/Tethering;->-wrap14(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    goto :goto_0
.end method
