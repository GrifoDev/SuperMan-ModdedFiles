.class public final enum Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
.super Ljava/lang/Enum;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field public static final enum UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string/jumbo v1, "PRE_SHARED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string/jumbo v1, "PASS_PHRASE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    new-instance v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const-string/jumbo v1, "ASYMMETRIC"

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PRE_SHARED:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->PASS_PHRASE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->ASYMMETRIC:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->$VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->$VALUES:[Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method
