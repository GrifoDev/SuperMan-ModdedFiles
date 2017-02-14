.class Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;
.super Ljava/lang/Object;
.source "ForwardBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/ForwardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# static fields
.field static final METHOD_NME:Ljava/lang/String; = "PKIXCertComparator.compare()"


# instance fields
.field private final trustedSubjectDNs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 26

    invoke-virtual/range {p1 .. p2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/16 v23, 0x0

    return v23

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v3

    invoke-static {v4}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v5

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Issuer:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Issuer:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() MATCH TRUSTED SUBJECT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_3

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() m1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() m2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz v16, :cond_4

    if-eqz v17, :cond_4

    const/16 v23, -0x1

    return v23

    :cond_4
    if-eqz v16, :cond_5

    const/16 v23, -0x1

    return v23

    :cond_5
    if-eqz v17, :cond_6

    const/16 v23, 0x1

    return v23

    :cond_6
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING DESCENDANT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_9

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    if-gtz v12, :cond_a

    if-lez v13, :cond_8

    :cond_a
    if-ne v12, v13, :cond_b

    const/16 v23, -0x1

    return v23

    :cond_b
    if-lez v12, :cond_c

    if-gtz v13, :cond_c

    const/16 v23, -0x1

    return v23

    :cond_c
    if-gtz v12, :cond_d

    if-lez v13, :cond_d

    const/16 v23, 0x1

    return v23

    :cond_d
    if-ge v12, v13, :cond_e

    const/16 v23, -0x1

    return v23

    :cond_e
    const/16 v23, 0x1

    return v23

    :cond_f
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_10

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING ANCESTOR TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    const v23, 0x7fffffff

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    const v23, 0x7fffffff

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_12

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_12
    if-ltz v12, :cond_13

    if-gez v13, :cond_11

    :cond_13
    if-ne v12, v13, :cond_14

    const/16 v23, -0x1

    return v23

    :cond_14
    if-gez v12, :cond_15

    if-ltz v13, :cond_15

    const/16 v23, -0x1

    return v23

    :cond_15
    if-ltz v12, :cond_16

    if-gez v13, :cond_16

    const/16 v23, 0x1

    return v23

    :cond_16
    if-le v12, v13, :cond_17

    const/16 v23, -0x1

    return v23

    :cond_17
    const/16 v23, 0x1

    return v23

    :cond_18
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_19

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() SAME NAMESPACE AS TRUSTED TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v18

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v19

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1b

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() tAo1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() tAo2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1b
    if-nez v18, :cond_1c

    if-eqz v19, :cond_1a

    :cond_1c
    if-eqz v18, :cond_1f

    if-eqz v19, :cond_1f

    const v23, 0x7fffffff

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v14

    const v23, 0x7fffffff

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v15

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1d

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() hopsTto2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1d
    if-eq v14, v15, :cond_1a

    if-le v14, v15, :cond_1e

    const/16 v23, 0x1

    return v23

    :cond_1e
    const/16 v23, -0x1

    return v23

    :cond_1f
    if-nez v18, :cond_20

    const/16 v23, 0x1

    return v23

    :cond_20
    const/16 v23, -0x1

    return v23

    :cond_21
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_22

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() CERT ISSUER/SUBJECT COMPARISON TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v7

    invoke-static {v8}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v9

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_23

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o1 Subject: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() o2 Subject: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_23
    const v23, 0x7fffffff

    move/from16 v0, v23

    invoke-static {v7, v3, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v10

    const v23, 0x7fffffff

    move/from16 v0, v23

    invoke-static {v9, v5, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v11

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_24

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI1: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PKIXCertComparator.compare() distanceStoI2: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_24
    if-le v11, v10, :cond_25

    const/16 v23, -0x1

    return v23

    :cond_25
    if-ge v11, v10, :cond_26

    const/16 v23, 0x1

    return v23

    :cond_26
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_27

    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() no tests matched; RETURN 0"

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_27
    const/16 v23, -0x1

    return v23
.end method
