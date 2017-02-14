.class public Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Unknown"


# static fields
.field static final none:[B


# instance fields
.field final mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "error"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->none:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    return-void
.end method


# virtual methods
.method public getDigestValue()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->none:[B

    return-object v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update(B)V

    return-void
.end method

.method public write([B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/DigesterOutputStream;->mda:Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->update([BII)V

    return-void
.end method
