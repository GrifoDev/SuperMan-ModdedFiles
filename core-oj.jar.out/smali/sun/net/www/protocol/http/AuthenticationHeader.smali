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

    const/4 v0, 0x0

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v1, "http.auth.preference"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

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

    :cond_0
    const-string/jumbo v0, "negotiate"

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    iput-object p3, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    iput-boolean p4, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    iput-object p1, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthenticationHeader;->parse()V

    return-void
.end method

.method private parse()V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->rsp:Lsun/net/www/MessageHeader;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hdrname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v0, Lsun/net/www/HeaderParser;

    invoke-direct {v0, v6}, Lsun/net/www/HeaderParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/net/www/HeaderParser;->keys()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lsun/net/www/HeaderParser;->findValue(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    move-result-object v1

    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v5, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-le v2, v5, :cond_0

    invoke-virtual {v0, v5, v2}, Lsun/net/www/HeaderParser;->subsequence(II)Lsun/net/www/HeaderParser;

    move-result-object v1

    invoke-virtual {v1, v12}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    new-instance v11, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    invoke-direct {v11, v1, v6}, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;-><init>(Lsun/net/www/HeaderParser;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    sget-object v11, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    if-nez v9, :cond_e

    :cond_5
    if-nez v9, :cond_6

    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_a

    :cond_6
    :goto_2
    if-nez v9, :cond_7

    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_c

    :cond_7
    :goto_3
    if-nez v9, :cond_8

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "digest"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    if-nez v9, :cond_8

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "ntlm"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    if-nez v9, :cond_8

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "basic"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->parser:Lsun/net/www/HeaderParser;

    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    iget-object v10, v9, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;->raw:Ljava/lang/String;

    iput-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    :cond_9
    return-void

    :cond_a
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "negotiate"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    if-eqz v8, :cond_6

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    if-eqz v10, :cond_b

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    const-string/jumbo v12, "Negotiate"

    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    move-result v10

    if-eqz v10, :cond_b

    :goto_5
    move-object v9, v8

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->schemes:Ljava/util/HashMap;

    const-string/jumbo v11, "kerberos"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/net/www/protocol/http/AuthenticationHeader$SchemeMapValue;

    if-eqz v8, :cond_7

    iget-object v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    if-eqz v10, :cond_d

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    iget-object v11, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    const-string/jumbo v12, "Kerberos"

    invoke-direct {v10, v11, v12}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-static {v10}, Lsun/net/www/protocol/http/NegotiateAuthentication;->isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z

    move-result v10

    if-eqz v10, :cond_d

    :goto_6
    move-object v9, v8

    goto :goto_3

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    iget-boolean v10, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->dontUseNegotiate:Z

    if-eqz v10, :cond_8

    sget-object v10, Lsun/net/www/protocol/http/AuthenticationHeader;->authPref:Ljava/lang/String;

    const-string/jumbo v11, "negotiate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v9, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    return-object v0
.end method

.method public headerParser()Lsun/net/www/HeaderParser;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    return-object v0
.end method

.method public isPresent()Z
    .locals 1

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

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred_r:Ljava/lang/String;

    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationHeader;->preferred:Lsun/net/www/HeaderParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/net/www/HeaderParser;->findKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
