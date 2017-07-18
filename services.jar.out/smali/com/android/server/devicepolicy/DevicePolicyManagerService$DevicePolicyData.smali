.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field doNotAskCredentialsOnBoot:Z

.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActivePasswordLength:I

.field mActivePasswordLetters:I

.field mActivePasswordLowerCase:I

.field mActivePasswordNonLetter:I

.field mActivePasswordNumeric:I

.field mActivePasswordQuality:I

.field mActivePasswordRecoverable:Z

.field mActivePasswordSymbols:I

.field mActivePasswordUpperCase:I

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowListRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mApplicationRestrictionsManagingPackage:Ljava/lang/String;

.field private mBlockListRecordInRom:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDelegatedCertInstallerPackage:Ljava/lang/String;

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastMaximumTimeToLock:J

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPasswordOwner:I

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mStatusBarDisabled:Z

.field mUserHandle:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    iput v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminBroadcastPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    return-void
.end method
