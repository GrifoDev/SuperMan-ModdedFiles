.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get2(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get3(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1004

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$3;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-get3(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
