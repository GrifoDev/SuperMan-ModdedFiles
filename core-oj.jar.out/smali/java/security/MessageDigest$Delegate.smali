.class Ljava/security/MessageDigest$Delegate;
.super Ljava/security/MessageDigest;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Delegate"
.end annotation


# instance fields
.field private digestSpi:Ljava/security/MessageDigestSpi;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v2, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    instance-of v2, v2, Ljava/lang/Cloneable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v2}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    new-instance v1, Ljava/security/MessageDigest$Delegate;

    invoke-static {p0}, Ljava/security/MessageDigest;->-get0(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/security/MessageDigest;->-get1(Ljava/security/MessageDigest;)Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;

    invoke-static {p0}, Ljava/security/MessageDigest;->-get2(Ljava/security/MessageDigest;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-set1(Ljava/security/MessageDigest;I)I

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v2}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v2
.end method

.method protected engineDigest([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method protected engineDigest()[B
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    return-void
.end method
