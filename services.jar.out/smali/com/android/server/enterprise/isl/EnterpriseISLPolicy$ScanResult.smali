.class final Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScanResult"
.end annotation


# instance fields
.field private contentDigest:Ljava/security/MessageDigest;

.field private fileAttributeDigest:Ljava/security/MessageDigest;

.field fileCount:I

.field private fileNameDigest:Ljava/security/MessageDigest;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method constructor <init>()V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;

    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Algorithm %s does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "SHA-256"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
