.class final enum Lcom/android/settings/SimPersoLockSettings$LockState;
.super Ljava/lang/Enum;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/SimPersoLockSettings$LockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/SimPersoLockSettings$LockState;

.field public static final enum LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

.field public static final enum LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

.field public static final enum LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

.field public static final enum LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v1, "LOCK_NEW"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SimPersoLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v1, "LOCK_REENTER"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/SimPersoLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v1, "LOCK_CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/SimPersoLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v1, "LOCK_CONFIRM_AND_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/SimPersoLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/SimPersoLockSettings$LockState;

    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->$VALUES:[Lcom/android/settings/SimPersoLockSettings$LockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/SimPersoLockSettings$LockState;
    .locals 1

    const-class v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SimPersoLockSettings$LockState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/SimPersoLockSettings$LockState;
    .locals 1

    sget-object v0, Lcom/android/settings/SimPersoLockSettings$LockState;->$VALUES:[Lcom/android/settings/SimPersoLockSettings$LockState;

    return-object v0
.end method
