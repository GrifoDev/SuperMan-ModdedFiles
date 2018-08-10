.class final enum Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
.super Ljava/lang/Enum;
.source "UseFaceLockSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

.field public static final enum FaceLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

.field public static final enum IrisLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    const-string/jumbo v1, "FaceLock"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->FaceLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    new-instance v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    const-string/jumbo v1, "IrisLock"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->IrisLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    sget-object v1, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->FaceLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->IrisLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->$VALUES:[Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->$VALUES:[Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    return-object v0
.end method
