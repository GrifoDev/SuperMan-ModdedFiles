.class Lcom/android/server/bridge/BridgeProxy$4;
.super Ljava/lang/Object;
.source "BridgeProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;

.field final synthetic val$mSyncer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$4;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy$4;->val$mSyncer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$4;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->-get2(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/DbObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$4;->val$mSyncer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    return-void
.end method
