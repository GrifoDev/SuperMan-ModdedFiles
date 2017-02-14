.class Lcom/android/server/display/IpRemoteDisplayController$7;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->requestDisableWifiDisplay(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$connectedMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$connectedMode:I

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-set2(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->val$connectedMode:I

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap3(Lcom/android/server/display/IpRemoteDisplayController;I)V

    return-void
.end method
