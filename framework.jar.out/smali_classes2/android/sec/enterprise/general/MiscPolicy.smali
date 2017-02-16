.class public Landroid/sec/enterprise/general/MiscPolicy;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "MiscPolicy"

    iput-object v0, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public isNFCStateChangeAllowed()Z
    .locals 4

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 79
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isNFCStateChangeAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 82
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/sec/enterprise/general/MiscPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to Talking to MiscPolicyService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
