.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCertSha256Digest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computePackageCertSha256Digest(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/util/PackageUtils;->computeCertSha256Digest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static computeSha256Digest([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method
