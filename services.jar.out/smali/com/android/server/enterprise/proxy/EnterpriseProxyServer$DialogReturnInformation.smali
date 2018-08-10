.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;
.super Ljava/lang/Object;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogReturnInformation"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->bundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCallback()Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->callback:Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    return-object v0
.end method
