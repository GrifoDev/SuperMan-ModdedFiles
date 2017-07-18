.class public Lsun/security/x509/PKIXExtensions;
.super Ljava/lang/Object;
.source "PKIXExtensions.java"


# static fields
.field public static final AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final AuthInfoAccess_data:[I

.field public static final AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final AuthorityKey_data:[I

.field public static final BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final BasicConstraints_data:[I

.field public static final CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CRLDistributionPoints_data:[I

.field public static final CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CRLNumber_data:[I

.field public static final CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CertificateIssuer_data:[I

.field public static final CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

.field private static final CertificatePolicies_data:[I

.field public static final DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

.field private static final DeltaCRLIndicator_data:[I

.field public static final ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final ExtendedKeyUsage_data:[I

.field public static final FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

.field private static final FreshestCRL_data:[I

.field public static final HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final HoldInstructionCode_data:[I

.field public static final InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

.field private static final InhibitAnyPolicy_data:[I

.field public static final InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

.field private static final InvalidityDate_data:[I

.field public static final IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final IssuerAlternativeName_data:[I

.field public static final IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

.field private static final IssuingDistributionPoint_data:[I

.field public static final KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final KeyUsage_data:[I

.field public static final NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final NameConstraints_data:[I

.field public static final OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

.field private static final OCSPNoCheck_data:[I

.field public static final PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PolicyConstraints_data:[I

.field public static final PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PolicyMappings_data:[I

.field public static final PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final PrivateKeyUsage_data:[I

.field public static final ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final ReasonCode_data:[I

.field public static final SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectAlternativeName_data:[I

.field public static final SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectDirectoryAttributes_data:[I

.field public static final SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectInfoAccess_data:[I

.field public static final SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final SubjectKey_data:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/16 v1, 0x1d

    const/16 v0, 0x23

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    const/16 v0, 0xe

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    const/16 v0, 0xf

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    const/16 v0, 0x10

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    const/16 v0, 0x20

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    const/16 v0, 0x21

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    const/16 v0, 0x11

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    const/16 v0, 0x12

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    filled-new-array {v2, v3, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    const/16 v0, 0x13

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    const/16 v0, 0x1e

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    const/16 v0, 0x24

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    const/16 v0, 0x1f

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    const/16 v0, 0x14

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    const/16 v0, 0x1c

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    const/16 v0, 0x1b

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    const/16 v0, 0x15

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    const/16 v0, 0x17

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    const/16 v0, 0x18

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    const/16 v0, 0x25

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    const/16 v0, 0x36

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    filled-new-array {v2, v3, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    const/16 v0, 0x2e

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
