.class final enum Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
.super Ljava/lang/Enum;
.source "FingerUnlockEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerUnlockEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FINGER_UNLOCK_EFFECT_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

.field public static final enum FAIL:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

.field public static final enum HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

.field public static final enum INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

.field public static final enum SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

.field public static final enum UNLOCK:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const-string/jumbo v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const-string/jumbo v1, "SHOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const-string/jumbo v1, "INTRO"

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const-string/jumbo v1, "UNLOCK"

    invoke-direct {v0, v1, v5}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->UNLOCK:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    new-instance v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v6}, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->FAIL:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->HIDDEN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->SHOWN:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->INTRO:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->UNLOCK:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->FAIL:Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->$VALUES:[Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
    .locals 1

    const-class v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;
    .locals 1

    sget-object v0, Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;->$VALUES:[Lcom/android/server/fingerprint/FingerUnlockEffect$FINGER_UNLOCK_EFFECT_STATUS;

    return-object v0
.end method
