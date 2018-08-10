.class Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;
.super Ljava/lang/Object;
.source "DlnaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DlnaController;->-wrap0(Lcom/android/server/display/DlnaController;I)V

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0, v2}, Lcom/android/server/display/DlnaController;->-set0(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaDevice;)Lcom/android/server/display/DlnaDevice;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-get2(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0}, Lcom/android/server/display/DlnaController;->-get2(Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    invoke-static {v0, v2}, Lcom/android/server/display/DlnaController;->-set1(Lcom/android/server/display/DlnaController;Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;)Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;

    :cond_1
    return-void
.end method
