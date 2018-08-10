.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
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
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-set4(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Z)Z

    return-void
.end method
