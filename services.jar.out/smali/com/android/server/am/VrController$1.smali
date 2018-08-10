.class Lcom/android/server/am/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VrController;


# direct methods
.method constructor <init>(Lcom/android/server/am/VrController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-static {v0}, Lcom/android/server/am/VrController;->-get0(Lcom/android/server/am/VrController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/am/VrController;->-wrap1(Lcom/android/server/am/VrController;IIZ)I

    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-static {v0}, Lcom/android/server/am/VrController;->-get1(Lcom/android/server/am/VrController;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/am/VrController;->-set0(Lcom/android/server/am/VrController;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/server/am/VrController;->-wrap0(Lcom/android/server/am/VrController;IZ)I

    iget-object v0, p0, Lcom/android/server/am/VrController$1;->this$0:Lcom/android/server/am/VrController;

    invoke-static {v0}, Lcom/android/server/am/VrController;->-get1(Lcom/android/server/am/VrController;)I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    invoke-static {v0, v2}, Lcom/android/server/am/VrController;->-set0(Lcom/android/server/am/VrController;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
