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

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/16 v1, 0x1d

    .line 52
    const/16 v0, 0x23

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    .line 53
    const/16 v0, 0xe

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    .line 54
    const/16 v0, 0xf

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    .line 55
    const/16 v0, 0x10

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    .line 56
    const/16 v0, 0x20

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 57
    const/16 v0, 0x21

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    .line 58
    const/16 v0, 0x11

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 59
    const/16 v0, 0x12

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 60
    filled-new-array {v2, v3, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 61
    const/16 v0, 0x13

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 62
    const/16 v0, 0x1e

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    .line 63
    const/16 v0, 0x24

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 64
    const/16 v0, 0x1f

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 65
    const/16 v0, 0x14

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 66
    const/16 v0, 0x1c

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 67
    const/16 v0, 0x1b

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 68
    const/16 v0, 0x15

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    .line 69
    const/16 v0, 0x17

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 70
    const/16 v0, 0x18

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    .line 71
    const/16 v0, 0x25

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    .line 72
    const/16 v0, 0x36

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    .line 73
    filled-new-array {v2, v3, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 74
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 76
    const/16 v0, 0x2e

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    .line 228
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 229
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 231
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 233
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 232
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 234
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 236
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 235
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 238
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 237
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 239
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 240
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 242
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 241
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    .line 244
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 243
    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 245
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 247
    sget-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 246
    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 248
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    .line 250
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 252
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 251
    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 254
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 253
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 256
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 255
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    .line 258
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 257
    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    .line 260
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 259
    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    .line 262
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 261
    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 264
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 263
    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 266
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 265
    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 267
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    .line 268
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 50
    return-void

    .line 74
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

    .line 75
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

    .line 77
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

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
