.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    if-ne v0, v2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Z)Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingDisabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->isEdgeLightingRestricted(I)Z

    move-result v1

    :cond_2
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->setRinging(Z)V

    return-void
.end method
