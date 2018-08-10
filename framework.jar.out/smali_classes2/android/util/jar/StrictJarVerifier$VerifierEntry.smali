.class Landroid/util/jar/StrictJarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierEntry"
.end annotation


# instance fields
.field private final certChains:[[Ljava/security/cert/Certificate;

.field private final digest:Ljava/security/MessageDigest;

.field private final hash:[B

.field private final name:Ljava/lang/String;

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            "[B[[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    iput-object p4, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    iput-object p5, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method verify()V
    .locals 4

    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarVerifier;->-wrap0([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/util/jar/StrictJarVerifier;->-wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
