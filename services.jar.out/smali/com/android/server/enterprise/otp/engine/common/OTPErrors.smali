.class public Lcom/android/server/enterprise/otp/engine/common/OTPErrors;
.super Ljava/lang/Object;
.source "OTPErrors.java"


# static fields
.field private static DB_ERROR:I

.field public static final DB_NO_ROW_DELETED:I

.field public static final DB_NO_ROW_FOUND:I

.field public static final DB_NO_ROW_INSERTED:I

.field public static final DB_NO_ROW_UPDATED:I

.field public static final DB_PACKAGE_NAME_INVALID:I

.field public static final DB_TOKENID_ALREADY_EXISTS:I

.field public static final DB_TOKENID_INVALID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xf300

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_INVALID:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_TOKENID_ALREADY_EXISTS:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_FOUND:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_UPDATED:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_DELETED:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x6

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_NO_ROW_INSERTED:I

    sget v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_ERROR:I

    add-int/lit8 v0, v0, 0x7

    sput v0, Lcom/android/server/enterprise/otp/engine/common/OTPErrors;->DB_PACKAGE_NAME_INVALID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
