.class public Landroid/sec/enterprise/general/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "MiscPolicy"

    iput-object v0, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isNFCStateChangeAllowed()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCStateChangeAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to Talking to MiscPolicyService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
