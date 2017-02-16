.class final Lsun/security/ssl/ServerNameExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/ServerNameExtension$ServerName;
    }
.end annotation


# static fields
.field static final NAME_HOST_NAME:I


# instance fields
.field private listLength:I

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/ServerNameExtension$ServerName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "hostnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 308
    sget-object v3, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v3}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 310
    iput v5, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    .line 312
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "hostname$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, "hostname":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    new-instance v2, Lsun/security/ssl/ServerNameExtension$ServerName;

    invoke-direct {v2, v5, v0}, Lsun/security/ssl/ServerNameExtension$ServerName;-><init>(ILjava/lang/String;)V

    .line 317
    .local v2, "serverName":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    iget v4, v2, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    add-int/2addr v3, v4

    iput v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    goto :goto_0

    .line 324
    .end local v0    # "hostname":Ljava/lang/String;
    .end local v2    # "serverName":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_1
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 325
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    .line 326
    const-string/jumbo v4, "The ServerNameList MUST NOT contain more than one name of the same name_type"

    .line 325
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_2
    iget v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    if-nez v3, :cond_3

    .line 335
    new-instance v3, Ljavax/net/ssl/SSLProtocolException;

    .line 336
    const-string/jumbo v4, "The ServerNameList cannot be empty"

    .line 335
    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_3
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 342
    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v2}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    .line 344
    move v1, p2

    .line 345
    .local v1, "remains":I
    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    .line 346
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    move-result v2

    iput v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    .line 347
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    if-eqz v2, :cond_0

    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    add-int/lit8 v2, v2, 0x2

    if-eq v2, p2, :cond_1

    .line 348
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " extension"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_1
    add-int/lit8 v1, p2, -0x2

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    .line 354
    :goto_0
    if-lez v1, :cond_3

    .line 355
    new-instance v0, Lsun/security/ssl/ServerNameExtension$ServerName;

    invoke-direct {v0, p1}, Lsun/security/ssl/ServerNameExtension$ServerName;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    .line 356
    .local v0, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 361
    .end local v0    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_2
    if-nez p2, :cond_3

    .line 362
    iput v3, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    .line 366
    :cond_3
    if-eqz v1, :cond_4

    .line 367
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "Invalid server_name extension"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :cond_4
    return-void
.end method


# virtual methods
.method length()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    add-int/lit8 v0, v0, 0x6

    goto :goto_0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 412
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 413
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    if-eqz v2, :cond_0

    .line 414
    iget v2, p0, Lsun/security/ssl/ServerNameExtension;->listLength:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    .line 416
    iget-object v2, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ServerNameExtension$ServerName;

    .line 417
    .local v0, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    iget v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 418
    iget-object v2, v0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    goto :goto_0

    .line 410
    .end local v0    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    .end local v1    # "name$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/security/ssl/ServerNameExtension;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/ssl/ServerNameExtension$ServerName;

    .line 426
    .local v1, "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 429
    .end local v1    # "name":Lsun/security/ssl/ServerNameExtension$ServerName;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Extension "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", server_name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
