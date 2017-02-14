.class final enum Ljavax/crypto/Cipher$NeedToSet;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NeedToSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/crypto/Cipher$NeedToSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum BOTH:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum MODE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum NONE:Ljavax/crypto/Cipher$NeedToSet;

.field public static final enum PADDING:Ljavax/crypto/Cipher$NeedToSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string/jumbo v1, "MODE"

    invoke-direct {v0, v1, v3}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string/jumbo v1, "PADDING"

    invoke-direct {v0, v1, v4}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    new-instance v0, Ljavax/crypto/Cipher$NeedToSet;

    const-string/jumbo v1, "BOTH"

    invoke-direct {v0, v1, v5}, Ljavax/crypto/Cipher$NeedToSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/crypto/Cipher$NeedToSet;

    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/crypto/Cipher$NeedToSet;
    .locals 1

    const-class v0, Ljavax/crypto/Cipher$NeedToSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method

.method public static values()[Ljavax/crypto/Cipher$NeedToSet;
    .locals 1

    sget-object v0, Ljavax/crypto/Cipher$NeedToSet;->$VALUES:[Ljavax/crypto/Cipher$NeedToSet;

    return-object v0
.end method
