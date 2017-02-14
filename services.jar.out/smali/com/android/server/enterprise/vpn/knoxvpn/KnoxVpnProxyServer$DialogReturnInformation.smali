.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogReturnInformation"
.end annotation


# instance fields
.field callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/samsung/android/knox/net/vpn/ICredentialStatusCallback;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    return-object v0
.end method
