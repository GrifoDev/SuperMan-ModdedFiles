.class public final enum Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecAppLockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "Pattern"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "Password"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "BackupPin"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string/jumbo v1, "FingerPrint"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1

    const-class v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .locals 1

    sget-object v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->$VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method
