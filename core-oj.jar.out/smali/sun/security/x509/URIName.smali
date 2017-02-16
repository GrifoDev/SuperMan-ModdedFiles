.class public Lsun/security/x509/URIName;
.super Ljava/lang/Object;
.source "URIName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private host:Ljava/lang/String;

.field private hostDNS:Lsun/security/x509/DNSName;

.field private hostIP:Lsun/security/x509/IPAddressName;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 113
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "URI name must include scheme:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "use":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/io/IOException;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 116
    .end local v3    # "use":Ljava/net/URISyntaxException;
    :cond_0
    iget-object v4, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_2

    .line 124
    iget-object v4, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "ipV6Host":Ljava/lang/String;
    :try_start_1
    new-instance v4, Lsun/security/x509/IPAddressName;

    invoke-direct {v4, v2}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local v2    # "ipV6Host":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name (host portion is not a valid IPv6 address):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "ipV6Host":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v4, Lsun/security/x509/DNSName;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    .line 138
    .restart local v0    # "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lsun/security/x509/IPAddressName;

    iget-object v5, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v4, v5}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 139
    :catch_3
    move-exception v1

    .line 140
    .local v1, "ioe2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid URI name (host portion is not a valid DNS name, IPv4 address, or IPv6 address):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method constructor <init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "hostDNS"    # Lsun/security/x509/DNSName;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    .line 188
    iput-object p2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    .line 186
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;
    .locals 9
    .param p0, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "host":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_0

    .line 171
    new-instance v1, Lsun/security/x509/DNSName;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "hostDNS":Lsun/security/x509/DNSName;
    :goto_0
    new-instance v6, Lsun/security/x509/URIName;

    invoke-direct {v6, v4, v0, v1}, Lsun/security/x509/URIName;-><init>(Ljava/net/URI;Ljava/lang/String;Lsun/security/x509/DNSName;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 162
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    .end local v4    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 163
    .local v5, "use":Ljava/net/URISyntaxException;
    new-instance v6, Ljava/io/IOException;

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .line 173
    .end local v5    # "use":Ljava/net/URISyntaxException;
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v4    # "uri":Ljava/net/URI;
    :cond_0
    :try_start_2
    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, v0}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1    # "hostDNS":Lsun/security/x509/DNSName;
    goto :goto_0

    .line 176
    .end local v1    # "hostDNS":Lsun/security/x509/DNSName;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/io/IOException;

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/IOException;

    throw v6

    .line 181
    .end local v0    # "host":Ljava/lang/String;
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid URI name constraint (should not include scheme):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 10
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    .line 323
    if-nez p1, :cond_1

    .line 324
    const/4 v0, -0x1

    .line 375
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :cond_0
    :goto_0
    return v0

    .line 325
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_1
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 326
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .end local v0    # "constraintType":I
    :cond_2
    move-object v6, p1

    .line 332
    check-cast v6, Lsun/security/x509/URIName;

    invoke-virtual {v6}, Lsun/security/x509/URIName;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "otherHost":Ljava/lang/String;
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 336
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 338
    .end local v0    # "constraintType":I
    :cond_3
    check-cast p1, Lsun/security/x509/URIName;

    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/URIName;->getHostObject()Ljava/lang/Object;

    move-result-object v4

    .line 340
    .local v4, "otherHostObject":Ljava/lang/Object;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    if-eqz v6, :cond_5

    .line 341
    instance-of v6, v4, Lsun/security/x509/DNSName;

    if-eqz v6, :cond_5

    .line 346
    iget-object v6, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_6

    const/4 v5, 0x1

    .line 347
    .local v5, "thisDomain":Z
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    const/4 v2, 0x1

    .local v2, "otherDomain":Z
    :goto_2
    move-object v1, v4

    .line 348
    check-cast v1, Lsun/security/x509/DNSName;

    .line 351
    .local v1, "otherDNS":Lsun/security/x509/DNSName;
    iget-object v6, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    invoke-virtual {v6, v1}, Lsun/security/x509/DNSName;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v0

    .line 354
    .restart local v0    # "constraintType":I
    if-nez v5, :cond_4

    if-eqz v2, :cond_8

    .line 364
    :cond_4
    :goto_3
    if-eq v5, v2, :cond_0

    .line 365
    if-nez v0, :cond_0

    .line 366
    if-eqz v5, :cond_a

    .line 367
    const/4 v0, 0x2

    goto :goto_0

    .line 343
    .end local v0    # "constraintType":I
    .end local v1    # "otherDNS":Lsun/security/x509/DNSName;
    .end local v2    # "otherDomain":Z
    .end local v5    # "thisDomain":Z
    :cond_5
    const/4 v0, 0x3

    .line 341
    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 346
    .end local v0    # "constraintType":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "thisDomain":Z
    goto :goto_1

    .line 347
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "otherDomain":Z
    goto :goto_2

    .line 355
    .restart local v0    # "constraintType":I
    .restart local v1    # "otherDNS":Lsun/security/x509/DNSName;
    :cond_8
    const/4 v6, 0x2

    if-eq v0, v6, :cond_9

    .line 356
    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    .line 357
    :cond_9
    const/4 v0, 0x3

    goto :goto_3

    .line 369
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-ne p0, p1, :cond_0

    .line 223
    const/4 v1, 0x1

    return v1

    .line 226
    :cond_0
    instance-of v1, p1, Lsun/security/x509/URIName;

    if-nez v1, :cond_1

    .line 227
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 230
    check-cast v0, Lsun/security/x509/URIName;

    .line 232
    .local v0, "other":Lsun/security/x509/URIName;
    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lsun/security/x509/URIName;->hostIP:Lsun/security/x509/IPAddressName;

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lsun/security/x509/URIName;->hostDNS:Lsun/security/x509/DNSName;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x6

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtreeDepth()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    :try_start_0
    new-instance v0, Lsun/security/x509/DNSName;

    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    iget-object v2, p0, Lsun/security/x509/URIName;->host:Ljava/lang/String;

    invoke-direct {v0, v2}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .local v0, "dnsName":Lsun/security/x509/DNSName;
    invoke-virtual {v0}, Lsun/security/x509/DNSName;->subtreeDepth()I

    move-result v2

    return v2

    .line 390
    .end local v0    # "dnsName":Lsun/security/x509/DNSName;
    :catch_0
    move-exception v1

    .line 391
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "URIName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/URIName;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
