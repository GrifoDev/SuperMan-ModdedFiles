.class public final Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "KnoxKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec$Builder;
    }
.end annotation


# instance fields
.field private final mAccessorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttestationRoot:Ljava/lang/String;

.field private final mExtendedKeyUsage:[Ljava/lang/String;

.field private final mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private final mKeyUsage:[Z

.field private final mKnoxCsrResponseRequired:Z

.field private final mKnoxObjectProtectionRequired:Z

.field private final mSubjectAlternativeName:[B


# direct methods
.method private constructor <init>(ZLjava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLandroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[B",
            "Landroid/security/keystore/KeyGenParameterSpec;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object p2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAccessorIds:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAdministratorIds:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKeyUsage:[Z

    iput-object p5, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mExtendedKeyUsage:[Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAttestationRoot:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKnoxCsrResponseRequired:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKnoxObjectProtectionRequired:Z

    iput-object p8, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mSubjectAlternativeName:[B

    return-void
.end method

.method synthetic constructor <init>(ZLjava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLandroid/security/keystore/KeyGenParameterSpec;Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;-><init>(ZLjava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLandroid/security/keystore/KeyGenParameterSpec;)V

    return-void
.end method


# virtual methods
.method public getAccessorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAccessorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdministratorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAdministratorIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttestationRoot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mAttestationRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedKeyUsage()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mExtendedKeyUsage:[Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKeyGenParameterSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKeyUsage:[Z

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeName()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mSubjectAlternativeName:[B

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->cloneIfNotNull([B)[B

    move-result-object v0

    return-object v0
.end method

.method public isKnoxCsrResponseRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKnoxCsrResponseRequired:Z

    return v0
.end method

.method public isKnoxObjectProtectionRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyGenParameterSpec;->mKnoxObjectProtectionRequired:Z

    return v0
.end method
