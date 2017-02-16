.class public final Ljavax/net/ssl/SNIHostName;
.super Ljavax/net/ssl/SNIServerName;
.source "SNIHostName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;
    }
.end annotation


# instance fields
.field private final hostname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string/jumbo v0, "Server name value of host_name cannot be null"

    .line 100
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    const/4 v1, 0x2

    .line 99
    invoke-static {v0, v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 103
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    .line 105
    iput-object p1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    .line 95
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoded"    # [B

    .prologue
    .line 164
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Ljavax/net/ssl/SNIServerName;-><init>(I[B)V

    .line 171
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 172
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 173
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 176
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-direct {p0}, Ljavax/net/ssl/SNIHostName;->checkHostName()V

    .line 162
    return-void

    .line 177
    .end local v0    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 179
    const-string/jumbo v3, "The encoded server name value is invalid"

    .line 178
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkHostName()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 315
    const-string/jumbo v1, "Server name value of host_name cannot be empty"

    .line 314
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 320
    const-string/jumbo v1, "Server name value of host_name cannot have the trailing dot"

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    return-void
.end method

.method public static createSNIMatcher(Ljava/lang/String;)Ljavax/net/ssl/SNIMatcher;
    .locals 2
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    .line 303
    if-nez p0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/NullPointerException;

    .line 305
    const-string/jumbo v1, "The regular expression cannot be null"

    .line 304
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    new-instance v0, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName$SNIHostNameMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 219
    if-ne p0, p1, :cond_0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SNIHostName;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    check-cast p1, Ljavax/net/ssl/SNIHostName;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 227
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAsciiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 243
    .local v0, "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type=host_name (0), value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SNIHostName;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
