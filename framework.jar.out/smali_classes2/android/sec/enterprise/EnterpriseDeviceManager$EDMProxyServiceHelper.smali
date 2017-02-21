.class public Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EDMProxyServiceHelper"
.end annotation


# static fields
.field private static mService:Landroid/sec/enterprise/IEDMProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "edm_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    :cond_0
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    return-object v0
.end method
