.class Lcom/android/server/trust/TrustManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method
