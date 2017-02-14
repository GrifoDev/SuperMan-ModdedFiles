.class Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "DcmNextiPlayReadyService.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory$1;->this$1:Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
