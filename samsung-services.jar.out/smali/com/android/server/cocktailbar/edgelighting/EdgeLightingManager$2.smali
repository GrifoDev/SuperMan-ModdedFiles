.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-set1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;J)J

    goto :goto_0
.end method
