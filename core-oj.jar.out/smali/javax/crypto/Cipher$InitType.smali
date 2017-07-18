.class final enum Ljavax/crypto/Cipher$InitType;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/crypto/Cipher$InitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/crypto/Cipher$InitType;

.field public static final enum ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

.field public static final enum ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

.field public static final enum KEY:Ljavax/crypto/Cipher$InitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string/jumbo v1, "KEY"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string/jumbo v1, "ALGORITHM_PARAMS"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    new-instance v0, Ljavax/crypto/Cipher$InitType;

    const-string/jumbo v1, "ALGORITHM_PARAM_SPEC"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/Cipher$InitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v0, 0x3

    new-array v0, v0, [Ljavax/crypto/Cipher$InitType;

    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    aput-object v1, v0, v4

    sput-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$InitType;
    .locals 1

    const-class v0, Ljavax/crypto/Cipher$InitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher$InitType;

    return-object v0
.end method

.method public static values()[Ljavax/crypto/Cipher$InitType;
    .locals 1

    sget-object v0, Ljavax/crypto/Cipher$InitType;->$VALUES:[Ljavax/crypto/Cipher$InitType;

    return-object v0
.end method
