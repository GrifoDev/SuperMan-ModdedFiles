.class final Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)V

    return-void
.end method


# virtual methods
.method enforceCallFromPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method enforceCallingPermissionFromHost()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.permission.EDGE_LIGHTING_HOST"

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
