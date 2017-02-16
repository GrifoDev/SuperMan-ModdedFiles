.class Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final builderIndex:I

.field final checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field final keyIndex:I


# direct methods
.method constructor <init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lsun/security/ssl/X509KeyManagerImpl$CheckResult;)V
    .locals 0
    .param p1, "builderIndex"    # I
    .param p2, "keyIndex"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "checkResult"    # Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    .line 451
    iput p2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    .line 452
    iput-object p3, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    .line 453
    iput-object p5, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    .line 449
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 456
    check-cast p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->compareTo(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)I
    .locals 3
    .param p1, "other"    # Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .prologue
    .line 457
    iget-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    iget-object v2, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 458
    .local v0, "result":I
    if-nez v0, :cond_0

    iget v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    iget v2, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->keyIndex:I

    sub-int v0, v1, v2

    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (verified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    if-nez v1, :cond_0

    .line 464
    return-object v0

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Builder #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", alias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
