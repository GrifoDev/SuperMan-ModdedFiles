.class public final enum Ljava/security/CryptoPrimitive;
.super Ljava/lang/Enum;
.source "CryptoPrimitive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/security/CryptoPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/security/CryptoPrimitive;

.field public static final enum BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

.field public static final enum KEY_WRAP:Ljava/security/CryptoPrimitive;

.field public static final enum MAC:Ljava/security/CryptoPrimitive;

.field public static final enum MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

.field public static final enum PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

.field public static final enum SECURE_RANDOM:Ljava/security/CryptoPrimitive;

.field public static final enum SIGNATURE:Ljava/security/CryptoPrimitive;

.field public static final enum STREAM_CIPHER:Ljava/security/CryptoPrimitive;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "MESSAGE_DIGEST"

    invoke-direct {v0, v1, v3}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    .line 39
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "SECURE_RANDOM"

    invoke-direct {v0, v1, v4}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    .line 44
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "BLOCK_CIPHER"

    invoke-direct {v0, v1, v5}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    .line 49
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "STREAM_CIPHER"

    invoke-direct {v0, v1, v6}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    .line 54
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "MAC"

    invoke-direct {v0, v1, v7}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    .line 59
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "KEY_WRAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    .line 64
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "PUBLIC_KEY_ENCRYPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v0, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    .line 69
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "SIGNATURE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 72
    sput-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 74
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "KEY_ENCAPSULATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    .line 79
    new-instance v0, Ljava/security/CryptoPrimitive;

    const-string/jumbo v1, "KEY_AGREEMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/security/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    .line 82
    sput-object v0, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/security/CryptoPrimitive;

    sget-object v1, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    aput-object v1, v0, v3

    sget-object v1, Ljava/security/CryptoPrimitive;->SECURE_RANDOM:Ljava/security/CryptoPrimitive;

    aput-object v1, v0, v4

    sget-object v1, Ljava/security/CryptoPrimitive;->BLOCK_CIPHER:Ljava/security/CryptoPrimitive;

    aput-object v1, v0, v5

    sget-object v1, Ljava/security/CryptoPrimitive;->STREAM_CIPHER:Ljava/security/CryptoPrimitive;

    aput-object v1, v0, v6

    sget-object v1, Ljava/security/CryptoPrimitive;->MAC:Ljava/security/CryptoPrimitive;

    aput-object v1, v0, v7

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_WRAP:Ljava/security/CryptoPrimitive;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/security/CryptoPrimitive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Ljava/security/CryptoPrimitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/security/CryptoPrimitive;

    return-object v0
.end method

.method public static values()[Ljava/security/CryptoPrimitive;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ljava/security/CryptoPrimitive;->$VALUES:[Ljava/security/CryptoPrimitive;

    return-object v0
.end method
