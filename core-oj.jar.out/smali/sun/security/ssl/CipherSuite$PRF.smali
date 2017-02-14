.class final enum Lsun/security/ssl/CipherSuite$PRF;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PRF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/CipherSuite$PRF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_NONE:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

.field public static final enum P_SHA512:Lsun/security/ssl/CipherSuite$PRF;


# instance fields
.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    const-string/jumbo v1, "P_NONE"

    const-string/jumbo v3, "NONE"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    const-string/jumbo v1, "P_SHA256"

    const-string/jumbo v3, "SHA-256"

    const/4 v2, 0x1

    const/16 v4, 0x20

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    const-string/jumbo v1, "P_SHA384"

    const-string/jumbo v3, "SHA-384"

    const/4 v2, 0x2

    const/16 v4, 0x30

    const/16 v5, 0x80

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    new-instance v0, Lsun/security/ssl/CipherSuite$PRF;

    const-string/jumbo v1, "P_SHA512"

    const-string/jumbo v3, "SHA-512"

    const/4 v2, 0x3

    const/16 v4, 0x40

    const/16 v5, 0x80

    invoke-direct/range {v0 .. v5}, Lsun/security/ssl/CipherSuite$PRF;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->P_SHA512:Lsun/security/ssl/CipherSuite$PRF;

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/ssl/CipherSuite$PRF;

    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_NONE:Lsun/security/ssl/CipherSuite$PRF;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA256:Lsun/security/ssl/CipherSuite$PRF;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA384:Lsun/security/ssl/CipherSuite$PRF;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/CipherSuite$PRF;->P_SHA512:Lsun/security/ssl/CipherSuite$PRF;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/ssl/CipherSuite$PRF;->$VALUES:[Lsun/security/ssl/CipherSuite$PRF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashAlg:Ljava/lang/String;

    iput p4, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashLength:I

    iput p5, p0, Lsun/security/ssl/CipherSuite$PRF;->prfBlockSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite$PRF;
    .locals 1

    const-class v0, Lsun/security/ssl/CipherSuite$PRF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/CipherSuite$PRF;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/CipherSuite$PRF;
    .locals 1

    sget-object v0, Lsun/security/ssl/CipherSuite$PRF;->$VALUES:[Lsun/security/ssl/CipherSuite$PRF;

    return-object v0
.end method


# virtual methods
.method getPRFBlockSize()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfBlockSize:I

    return v0
.end method

.method getPRFHashAlg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method getPRFHashLength()I
    .locals 1

    iget v0, p0, Lsun/security/ssl/CipherSuite$PRF;->prfHashLength:I

    return v0
.end method
