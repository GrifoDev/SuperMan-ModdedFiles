.class Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustListOperation"
.end annotation


# static fields
.field private static final AUDIT_ADD_TRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_ADD_UNTRUSTED:Ljava/lang/String; = "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_TRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

.field private static final AUDIT_REMOVE_UNTRUSTED:Ljava/lang/String; = "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"


# instance fields
.field private mAction:I

.field private mAuditMessageFormat:Ljava/lang/String;

.field private mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field private mDbColumn:Ljava/lang/String;

.field private mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get6(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get5(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get6(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const-string/jumbo v0, "trustedCaList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get5(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get8(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get7(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Admin %d has removed a certificate from the untrusted DB. Subject : %s, Issuer : %s"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get8(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    const-string/jumbo v0, "untrustedCertsList"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get7(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/CertificateCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    return v0
.end method

.method public getAuditMessageFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAuditMessageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()Lcom/android/server/enterprise/certificate/CertificateCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    return-object v0
.end method

.method public getDbColumn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystore()Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method
