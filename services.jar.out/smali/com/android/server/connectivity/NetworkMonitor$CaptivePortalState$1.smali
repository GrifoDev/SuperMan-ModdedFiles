.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;
.super Landroid/net/ICaptivePortal$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get12(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "CaptivePortal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82009

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    return-void
.end method
