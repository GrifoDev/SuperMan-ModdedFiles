.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final DH_PKIX_data:[I

.field public static final DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DH_data:[I

.field public static final DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_OIW_data:[I

.field public static final DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_PKIX_data:[I

.field public static final DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSAEncryption_data:[I

.field public static final RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSA_data:[I

.field public static final RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final dsaWithSHA1_PKIX_data:[I

.field private static initOidTableVersion:I = 0x0

.field private static final md2WithRSAEncryption_data:[I

.field public static final md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final md5WithRSAEncryption_data:[I

.field public static final md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final serialVersionUID:J = 0x640067c6d62263e5L

.field private static final sha1WithDSA_OIW_data:[I

.field public static final sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_OIW_data:[I

.field public static final sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_data:[I

.field public static final sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha256WithRSAEncryption_data:[I

.field public static final sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha384WithRSAEncryption_data:[I

.field public static final sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha512WithRSAEncryption_data:[I

.field public static final sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final shaWithDSA_OIW_data:[I

.field public static final shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Lsun/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x7

    .line 641
    const/4 v0, -0x1

    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 642
    sput-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 644
    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    .line 658
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 657
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    .line 665
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 664
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    .line 674
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 673
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    .line 677
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 676
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    .line 680
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 679
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    .line 683
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 682
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    .line 688
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    .line 689
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    .line 690
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    .line 691
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    .line 692
    const/4 v0, 0x2

    const/4 v1, 0x5

    filled-new-array {v0, v1, v5, v4, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    .line 694
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    .line 693
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    .line 700
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 708
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    .line 707
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 710
    new-array v0, v2, [I

    fill-array-data v0, :array_d

    .line 709
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 712
    new-array v0, v2, [I

    fill-array-data v0, :array_e

    .line 711
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 714
    new-array v0, v3, [I

    fill-array-data v0, :array_f

    .line 713
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 716
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    .line 715
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 718
    new-array v0, v2, [I

    fill-array-data v0, :array_11

    .line 717
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 720
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    .line 719
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 722
    new-array v0, v3, [I

    fill-array-data v0, :array_13

    .line 721
    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    .line 724
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    .line 723
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    .line 726
    new-array v0, v3, [I

    fill-array-data v0, :array_15

    .line 725
    sput-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    .line 740
    new-array v0, v3, [I

    fill-array-data v0, :array_16

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 739
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 742
    new-array v0, v2, [I

    fill-array-data v0, :array_17

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 741
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 744
    new-array v0, v2, [I

    fill-array-data v0, :array_18

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 743
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 746
    new-array v0, v2, [I

    fill-array-data v0, :array_19

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 745
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 748
    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 747
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 750
    new-array v0, v3, [I

    fill-array-data v0, :array_1b

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 749
    sput-object v0, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 757
    new-array v0, v2, [I

    fill-array-data v0, :array_1c

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 756
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 759
    new-array v0, v2, [I

    fill-array-data v0, :array_1d

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 758
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 761
    new-array v0, v2, [I

    fill-array-data v0, :array_1e

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 760
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 763
    new-array v0, v2, [I

    fill-array-data v0, :array_1f

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 762
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 765
    new-array v0, v5, [I

    fill-array-data v0, :array_20

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 764
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    .line 767
    new-array v0, v5, [I

    fill-array-data v0, :array_21

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 766
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    .line 784
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    .line 791
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    .line 801
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 810
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 818
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 825
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 834
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 833
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 842
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 841
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 850
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 849
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 858
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 857
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 866
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 865
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 874
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 873
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 882
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 881
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 890
    sget-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 897
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 904
    sget-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 906
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2_40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void

    .line 658
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    .line 665
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    .line 674
    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    .line 677
    :array_3
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    .line 680
    :array_4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    .line 683
    :array_5
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    .line 688
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    .line 689
    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    .line 690
    :array_8
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    .line 691
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    .line 694
    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    .line 700
    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    .line 708
    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    .line 710
    :array_d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    .line 712
    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    .line 714
    :array_f
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    .line 716
    :array_10
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    .line 718
    :array_11
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    .line 720
    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    .line 722
    :array_13
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    .line 724
    :array_14
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    .line 726
    :array_15
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    .line 740
    :array_16
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    .line 742
    :array_17
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    .line 744
    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    .line 746
    :array_19
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    .line 748
    :array_1a
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    .line 750
    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    .line 757
    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    .line 759
    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    .line 761
    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    .line 763
    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    .line 765
    :array_20
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    .line 767
    :array_21
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 95
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 94
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 105
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 106
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 104
    return-void
.end method

.method private constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 112
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 113
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 114
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    .line 111
    :cond_0
    return-void
.end method

.method private static algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 469
    const-string/jumbo v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v1, "OID."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 472
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 477
    :cond_1
    const-string/jumbo v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 480
    :cond_2
    const-string/jumbo v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 483
    :cond_3
    const-string/jumbo v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 484
    const-string/jumbo v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 483
    if-eqz v0, :cond_5

    .line 485
    :cond_4
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 487
    :cond_5
    const-string/jumbo v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 488
    const-string/jumbo v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 487
    if-eqz v0, :cond_7

    .line 489
    :cond_6
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 491
    :cond_7
    const-string/jumbo v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 492
    const-string/jumbo v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 491
    if-eqz v0, :cond_9

    .line 493
    :cond_8
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 495
    :cond_9
    const-string/jumbo v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 496
    const-string/jumbo v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 495
    if-eqz v0, :cond_b

    .line 497
    :cond_a
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 502
    :cond_b
    const-string/jumbo v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 503
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 505
    :cond_c
    const-string/jumbo v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 506
    const-string/jumbo v0, "DH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_e

    .line 507
    :cond_d
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 509
    :cond_e
    const-string/jumbo v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 510
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 512
    :cond_f
    const-string/jumbo v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 513
    sget-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 517
    :cond_10
    const-string/jumbo v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 518
    const-string/jumbo v0, "MD5/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 517
    if-eqz v0, :cond_12

    .line 519
    :cond_11
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 521
    :cond_12
    const-string/jumbo v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 522
    const-string/jumbo v0, "MD2/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 521
    if-eqz v0, :cond_14

    .line 523
    :cond_13
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 525
    :cond_14
    const-string/jumbo v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 526
    const-string/jumbo v0, "SHA1withDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_15

    .line 527
    const-string/jumbo v0, "SHA/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_15

    .line 528
    const-string/jumbo v0, "SHA1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_15

    .line 529
    const-string/jumbo v0, "DSAWithSHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_15

    .line 530
    const-string/jumbo v0, "DSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-nez v0, :cond_15

    .line 531
    const-string/jumbo v0, "SHA-1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 525
    if-eqz v0, :cond_16

    .line 532
    :cond_15
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 534
    :cond_16
    const-string/jumbo v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 535
    const-string/jumbo v0, "SHA1/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 534
    if-eqz v0, :cond_18

    .line 536
    :cond_17
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 538
    :cond_18
    const-string/jumbo v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 539
    const-string/jumbo v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 538
    if-eqz v0, :cond_1a

    .line 540
    :cond_19
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 542
    :cond_1a
    const-string/jumbo v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 543
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 545
    :cond_1b
    const-string/jumbo v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 546
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 548
    :cond_1c
    const-string/jumbo v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 549
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 551
    :cond_1d
    const-string/jumbo v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 552
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 557
    :cond_1e
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v1

    .line 558
    :try_start_0
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 559
    sget-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 423
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v1, :cond_0

    .line 424
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized algorithm name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ObjectIdentifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v2, Lsun/security/x509/AlgorithmId;

    invoke-direct {v2, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-object v2
.end method

.method public static get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .locals 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "algname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 447
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v2, :cond_0

    .line 448
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized algorithm name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 443
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    .line 444
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ObjectIdentifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v2, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    return-object v3
.end method

.method public static getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 1
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    return-object v0
.end method

.method public static getDigAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 983
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 984
    const-string/jumbo v1, "WITH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 985
    .local v0, "with":I
    if-lez v0, :cond_0

    .line 986
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 988
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 961
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 962
    const-string/jumbo v3, "WITH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 963
    .local v2, "with":I
    const/4 v1, 0x0

    .line 964
    .local v1, "keyAlgorithm":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 965
    const-string/jumbo v3, "AND"

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 966
    .local v0, "and":I
    if-lez v0, :cond_1

    .line 967
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 971
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "ECDSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 972
    const-string/jumbo v1, "EC"

    .line 975
    .end local v0    # "and":I
    .end local v1    # "keyAlgorithm":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 969
    .restart local v0    # "and":I
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "keyAlgorithm":Ljava/lang/String;
    goto :goto_0
.end method

.method public static makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "digAlg"    # Ljava/lang/String;
    .param p1, "encAlg"    # Ljava/lang/String;

    .prologue
    .line 947
    const-string/jumbo v0, "-"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 948
    const-string/jumbo v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "SHA1"

    .line 950
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 951
    const-string/jumbo v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "ECDSA"

    .line 953
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs oid([I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 638
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 363
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "algid parse error, not a sequence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v1

    .line 373
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 374
    .local v0, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    .line 375
    const/4 v2, 0x0

    .line 389
    :cond_1
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v0, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    return-object v3

    .line 377
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 378
    .local v2, "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 379
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 380
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_3
    const/4 v2, 0x0

    .line 384
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_4
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static reinitializeMappingTableLocked()V
    .locals 16

    .prologue
    .line 566
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v1

    .line 567
    .local v1, "currentVersion":I
    sget v14, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    if-eq v14, v1, :cond_7

    .line 568
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v9

    .line 569
    .local v9, "provs":[Ljava/security/Provider;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v14, v9

    if-ge v4, v14, :cond_6

    .line 570
    aget-object v14, v9, v4

    invoke-virtual {v14}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 571
    .local v3, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    .line 570
    if-eqz v14, :cond_1

    .line 572
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, "alias":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, "upperCaseAlias":Ljava/lang/String;
    const-string/jumbo v14, "ALG.ALIAS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 576
    const-string/jumbo v14, "OID."

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .local v5, "index":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    .line 577
    const-string/jumbo v14, "OID."

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v5, v14

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v5, v14, :cond_2

    .line 569
    .end local v0    # "alias":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 583
    .local v8, "oidString":Ljava/lang/String;
    aget-object v14, v9, v4

    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 584
    .local v11, "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 585
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 587
    const/4 v6, 0x0

    .line 589
    .local v6, "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_0
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, v8}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    .line 594
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_2
    if-eqz v6, :cond_0

    .line 595
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 596
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_3
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 599
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 606
    .end local v8    # "oidString":Ljava/lang/String;
    .end local v11    # "stdAlgName":Ljava/lang/String;
    :cond_4
    const/16 v14, 0x2e

    const-string/jumbo v15, "ALG.ALIAS."

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 607
    .local v10, "sep":I
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 609
    .local v12, "suffix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 611
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_1
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, v12}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    .line 616
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_3
    if-eqz v6, :cond_0

    .line 617
    aget-object v14, v9, v4

    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 618
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 619
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 620
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 621
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_5
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 624
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 633
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v5    # "index":I
    .end local v10    # "sep":I
    .end local v11    # "stdAlgName":Ljava/lang/String;
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_6
    sput v1, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 563
    .end local v4    # "i":I
    .end local v9    # "provs":[Ljava/security/Provider;
    :cond_7
    return-void

    .line 612
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v9    # "provs":[Ljava/security/Provider;
    .restart local v10    # "sep":I
    .restart local v12    # "suffix":Ljava/lang/String;
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_3

    .line 590
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "sep":I
    .end local v12    # "suffix":Ljava/lang/String;
    .restart local v8    # "oidString":Ljava/lang/String;
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method protected decodeParams()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "algidString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 119
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    sget-object v3, Lsun/security/ec/ECKeyFactory;->ecInternalProvider:Ljava/security/Provider;

    .line 128
    invoke-static {v0, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v2

    .line 135
    .local v2, "ee":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 136
    return-void
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 161
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 163
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 165
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_1

    .line 167
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 172
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v2, :cond_2

    .line 198
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    .line 202
    :goto_1
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 203
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 159
    return-void

    .line 169
    :cond_1
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    goto :goto_0

    .line 200
    :cond_2
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    goto :goto_1
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 146
    return-void
.end method

.method public final encode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 212
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 213
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 295
    if-ne p0, p1, :cond_0

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_0
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_1

    .line 299
    check-cast p1, Lsun/security/x509/AlgorithmId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v0

    return v0

    .line 300
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 301
    check-cast p1, Lsun/security/util/ObjectIdentifier;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    .line 303
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 312
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0
.end method

.method public equals(Lsun/security/x509/AlgorithmId;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    .prologue
    .line 283
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    .local v0, "paramsEqual":Z
    goto :goto_0

    .end local v0    # "paramsEqual":Z
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    .local v0, "paramsEqual":Z
    goto :goto_0

    .line 284
    .end local v0    # "paramsEqual":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEncodedParams()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 236
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v5, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 238
    return-object v0

    .line 240
    :cond_0
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    sget-object v5, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    :try_start_0
    new-instance v4, Lsun/security/util/DerValue;

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    .line 244
    .local v2, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "paramsName":Ljava/lang/String;
    const-string/jumbo v4, "SHA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    const-string/jumbo v3, "SHA1"

    .line 248
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "withECDSA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 255
    .end local v2    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v3    # "paramsName":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v5, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v5

    .line 256
    :try_start_1
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 257
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v6, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "algName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "algName":Ljava/lang/String;
    monitor-exit v5

    .line 260
    if-nez v0, :cond_3

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "algName":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 255
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 249
    .restart local v0    # "algName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method protected paramsToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    .line 333
    const-string/jumbo v0, ""

    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :cond_1
    const-string/jumbo v0, ", params unparsed"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
