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

    .prologue
    .line 433
    .local p1, "trustedSubjectDNs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    .line 433
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "oCert1"    # Ljava/lang/Object;
    .param p2, "oCert2"    # Ljava/lang/Object;

    .prologue
    .line 453
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "oCert1":Ljava/lang/Object;
    check-cast p2, Ljava/security/cert/X509Certificate;

    .end local p2    # "oCert2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 26
    .param p1, "oCert1"    # Ljava/security/cert/X509Certificate;
    .param p2, "oCert2"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 456
    invoke-virtual/range {p1 .. p2}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/16 v23, 0x0

    return v23

    .line 458
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 459
    .local v2, "cIssuer1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 460
    .local v4, "cIssuer2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v2}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v3

    .line 461
    .local v3, "cIssuer1Name":Lsun/security/x509/X500Name;
    invoke-static {v4}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v5

    .line 463
    .local v5, "cIssuer2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 464
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

    .line 465
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

    .line 471
    :cond_1
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 472
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() MATCH TRUSTED SUBJECT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 475
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 476
    .local v16, "m1":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 477
    .local v17, "m2":Z
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_3

    .line 478
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

    .line 479
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

    .line 481
    :cond_3
    if-eqz v16, :cond_4

    if-eqz v17, :cond_4

    .line 482
    const/16 v23, -0x1

    return v23

    .line 483
    :cond_4
    if-eqz v16, :cond_5

    .line 484
    const/16 v23, -0x1

    return v23

    .line 485
    :cond_5
    if-eqz v17, :cond_6

    .line 486
    const/16 v23, 0x1

    return v23

    .line 492
    :cond_6
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 493
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING DESCENDANT TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 495
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/ForwardBuilder$PKIXCertComparator;->trustedSubjectDNs:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "tSubject$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavax/security/auth/x500/X500Principal;

    .line 496
    .local v20, "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 498
    .local v22, "tSubjectName":Lsun/security/x509/X500Name;
    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    .line 500
    .local v12, "distanceTto1":I
    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    .line 501
    .local v13, "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 502
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

    .line 503
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

    .line 505
    :cond_9
    if-gtz v12, :cond_a

    if-lez v13, :cond_8

    .line 506
    :cond_a
    if-ne v12, v13, :cond_b

    .line 507
    const/16 v23, -0x1

    return v23

    .line 508
    :cond_b
    if-lez v12, :cond_c

    if-gtz v13, :cond_c

    .line 509
    const/16 v23, -0x1

    return v23

    .line 510
    :cond_c
    if-gtz v12, :cond_d

    if-lez v13, :cond_d

    .line 511
    const/16 v23, 0x1

    return v23

    .line 512
    :cond_d
    if-ge v12, v13, :cond_e

    .line 513
    const/16 v23, -0x1

    return v23

    .line 515
    :cond_e
    const/16 v23, 0x1

    return v23

    .line 523
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_f
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_10

    .line 524
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() NAMING ANCESTOR TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 526
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

    .line 527
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 530
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    const v23, 0x7fffffff

    .line 529
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v12

    .line 532
    .restart local v12    # "distanceTto1":I
    const v23, 0x7fffffff

    .line 531
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v13

    .line 533
    .restart local v13    # "distanceTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_12

    .line 534
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

    .line 535
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

    .line 537
    :cond_12
    if-ltz v12, :cond_13

    if-gez v13, :cond_11

    .line 538
    :cond_13
    if-ne v12, v13, :cond_14

    .line 539
    const/16 v23, -0x1

    return v23

    .line 540
    :cond_14
    if-gez v12, :cond_15

    if-ltz v13, :cond_15

    .line 541
    const/16 v23, -0x1

    return v23

    .line 542
    :cond_15
    if-ltz v12, :cond_16

    if-gez v13, :cond_16

    .line 543
    const/16 v23, 0x1

    return v23

    .line 544
    :cond_16
    if-le v12, v13, :cond_17

    .line 545
    const/16 v23, -0x1

    return v23

    .line 547
    :cond_17
    const/16 v23, 0x1

    return v23

    .line 556
    .end local v12    # "distanceTto1":I
    .end local v13    # "distanceTto2":I
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_18
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_19

    .line 557
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() SAME NAMESPACE AS TRUSTED TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 559
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

    .line 560
    .restart local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    invoke-static/range {v20 .. v20}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v22

    .line 561
    .restart local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v18

    .line 562
    .local v18, "tAo1":Lsun/security/x509/X500Name;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lsun/security/x509/X500Name;->commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;

    move-result-object v19

    .line 563
    .local v19, "tAo2":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1b

    .line 564
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

    .line 565
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

    .line 567
    :cond_1b
    if-nez v18, :cond_1c

    if-eqz v19, :cond_1a

    .line 568
    :cond_1c
    if-eqz v18, :cond_1f

    if-eqz v19, :cond_1f

    .line 570
    const v23, 0x7fffffff

    .line 569
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v3, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v14

    .line 572
    .local v14, "hopsTto1":I
    const v23, 0x7fffffff

    .line 571
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lsun/security/provider/certpath/Builder;->hops(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v15

    .line 573
    .local v15, "hopsTto2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_1d

    .line 574
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

    .line 575
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

    .line 577
    :cond_1d
    if-eq v14, v15, :cond_1a

    .line 578
    if-le v14, v15, :cond_1e

    .line 579
    const/16 v23, 0x1

    return v23

    .line 581
    :cond_1e
    const/16 v23, -0x1

    return v23

    .line 583
    .end local v14    # "hopsTto1":I
    .end local v15    # "hopsTto2":I
    :cond_1f
    if-nez v18, :cond_20

    .line 584
    const/16 v23, 0x1

    return v23

    .line 586
    :cond_20
    const/16 v23, -0x1

    return v23

    .line 595
    .end local v18    # "tAo1":Lsun/security/x509/X500Name;
    .end local v19    # "tAo2":Lsun/security/x509/X500Name;
    .end local v20    # "tSubject":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "tSubjectName":Lsun/security/x509/X500Name;
    :cond_21
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_22

    .line 596
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() CERT ISSUER/SUBJECT COMPARISON TEST..."

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 598
    :cond_22
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 599
    .local v6, "cSubject1":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 600
    .local v8, "cSubject2":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v7

    .line 601
    .local v7, "cSubject1Name":Lsun/security/x509/X500Name;
    invoke-static {v8}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v9

    .line 603
    .local v9, "cSubject2Name":Lsun/security/x509/X500Name;
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_23

    .line 604
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

    .line 605
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

    .line 608
    :cond_23
    const v23, 0x7fffffff

    .line 607
    move/from16 v0, v23

    invoke-static {v7, v3, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v10

    .line 610
    .local v10, "distanceStoI1":I
    const v23, 0x7fffffff

    .line 609
    move/from16 v0, v23

    invoke-static {v9, v5, v0}, Lsun/security/provider/certpath/Builder;->distance(Lsun/security/x509/GeneralNameInterface;Lsun/security/x509/GeneralNameInterface;I)I

    move-result v11

    .line 611
    .local v11, "distanceStoI2":I
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_24

    .line 612
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

    .line 613
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

    .line 615
    :cond_24
    if-le v11, v10, :cond_25

    .line 616
    const/16 v23, -0x1

    return v23

    .line 617
    :cond_25
    if-ge v11, v10, :cond_26

    .line 618
    const/16 v23, 0x1

    return v23

    .line 623
    :cond_26
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    if-eqz v23, :cond_27

    .line 624
    invoke-static {}, Lsun/security/provider/certpath/ForwardBuilder;->-get0()Lsun/security/util/Debug;

    move-result-object v23

    const-string/jumbo v24, "PKIXCertComparator.compare() no tests matched; RETURN 0"

    invoke-virtual/range {v23 .. v24}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 626
    :cond_27
    const/16 v23, -0x1

    return v23
.end method
