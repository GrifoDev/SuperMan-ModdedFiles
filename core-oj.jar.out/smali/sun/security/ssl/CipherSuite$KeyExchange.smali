.class final enum Lsun/security/ssl/CipherSuite$KeyExchange;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyExchange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/CipherSuite$KeyExchange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

.field public static final enum K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;


# instance fields
.field final allowed:Z

.field private final alwaysAvailable:Z

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_NULL"

    const-string/jumbo v2, "NULL"

    invoke-direct {v0, v1, v6, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_RSA"

    const-string/jumbo v2, "RSA"

    invoke-direct {v0, v1, v5, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_RSA_EXPORT"

    const-string/jumbo v2, "RSA_EXPORT"

    invoke-direct {v0, v1, v7, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_DH_RSA"

    const-string/jumbo v2, "DH_RSA"

    invoke-direct {v0, v1, v8, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_DH_DSS"

    const-string/jumbo v2, "DH_DSS"

    invoke-direct {v0, v1, v9, v2, v6}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_DHE_DSS"

    const-string/jumbo v2, "DHE_DSS"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_DHE_RSA"

    const-string/jumbo v2, "DHE_RSA"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_DH_ANON"

    const-string/jumbo v2, "DH_anon"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_ECDH_ECDSA"

    const-string/jumbo v2, "ECDH_ECDSA"

    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    move-result v3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_ECDH_RSA"

    const-string/jumbo v2, "ECDH_RSA"

    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    move-result v3

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_ECDHE_ECDSA"

    const-string/jumbo v2, "ECDHE_ECDSA"

    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    move-result v3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_ECDHE_RSA"

    const-string/jumbo v2, "ECDHE_RSA"

    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    move-result v3

    const/16 v4, 0xb

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_ECDH_ANON"

    const-string/jumbo v2, "ECDH_anon"

    invoke-static {}, Lsun/security/ssl/CipherSuite;->-get0()Z

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_KRB5"

    const-string/jumbo v2, "KRB5"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_KRB5_EXPORT"

    const-string/jumbo v2, "KRB5_EXPORT"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    new-instance v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    const-string/jumbo v1, "K_SCSV"

    const-string/jumbo v2, "SCSV"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2, v5}, Lsun/security/ssl/CipherSuite$KeyExchange;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v0, 0x10

    new-array v0, v0, [Lsun/security/ssl/CipherSuite$KeyExchange;

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_NULL:Lsun/security/ssl/CipherSuite$KeyExchange;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_RSA_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    aput-object v1, v0, v7

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    aput-object v1, v0, v8

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    aput-object v1, v0, v9

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_DSS:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_DH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_ECDSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDHE_RSA:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_ECDH_ANON:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_KRB5_EXPORT:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$KeyExchange;->K_SCSV:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    if-eqz p4, :cond_0

    const-string/jumbo v1, "EC"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    return-void

    :cond_1
    const-string/jumbo v1, "KRB"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite$KeyExchange;
    .locals 1

    const-class v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite$KeyExchange;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/CipherSuite$KeyExchange;
    .locals 1

    sget-object v0, Lsun/security/ssl/CipherSuite$KeyExchange;->$VALUES:[Lsun/security/ssl/CipherSuite$KeyExchange;

    return-object v0
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->alwaysAvailable:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    const-string/jumbo v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    const-string/jumbo v2, "KRB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lsun/security/ssl/JsseJce;->isKerberosAvailable()Z

    move-result v0

    :cond_3
    return v0

    :cond_4
    iget-boolean v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->allowed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/CipherSuite$KeyExchange;->name:Ljava/lang/String;

    return-object v0
.end method
