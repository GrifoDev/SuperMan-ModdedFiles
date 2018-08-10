.class final enum Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
.super Ljava/lang/Enum;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Survey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fingerprint/FingerprintSettings$Survey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

.field public static final enum IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

.field public static final enum RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

.field public static final enum SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    const-string/jumbo v1, "RENAME"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    const-string/jumbo v1, "IDENTIFY"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    const-string/jumbo v1, "SAMSUNGPAY_LINK"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->RENAME:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->IDENTIFY:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->SAMSUNGPAY_LINK:Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintSettings$Survey;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintSettings$Survey;

    return-object v0
.end method
