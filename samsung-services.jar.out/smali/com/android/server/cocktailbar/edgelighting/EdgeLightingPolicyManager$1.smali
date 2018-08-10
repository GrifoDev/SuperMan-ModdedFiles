.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "heads_up_notifications_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-set3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "heads up is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-get4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0
.end method
