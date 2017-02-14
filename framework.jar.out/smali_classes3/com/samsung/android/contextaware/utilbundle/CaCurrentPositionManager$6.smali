.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-wrap3(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-wrap4(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->removeCurrentLoc()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$6;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;I)I

    return-void
.end method
