.class public Lsun/net/www/protocol/http/AuthenticationHeader;
.super Ljava/lang/Object;
.source "AuthenticationHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    }
.end annotation


# static fields
.field static authPref:Ljava/lang/String;


# instance fields
.field dontUseNegotiate:Z

.field private final hci:Lsun/net/www/protocol/http/HttpCallerInfo;

.field hdrname:Ljava/lang/String;

.field preferred:Lsun/net/www/HeaderParser;

.field preferred_r:Ljava/lang/String;

.field rsp:Lsun/net/www/MessageHeader;

.field schemes:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    .line 97
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "http.auth.preference"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    .line 105
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    .line 107
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    const-string/jumbo v1, "spnego"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    const-string/jumbo v1, "kerberos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v0, "negotiate"

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    .line 79
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    .locals 1
    .param p1, "hdrname"    # Ljava/lang/String;
    .param p2, "response"    # Lsun/net/www/MessageHeader;
    .param p3, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;
    .param p4, "dontUseNegotiate"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    .line 121
    iput-object p3, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    .line 122
    iput-boolean p4, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    .line 123
    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    .line 124
    iput-object p1, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    .line 126
    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthenticationHeader;->parse()V

    .line 120
    return-void
.end method

.method private parse()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 147
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 148
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 149
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 150
    .local v6, "raw":Ljava/lang/String;
    new-instance v0, Lsun/net/www/HeaderParser;

    invoke-direct {v0, v6}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "hp":Lsun/net/www/HeaderParser;
    invoke-virtual {v0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 153
    .local v4, "keys":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, -0x1

    .local v5, "lastSchemeIndex":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 154
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 156
    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    .line 157
    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    move-result-object v1

    .line 158
    .local v1, "hpn":Lsun/net/www/HeaderParser;
    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "scheme":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v1    # "hpn":Lsun/net/www/HeaderParser;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_1
    move v5, v2

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_3
    if-le v2, v5, :cond_0

    .line 165
    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    move-result-object v1

    .line 166
    .restart local v1    # "hpn":Lsun/net/www/HeaderParser;
    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v7

    .line 167
    .restart local v7    # "scheme":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v0    # "hp":Lsun/net/www/HeaderParser;
    .end local v1    # "hpn":Lsun/net/www/HeaderParser;
    .end local v2    # "i":I
    .end local v4    # "keys":Ljava/util/Iterator;
    .end local v5    # "lastSchemeIndex":I
    .end local v6    # "raw":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 175
    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    sget-object v11, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_e

    .line 177
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_5
    if-nez v9, :cond_6

    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_a

    .line 187
    :cond_6
    :goto_2
    if-nez v9, :cond_7

    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_c

    .line 207
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    .line 208
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "digest"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_8

    .line 209
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "ntlm"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-nez v9, :cond_8

    .line 210
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "basic"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .line 220
    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    .line 221
    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->parser:Lsun/net/www/HeaderParser;

    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    .line 222
    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->raw:Ljava/lang/String;

    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    .line 146
    :cond_9
    return-void

    .line 178
    :cond_a
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "negotiate"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .line 179
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-eqz v8, :cond_6

    .line 180
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    if-eqz v10, :cond_b

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    const-string/jumbo v12, "Negotiate"

    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 183
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :goto_5
    move-object v9, v8

    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_2

    .line 181
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_b
    const/4 v8, 0x0

    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_5

    .line 188
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "kerberos"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    .line 189
    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    if-eqz v8, :cond_7

    .line 200
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    if-eqz v10, :cond_d

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    const-string/jumbo v12, "Kerberos"

    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 203
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :goto_6
    move-object v9, v8

    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_3

    .line 201
    .end local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_d
    const/4 v8, 0x0

    .local v8, "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_6

    .line 215
    .end local v8    # "tmp":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    .restart local v9    # "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    :cond_e
    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_8

    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    const-string/jumbo v11, "negotiate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 216
    const/4 v9, 0x0

    .local v9, "v":Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;
    goto :goto_4
.end method


# virtual methods
.method public getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    return-object v0
.end method

.method public headerParser()Lsun/net/www/HeaderParser;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthenticationHeader: prefer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
