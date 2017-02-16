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

.field private creatorUid:I

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

    .prologue
    .line 824
    new-instance v0, Lcom/samsung/android/knox/SemPersonaInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/SemPersonaInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/SemPersonaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 109
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 116
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 119
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 122
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 125
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 130
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 133
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 135
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 143
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 149
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 163
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 165
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 168
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 174
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 184
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 185
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 186
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 187
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 188
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 189
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 190
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 196
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 199
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 203
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 217
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 223
    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 225
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 228
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 230
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 232
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 234
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 236
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 238
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 242
    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 244
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 248
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 249
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 250
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 253
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    .line 255
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 429
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 460
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "creatorUid"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 109
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 116
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 119
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 122
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 125
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 130
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 133
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 135
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 143
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 149
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 163
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 165
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 168
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 174
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 184
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 185
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 186
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 187
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 188
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 189
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 190
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 196
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 199
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 203
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 217
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 223
    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 225
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 228
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 230
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 232
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 234
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 236
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 238
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 242
    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 244
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 248
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 249
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 250
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 253
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    .line 255
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 429
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 259
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 260
    iput p2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 261
    iput p3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 262
    iput p4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 258
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 109
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 116
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 119
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 122
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 125
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 130
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 133
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 135
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 138
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 140
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 143
    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 154
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 157
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 160
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 163
    iput v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 165
    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 168
    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 171
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 174
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    .line 177
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 182
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 183
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 184
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 185
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 186
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 187
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 188
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 189
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 190
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 196
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 199
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    .line 201
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 203
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 207
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 209
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 212
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 217
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 223
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 225
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 228
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 230
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 232
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 234
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 236
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 238
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 240
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 242
    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 244
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 248
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 249
    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 250
    iput-object v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 253
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    .line 255
    iput-boolean v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 429
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 878
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 880
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 881
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 893
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 834
    return-void

    :cond_0
    move v0, v2

    .line 837
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 849
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 850
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 853
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 854
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 856
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 857
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 860
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 861
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 862
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 863
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 864
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 865
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 866
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 867
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 868
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 869
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 871
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 872
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 874
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 876
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 877
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 878
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 879
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 880
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 882
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 885
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 886
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 887
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 889
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 891
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 895
    goto :goto_1f

    :cond_20
    move v1, v2

    .line 896
    goto :goto_20
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/SemPersonaInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/SemPersonaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/SemPersonaInfo;)V
    .locals 8
    .param p1, "orig"    # Lcom/samsung/android/knox/SemPersonaInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 109
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 116
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 119
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 120
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 122
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 125
    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 130
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 133
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 135
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 140
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 143
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 149
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 154
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 157
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 160
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 163
    iput v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 165
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 168
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 174
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 184
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 185
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 186
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 187
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 188
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 189
    iput-wide v6, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 190
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 191
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 196
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 199
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isPureContainer:Z

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 203
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 217
    iput v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 223
    iput v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 225
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 228
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 230
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 232
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 234
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 236
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 238
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 242
    const v0, 0x927c0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 244
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 248
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 249
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 250
    iput-object v3, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 253
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    .line 255
    iput-boolean v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 429
    iput-boolean v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 465
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    .line 466
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    .line 467
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    .line 468
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getParentId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    .line 469
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 470
    iget-wide v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    iput-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    .line 471
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getCreatorUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 472
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getSetupWizardApkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getAdminUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 475
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaEcrytfsIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 477
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPasswordIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 478
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPwdResetTokenIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 479
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    .line 480
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    .line 481
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    .line 482
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 483
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    .line 484
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    .line 485
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 486
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    .line 487
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    .line 488
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 489
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    .line 490
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    .line 491
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fotaUpgradeVersion:I

    .line 492
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    .line 493
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    .line 494
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    .line 495
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    .line 496
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    .line 497
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    .line 498
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaInfo;->getTimaPasswordHintIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 499
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    .line 500
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    .line 501
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    .line 502
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    .line 503
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    .line 504
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    .line 505
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    .line 506
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 508
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 510
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 511
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 512
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 513
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 514
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 515
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 516
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 517
    iget-wide v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    iput-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 518
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 519
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 520
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    .line 521
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    .line 522
    iget v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    iput v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 523
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    .line 524
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 525
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    .line 526
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 527
    iget-object v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 528
    iget-boolean v0, p1, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 464
    return-void
.end method

.method private showFingerprintIndexStatus()V
    .locals 4

    .prologue
    .line 666
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

    .line 667
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    if-eqz v1, :cond_0

    .line 668
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

    .line 669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 670
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

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "SemPersonaInfo"

    const-string/jumbo v2, "fingerprintIndexList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 677
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

    .line 678
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 679
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

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v1, "SemPersonaInfo"

    const-string/jumbo v2, "fingerprintHashList is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdminUid()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    return v0
.end method

.method public getAuthenticationType()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    return v0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 569
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

    .line 570
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    return v0
.end method

.method public getFidoRpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerCount()I
    .locals 1

    .prologue
    .line 393
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

    .prologue
    .line 704
    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called getFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    return-object v0
.end method

.method public getFingerprintIndexList()[I
    .locals 2

    .prologue
    .line 688
    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called getFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 269
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

    .prologue
    .line 653
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    return-object v0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    return v0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    return v0
.end method

.method public getIsFingerReset()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    return v0
.end method

.method public getIsFingerTimeout()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    return v0
.end method

.method public getIsIrisReset()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    return v0
.end method

.method public getIsIrisTimeout()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    return v0
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    return v0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    return v0
.end method

.method public getIsUnlockedByCe()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    return v0
.end method

.method public getKnoxBackupPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxSecurityTimeoutValue()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    return v0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    return-wide v0
.end method

.method public getLastLoggedOutTime()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    return-wide v0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    return v0
.end method

.method public getPersonaHandle()Landroid/os/PersonaHandle;
    .locals 2

    .prologue
    .line 533
    new-instance v0, Landroid/os/PersonaHandle;

    iget v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    return-object v0
.end method

.method public getSetupWizardApkLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 621
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

    .line 622
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimaEcrytfsIndex()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    return v0
.end method

.method public getTimaPasswordHintIndex()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    return v0
.end method

.method public getTimaPasswordIndex()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    return v0
.end method

.method public getTimaPwdResetTokenIndex()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getsamsungAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isECContainer()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 424
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

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    return v0
.end method

.method public isMigratedPersona()Z
    .locals 2

    .prologue
    .line 419
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

    .prologue
    .line 408
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

    .prologue
    .line 443
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

    .prologue
    .line 413
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
    .param p1, "adminPackageName"    # Ljava/lang/String;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setAdminUid(I)V
    .locals 0
    .param p1, "adminUid"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    .line 563
    return-void
.end method

.method public setAuthenticationType(I)V
    .locals 3
    .param p1, "authType"    # I

    .prologue
    .line 627
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

    .line 629
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    .line 626
    return-void
.end method

.method public setCreatorUid(I)V
    .locals 3
    .param p1, "creatorUid"    # I

    .prologue
    .line 575
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

    .line 576
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    .line 574
    return-void
.end method

.method public setEncodingRequired(Z)V
    .locals 0
    .param p1, "isEncoding"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    .line 437
    return-void
.end method

.method public setFidoRpContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "rpContext"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setFingerCount(I)V
    .locals 0
    .param p1, "fingerCount"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    .line 397
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

    .prologue
    .local p1, "hashs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 710
    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called setFingerprintHashList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 709
    :goto_0
    return-void

    .line 712
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    .line 713
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setFingerprintIndexList([I)V
    .locals 3
    .param p1, "indexs"    # [I

    .prologue
    const/4 v2, 0x0

    .line 694
    const-string/jumbo v0, "SemPersonaInfo"

    const-string/jumbo v1, "called setFingerprintIndexList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 696
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintIndexList:[I

    .line 693
    :goto_0
    return-void

    .line 698
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

    .prologue
    .line 658
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    .line 660
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->installedPkgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setIsAdminLockedJustBefore(Z)V
    .locals 0
    .param p1, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    .line 377
    return-void
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 0
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    .line 357
    return-void
.end method

.method public setIsFingerReset(Z)V
    .locals 0
    .param p1, "isFingerReset"    # Z

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    .line 367
    return-void
.end method

.method public setIsFingerTimeout(Z)V
    .locals 0
    .param p1, "isFingerTimeout"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    .line 318
    return-void
.end method

.method public setIsIrisReset(Z)V
    .locals 0
    .param p1, "isIrisReset"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    .line 338
    return-void
.end method

.method public setIsIrisTimeout(Z)V
    .locals 0
    .param p1, "isIrisTimeout"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    .line 328
    return-void
.end method

.method public setIsQuickAccessUIEnabled(Z)V
    .locals 0
    .param p1, "isQuickAccessUIEnabled"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    .line 307
    return-void
.end method

.method public setIsUnlockedAfterTurnOn(Z)V
    .locals 0
    .param p1, "isUnlockedAfterTurnOn"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    .line 296
    return-void
.end method

.method public setIsUnlockedByCe(Z)V
    .locals 0
    .param p1, "isUnlockedByCe"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    .line 450
    return-void
.end method

.method public setKnoxBackupPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    .line 743
    return-void
.end method

.method public setKnoxSecurityTimeoutValue(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 726
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    .line 725
    return-void
.end method

.method public setLastKeyguardUnlockTime(J)V
    .locals 1
    .param p1, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 388
    iput-wide p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    .line 387
    return-void
.end method

.method public setSetupWizardApkLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "setupWizardApkLocation"    # Ljava/lang/String;

    .prologue
    .line 637
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

    .line 638
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setTimaEcrytfsIndex(I)V
    .locals 0
    .param p1, "timaEcrytfsIndex"    # I

    .prologue
    .line 586
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    .line 585
    return-void
.end method

.method public setTimaPasswordHintIndex(I)V
    .locals 0
    .param p1, "timaPasswordHintIndex"    # I

    .prologue
    .line 616
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    .line 615
    return-void
.end method

.method public setTimaPasswordIndex(I)V
    .locals 0
    .param p1, "timaPasswordIndex"    # I

    .prologue
    .line 606
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    .line 605
    return-void
.end method

.method public setTimaPwdResetTokenIndex(I)V
    .locals 0
    .param p1, "timaPwdResetTokenIndex"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPwdResetTokenIndex:I

    .line 595
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setsamsungAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    .line 647
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
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
    .param p1, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 760
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->parentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastLoggedOutTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 766
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupWizardApkLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->adminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaEcrytfsIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->timaPasswordHintIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->encryptedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->samsungAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUserManaged:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSdpMinor:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->authenticationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPassword:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFsMounted:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->personaFwkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lightWeightContainer:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->kioskModeEnabled:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isSecureFolder:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseExtSdcard:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->canUseBluetooth:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->needsRestart:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isRestarting:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpEnabled:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->cmkFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->sdpActive:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedAfterTurnOn:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isQuickAccessUIEnabled:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerTimeout:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisTimeout:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerIdentifyFailed:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isFingerReset:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isIrisReset:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fidoRpContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isAdminLockedJustBefore:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-wide v4, p0, Lcom/samsung/android/knox/SemPersonaInfo;->lastKeyguardUnlockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 809
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->useEncoding:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownLauncherHelp:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->shownFolderHelp:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxSecurityTimeoutValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEulaShown:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->knoxBackupPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isEnabledFingerprintIndex:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget-object v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->fingerprintHashList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 819
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->migratedToM:Z

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-boolean v0, p0, Lcom/samsung/android/knox/SemPersonaInfo;->isUnlockedByCe:Z

    if-eqz v0, :cond_20

    :goto_20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    return-void

    :cond_0
    move v0, v2

    .line 762
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 774
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 775
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 778
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 779
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 781
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 782
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 785
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 786
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 787
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 788
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 789
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 790
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 791
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 792
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 793
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 794
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 796
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 797
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 799
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 801
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 802
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 803
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 804
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 805
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 807
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 810
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 811
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 812
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 814
    goto :goto_1d

    :cond_1e
    move v0, v2

    .line 816
    goto :goto_1e

    :cond_1f
    move v0, v2

    .line 819
    goto :goto_1f

    :cond_20
    move v1, v2

    .line 820
    goto :goto_20
.end method
