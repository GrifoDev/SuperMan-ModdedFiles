.class public final enum Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
.super Ljava/lang/Enum;
.source "SemTrustedApplicationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrustedAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum AUTHENTICATOR_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

.field public static final enum FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string/jumbo v1, "AUTHENTICATOR_TRUSTED_APP"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->AUTHENTICATOR_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string/jumbo v1, "FINGERPRINT_TRUSTED_APP"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    new-instance v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const-string/jumbo v1, "DEVICE_ROOT_KEY_TRUSTED_APP"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->AUTHENTICATOR_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .locals 1

    const-class v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .locals 1

    sget-object v0, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->$VALUES:[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    return-object v0
.end method
