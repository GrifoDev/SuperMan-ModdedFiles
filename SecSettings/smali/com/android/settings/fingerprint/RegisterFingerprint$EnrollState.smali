.class final enum Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;
.super Ljava/lang/Enum;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

.field public static final enum ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

.field public static final enum NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

.field public static final enum PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    const-string/jumbo v1, "ENROLL"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->NONE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->PAUSE:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->$VALUES:[Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->$VALUES:[Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    return-object v0
.end method
