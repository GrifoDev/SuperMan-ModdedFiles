.class Lsun/security/x509/UnparseableExtension;
.super Lsun/security/x509/Extension;
.source "CertificateExtensions.java"


# instance fields
.field private name:Ljava/lang/String;

.field private why:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lsun/security/x509/Extension;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ext"    # Lsun/security/x509/Extension;
    .param p2, "why"    # Ljava/lang/Throwable;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lsun/security/x509/Extension;-><init>(Lsun/security/x509/Extension;)V

    .line 361
    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    .line 363
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v1

    .line 364
    .local v1, "extClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 365
    const-string/jumbo v3, "NAME"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 366
    .local v2, "field":Ljava/lang/reflect/Field;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "extClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iput-object p2, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    .line 358
    return-void

    .line 368
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "Unparseable "

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "extension due to\n"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lsun/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "\n\n"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
