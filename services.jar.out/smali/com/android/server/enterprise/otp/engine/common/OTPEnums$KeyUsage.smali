.class public final enum Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
.super Ljava/lang/Enum;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

.field public static final enum VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "OTP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "CR"

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "ENCRYPT"

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "INTEGRITY"

    invoke-direct {v0, v1, v7}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "VERIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "UNLOCK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "DECRYPT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "KEYWRAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "UNWRAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "DERIVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const-string/jumbo v1, "GENERATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->$VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->$VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    return-object v0
.end method
