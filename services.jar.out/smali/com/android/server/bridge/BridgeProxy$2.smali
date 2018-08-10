.class Lcom/android/server/bridge/BridgeProxy$2;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy;->initDBObserver(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;

.field final synthetic val$initCount:I


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$2;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iput p2, p0, Lcom/android/server/bridge/BridgeProxy$2;->val$initCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$2;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$2;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap0(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-set1(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$2;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy$2;->val$initCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->-wrap15(Lcom/android/server/bridge/BridgeProxy;I)V

    return-void
.end method
