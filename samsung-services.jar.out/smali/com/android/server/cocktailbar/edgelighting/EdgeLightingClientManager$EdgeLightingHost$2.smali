.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-wrap3(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    return-void
.end method
