.class public Lcom/samsung/android/knox/SemPersonaInfo;
.super Ljava/lang/Object;
.source "SemPersonaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemPersonaInfo$1;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_CMK:I = 0x2

.field public static final AUTH_TYPE_PWD_HASH:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/knox/SemPersonaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_ENCRYPT:I = 0x20

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_SECURE_STORAGE:I = 0x40

.field public static final KLMS_LOCKED:I = 0x9

.field public static final KNOX_SECURITY_TIMEOUT_DEFAULT:I = 0x927c0

.field public static final KNOX_STATE_ADMIN_LOCKED:I = 0x8

.field public static final KNOX_STATE_TIMA_COMPROMISED:I = 0x7

.field public static final KNOX_STATE_UPGRADING:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "SemPersonaInfo"

.field public static final PERSONA_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_CREATE:I = 0x4

.field public static final STATE_DELETING:I = 0x3

.field public static final STATE_INITIALIZE:I = 0x1

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOCKED:I = 0x2

.field public static final STATE_RESET:I = 0x63

.field public static final STATE_RESET_PASSWORD:I = 0x5


# instance fields
.field private adminPackageName:Ljava/lang/String;

.field private adminUid:I

.field public authenticationType:I

.field public canUseBluetooth:Z

.field public canUseExtSdcard:Z

.field public cmkFormat:I

.field public containerAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private creatorUid:I

.field public currentState:Ljava/lang/String;

.field public encryptedId:Ljava/lang/String;

.field private fidoRpContext:Ljava/lang/String;

.field private fingerCount:I

.field private fingerprintHashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprintIndexList:[I

.field public flags:I

.field public fotaUpgradeVersion:I

.field public fwversion:Ljava/lang/String;

.field public id:I

.field private installedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAdminLockedJustBefore:Z

.field public isBBCContainer:Z

.field public isEnabledFingerprintIndex:Z

.field public isEulaShown:Z

.field private isFingerIdentifyFailed:Z

.field private isFingerReset:Z

.field private isFingerTimeout:Z

.field public isFsMounted:Z

.field private isIrisReset:Z

.field private isIrisTimeout:Z

.field public isPureContainer:Z

.field private isQuickAccessUIEnabled:Z

.field public isRestarting:Z

.field public isSdpMinor:Z

.field public isSecureFolder:Z

.field private isUnlockedAfterTurnOn:Z

.field private isUnlockedByCe:Z

.field public isUserManaged:Z

.field public kioskModeEnabled:Z

.field private knoxBackupPin:Ljava/lang/String;

.field private knoxSecurityTimeoutValue:I

.field private lastKeyguardUnlockTime:J

.field public lastLoggedOutTime:J

.field public lightWeightContainer:Z

.field public lockInProgress:Z

.field public migratedToM:Z

.field public needsRestart:Z

.field parentId:I

.field public partial:Z

.field public personaFwkVersion:I

.field public removePersona:Z

.field public resetPassword:Z

.field public resetPersonaOnReboot:Z

.field public samsungAccount:Ljava/lang/String;

.field public sdpActive:Z

.field public sdpEnabled:Z

.field public setupComplete:Z

.field private setupWizardApkLocation:Ljava/lang/String;

.field public shownFolderHelp:Z

.field public shownLauncherHelp:Z

.field public timaEcrytfsIndex:I

.field public timaPasswordHintIndex:I

.field public timaPasswordIndex:I

.field public timaPwdResetTokenIndex:I

.field public timaVersion:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public upgradeInProgress:Z

.field private useEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/SemPersonaInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/SemPersonaInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iput p2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput p3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iput p4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto/16 :goto_16

    :cond_17
    move v0, v2

    goto/16 :goto_17

    :cond_18
    move v0, v2

    goto/16 :goto_18

    :cond_19
    move v0, v2

    goto/16 :goto_19

    :cond_1a
    move v0, v2

    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    goto/16 :goto_1f

    :cond_20
    move v1, v2

    goto :goto_20
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/SemPersonaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemPersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/SemPersonaInfo;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    iget-wide v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iget-wide v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    return-void
.end method

.method private showFingerprintIndexStatus()V
    .locals 4

    const-string/jumbo v1, "SemPersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnabledFingerprintIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemPersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fingerprintIndexList.length  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const-string/jumbo v1, "SemPersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fingerprintIndexList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "SemPersonaInfo"

    const-string/jumbo v2, "fingerprintIndexList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SemPersonaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fingerprintHashList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const-string/jumbo v2, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fingerprintHashList["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "SemPersonaInfo"

    const-string/jumbo v2, "fingerprintHashList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    return v0
.end method

.method public getAuthenticationType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    const-string/jumbo v0, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFidoRpContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    return v0
.end method

.method public getFingerprintHashList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called getFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    return-object v0
.end method

.method public getFingerprintIndexList()[I
    .locals 2

    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called getFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    return v0
.end method

.method public getInstalledPkgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsIrisReset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    return v0
.end method

.method public getIsIrisTimeout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    return v0
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getIsUnlockedByCe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    return v0
.end method

.method public getKnoxBackupPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxSecurityTimeoutValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getLastLoggedOutTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    return-wide v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    return v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isECContainer()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEncodingRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    return v0
.end method

.method public isMigratedPersona()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFileSystem()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFolderEnabled()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureStorageEnabled()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdminPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    return-void
.end method

.method public setAdminUid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    return-void
.end method

.method public setAuthenticationType(I)V
    .locals 3

    const-string/jumbo v0, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3

    const-string/jumbo v0, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setCreatorUid: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    return-void
.end method

.method public setEncodingRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    return-void
.end method

.method public setFidoRpContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    return-void
.end method

.method public setFingerCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    return-void
.end method

.method public setFingerprintHashList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called setFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    goto :goto_0
.end method

.method public setFingerprintIndexList([I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called setFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    goto :goto_0
.end method

.method public setInstalledPkgList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    return-void
.end method

.method public setIsFingerReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    return-void
.end method

.method public setIsIrisReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    return-void
.end method

.method public setIsIrisTimeout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    return-void
.end method

.method public setIsQuickAccessUIEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    return-void
.end method

.method public setIsUnlockedByCe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    return-void
.end method

.method public setKnoxBackupPin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-void
.end method

.method public setKnoxSecurityTimeoutValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SemPersonaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSetupWizardApkLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemPersonaInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyKnoxBackupPin(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    if-eqz v0, :cond_20

    :goto_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->currentState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->containerAttributes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto/16 :goto_16

    :cond_17
    move v0, v2

    goto/16 :goto_17

    :cond_18
    move v0, v2

    goto/16 :goto_18

    :cond_19
    move v0, v2

    goto/16 :goto_19

    :cond_1a
    move v0, v2

    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    goto :goto_1e

    :cond_1f
    move v0, v2

    goto :goto_1f

    :cond_20
    move v1, v2

    goto :goto_20
.end method
