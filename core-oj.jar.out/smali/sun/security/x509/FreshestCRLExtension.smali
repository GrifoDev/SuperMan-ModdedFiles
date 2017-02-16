.class public Lsun/security/x509/FreshestCRLExtension;
.super Lsun/security/x509/CRLDistributionPointsExtension;
.source "FreshestCRLExtension.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "FreshestCRL"


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 3
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 87
    const-string/jumbo v2, "FreshestCRL"

    .line 86
    invoke-direct {p0, v0, v1, p2, v2}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v1, "FreshestCRL"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    .line 96
    return-void
.end method
