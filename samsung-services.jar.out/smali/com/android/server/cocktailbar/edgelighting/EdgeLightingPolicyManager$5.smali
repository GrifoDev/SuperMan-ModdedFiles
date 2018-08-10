.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->registerCoverListener()V
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

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager$5;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;->-set0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingPolicyManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    return-void
.end method
