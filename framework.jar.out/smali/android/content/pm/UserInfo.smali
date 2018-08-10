.class public Landroid/content/pm/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserInfo$1;
    }
.end annotation


# static fields
.field public static final ATTR_ADMIN_LOCKED:I = 0x8

.field public static final ATTR_DEVICE_COMPROMISED:I = 0x4

.field public static final ATTR_EXT_SDCARD:I = 0x80

.field public static final ATTR_FS_ERROR_STATE:I = 0x200

.field public static final ATTR_LICENSE_LOCKED:I = 0x10

.field public static final ATTR_NEED_SETUP_CREDENTIAL:I = 0x20000000

.field public static final ATTR_NONE:I = 0x0

.field public static final ATTR_PREMIUM_CONTAINER:I = 0x10000000

.field public static final ATTR_PWD_EXPIRED:I = 0x20

.field public static final ATTR_RESET_ON_BOOT:I = 0x40

.field public static final ATTR_SUPER_LOCKED:I = 0x1c

.field public static final ATTR_TRUST_AGENT_UI_ENABLED:I = 0x100

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ADMIN:I = 0x2

.field public static final FLAG_BBC_CONTAINER:I = 0x4000000

.field public static final FLAG_BMODE:I = 0x10000

.field public static final FLAG_CL_CONTAINER:I = 0x400000

.field public static final FLAG_DEMO:I = 0x200

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_DUALAPP_PROFILE:I = 0x20000000

.field public static final FLAG_EPHEMERAL:I = 0x100

.field public static final FLAG_FIRST_CONTAINER:I = 0x100000

.field public static final FLAG_GUEST:I = 0x4

.field public static final FLAG_INITIALIZED:I = 0x10

.field public static final FLAG_KIOSK_MODE:I = 0x8000000

.field public static final FLAG_KNOX_WORKSPACE:I = 0x10000000

.field public static final FLAG_LEGACY_ENCRYPTION:I = 0x40000000

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x1000000

.field public static final FLAG_MANAGED_PROFILE:I = 0x20

.field public static final FLAG_MASK_USER_TYPE:I = 0xffff

.field public static final FLAG_MY_KNOX:I = 0x2000000

.field public static final FLAG_PRIMARY:I = 0x1

.field public static final FLAG_QUIET_MODE:I = 0x80

.field public static final FLAG_RESTRICTED:I = 0x8

.field public static final FLAG_SECOND_CONTAINER:I = 0x200000

.field public static final FLAG_SECURE_FOLDER:I = 0x20000

.field public static final FLAG_THIRD_CONTAINER:I = 0x800000

.field public static final FLAG_VIRTUAL_USER:I = -0x80000000

.field public static final NO_PROFILE_GROUP_ID:I = -0x2710

.field public static final VOLT_LEGACY_RESET_CREDENTIAL_REQUESTED:I = 0x1

.field public static final VOLT_NONE:I


# instance fields
.field public attributes:I

.field public creationTime:J

.field public flags:I

.field public guestToRemove:Z

.field public hasCCMBeenProvisioned:Z

.field public iconPath:Ljava/lang/String;

.field public id:I

.field public lastLoggedInFingerprint:Ljava/lang/String;

.field public lastLoggedInTime:J

.field public name:Ljava/lang/String;

.field public partial:Z

.field public profileBadge:I

.field public profileGroupId:I

.field public restrictedProfileParentId:I

.field public serialNumber:I

.field public volatiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/UserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/UserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, -0x2710

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/UserInfo;->id:I

    iput-object p2, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/UserInfo;->flags:I

    iput-object p3, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    iput v1, p0, Landroid/content/pm/UserInfo;->volatiles:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    iget v0, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->creationTime:J

    iget-wide v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-wide v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iget-object v0, p1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v0, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iget v0, p1, Landroid/content/pm/UserInfo;->profileBadge:I

    iput v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    iget-boolean v0, p1, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    iget v0, p1, Landroid/content/pm/UserInfo;->attributes:I

    iput v0, p0, Landroid/content/pm/UserInfo;->attributes:I

    iget v0, p1, Landroid/content/pm/UserInfo;->volatiles:I

    iput v0, p0, Landroid/content/pm/UserInfo;->volatiles:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->attributes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserInfo;->volatiles:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static isSystemOnly(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public canHaveProfile()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_4

    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public isAdmin()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdminLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBBCContainer()Z
    .locals 2

    const/high16 v1, 0x4000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBMode()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCLContainer()Z
    .locals 2

    const/high16 v1, 0x400000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDemo()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceCompromised()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDualAppProfile()Z
    .locals 2

    const/high16 v1, 0x20000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

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

.method public isFirstContainer()Z
    .locals 2

    const/high16 v1, 0x100000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGuest()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKioskModeEnabled()Z
    .locals 2

    const/high16 v1, 0x8000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnoxWorkspace()Z
    .locals 2

    const/high16 v1, 0x10000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegacyEncryption()Z
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLegacyResetCredentialRequested()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/UserInfo;->volatiles:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLicenseLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLightWeightContainer()Z
    .locals 2

    const/high16 v1, 0x1000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManagedProfile()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

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

.method public isMyKnox()Z
    .locals 2

    const/high16 v1, 0x2000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPWDExpired()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->attributes:I

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

.method public isPremiumContainer()Z
    .locals 2

    const/high16 v1, 0x10000000

    iget v0, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPwdChangeRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestricted()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecondContainer()Z
    .locals 2

    const/high16 v1, 0x200000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecureFolder()Z
    .locals 2

    const/high16 v1, 0x20000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuperLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x1c

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemOnly()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v0

    return v0
.end method

.method public isThirdContainer()Z
    .locals 2

    const/high16 v1, 0x800000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrustAgentUIEnabled()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->attributes:I

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

.method public isVirtualUser()Z
    .locals 2

    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needSetupCredential()Z
    .locals 3

    const/high16 v2, 0x20000000

    const/4 v0, 0x1

    iget v1, p0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/content/pm/UserInfo;->volatiles:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSwitchTo()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "fw.show_hidden_users"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supportsSwitchToByUser()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/UserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->attributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/UserInfo;->volatiles:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
