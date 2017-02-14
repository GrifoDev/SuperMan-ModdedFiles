.class Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;
.super Ljava/lang/Object;
.source "ReverseBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/ReverseBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PKIXCertComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# instance fields
.field private debug:Lsun/security/util/Debug;

.field final synthetic this$0:Lsun/security/provider/certpath/ReverseBuilder;


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/ReverseBuilder;)V
    .locals 1

    iput-object p1, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->this$0:Lsun/security/provider/certpath/ReverseBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->this$0:Lsun/security/provider/certpath/ReverseBuilder;

    iget-object v5, v5, Lsun/security/provider/certpath/Builder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_1
    :try_start_0
    invoke-static {v3}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, p1, v4}, Lsun/security/provider/certpath/Builder;->targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5, p2, v4}, Lsun/security/provider/certpath/Builder;->targetDistance(Lsun/security/x509/NameConstraintsExtension;Ljava/security/cert/X509Certificate;Lsun/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v0

    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lsun/security/provider/certpath/ReverseBuilder$PKIXCertComparator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "IOException in call to Builder.targetDistance"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    new-instance v5, Ljava/lang/ClassCastException;

    const-string/jumbo v6, "Invalid target subject distinguished name"

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    if-ne v1, v6, :cond_4

    return v7

    :cond_4
    if-ge v1, v2, :cond_5

    return v6

    :cond_5
    return v7
.end method
