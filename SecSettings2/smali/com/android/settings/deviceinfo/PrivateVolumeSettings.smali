.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;,
        Lcom/android/settings/deviceinfo/PrivateVolumeSettings$UserInfoFragment;
    }
.end annotation


# static fields
.field private static final ITEMS_NO_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED:[I

.field private static final ITEMS_SHOW_SHARED_VZW:[I

.field private static final ITEMS_SHOW_USED_SPACE:[I


# instance fields
.field private mAvailableSize:J

.field private mCurrentUser:Landroid/content/pm/UserInfo;

.field private mDeviceTotalSize:J

.field private mExplore:Landroid/preference/Preference;

.field private mHeaderPoolIndex:I

.field private mHeaderPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUsedSpace:Z

.field private mItemPoolIndex:I

.field private mItemPreferencePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mKnoxTotalSize:J

.field private mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

.field private final mReceiver:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private mSharedVolume:Landroid/os/storage/VolumeInfo;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private mSystemSize:J

.field private mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const v5, 0x7f0b13e0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v5, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    const v0, 0x7f0b139b

    const v1, 0x7f0b1399

    const v2, 0x7f0b04ea

    const v3, 0x7f0b04e9

    const v4, 0x7f0b13e5

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    const v0, 0x7f0b04eb

    const v1, 0x7f0b13e3

    filled-new-array {v5, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_USED_SPACE:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED_VZW:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b139b
        0x7f0b1399
        0x7f0b04ea
        0x7f0b13e0
        0x7f0b04eb
        0x7f0b13e3
        0x7f0b13e5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mIsUsedSpace:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setRetainInstance(Z)V

    return-void
.end method

.method private addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;
    .locals 4

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    return-object v0

    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008c

    invoke-direct {v0, v1, v2, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addDetailItems(Landroid/preference/PreferenceGroup;ZZI)V
    .locals 4

    if-eqz p2, :cond_4

    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED:[I

    :goto_0
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_5

    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_SHARED_VZW:[I

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_7

    aget v2, v1, v0

    const v3, 0x7f0b04e9

    if-eq v2, v3, :cond_1

    aget v2, v1, v0

    const v3, 0x7f0b04eb

    if-ne v2, v3, :cond_6

    :cond_1
    :goto_3
    if-eqz p3, :cond_3

    :cond_2
    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_NO_SHOW_SHARED:[I

    goto :goto_1

    :cond_6
    aget v2, v1, v0

    const v3, 0x7f0b13e3

    if-ne v2, v3, :cond_2

    goto :goto_3

    :cond_7
    return-void
.end method

.method private addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V
    .locals 4

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    :goto_1
    const v1, 0x7f0b139b

    if-ne p2, v1, :cond_2

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    :goto_2
    iput p4, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    iget v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(I)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0b1399

    if-ne p2, v1, :cond_3

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mAvailableSize:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :cond_3
    const v1, 0x7f0b04ea

    if-ne p2, v1, :cond_4

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :cond_4
    const v1, 0x7f0b139c

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    goto :goto_2
.end method

.method private addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private addUsedDetailItems(Landroid/preference/PreferenceGroup;ZI)V
    .locals 4

    sget-object v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->ITEMS_SHOW_USED_SPACE:[I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, v1, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    return-object v0
.end method

.method private buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    return-object v4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getUserName(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0ac0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "persona"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private isKnoxAdminLocked(Landroid/content/pm/UserInfo;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isVolumeValid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mmsSize()J
    .locals 18

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-string/jumbo v9, "dbdata/databases/com.android.providers.telephony"

    const-string/jumbo v8, "mmssms.db"

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "m_size"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v14, 0x0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v14, v2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    :goto_0
    add-long v12, v14, v16

    return-wide v12

    :cond_3
    const-wide/16 v16, 0x0

    goto :goto_0
.end method

.method private setTitle()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mIsUsedSpace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDetails(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 18

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    if-ge v3, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPreferencePool:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v10, v4, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    :try_start_0
    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    sparse-switch v5, :sswitch_data_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_6
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mmsSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_2

    :sswitch_8
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->deviceTotalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    :sswitch_9
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    :sswitch_a
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    :sswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->imageSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->videoSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    add-long v14, v14, v16

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->audioSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    add-long v8, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto/16 :goto_2

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x7f0b04e9 -> :sswitch_b
        0x7f0b04ea -> :sswitch_a
        0x7f0b04eb -> :sswitch_1
        0x7f0b04ec -> :sswitch_7
        0x7f0b1399 -> :sswitch_9
        0x7f0b139b -> :sswitch_8
        0x7f0b13e0 -> :sswitch_0
        0x7f0b13e1 -> :sswitch_2
        0x7f0b13e2 -> :sswitch_3
        0x7f0b13e3 -> :sswitch_4
        0x7f0b13e4 -> :sswitch_6
        0x7f0b13e5 -> :sswitch_5
    .end sparse-switch
.end method

.method private updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StorageSettings"

    const-string/jumbo v2, "getArguments() is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "isUsedSpace"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mIsUsedSpace:Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate isUsedSpace1 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mIsUsedSpace:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v1, v0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mReceiver:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/samsung/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    new-instance v1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f14000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->onDestroy()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V

    return v8

    :pswitch_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v6, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v8

    :pswitch_2
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b13b9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v8

    :pswitch_3
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b13ba

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return v8

    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {v7, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x7f11088e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 22

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v2, :cond_1

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget v0, v2, Lcom/android/settings/deviceinfo/StorageItemPreference;->userHandle:I

    move/from16 v21, v0

    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    :goto_1
    const/4 v15, 0x0

    sparse-switch v16, :sswitch_data_0

    :cond_0
    :goto_2
    if-eqz v15, :cond_9

    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v21, -0x1

    goto :goto_0

    :catch_0
    move-exception v14

    const/16 v16, 0x0

    goto :goto_1

    :sswitch_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "classname"

    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "volumeUuid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "volumeName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const v6, 0x7f0b13e0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v15

    goto :goto_2

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "check"

    const-string/jumbo v3, "gallery"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "vnd.android.cursor.dir/image"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "check"

    const-string/jumbo v3, "gallery"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "vnd.android.cursor.dir/image"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string/jumbo v2, "com.samsung.android.app.music.chn"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v2, "com.google.android.music"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    if-eqz v19, :cond_2

    move-object/from16 v15, v19

    :goto_4
    if-eqz v15, :cond_0

    const/high16 v2, 0x24000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v15, v18

    goto :goto_4

    :cond_3
    move-object/from16 v15, v17

    goto :goto_4

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "otherInfo"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/storage/VolumeInfo;)V

    const/4 v2, 0x1

    return v2

    :cond_5
    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Close already open dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->dismiss()V

    const/4 v12, 0x0

    goto :goto_5

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "confirmClearCache"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->show(Landroid/app/Fragment;)V

    const/4 v2, 0x1

    return v2

    :cond_7
    const-string/jumbo v2, "StorageSettings"

    const-string/jumbo v3, "Close already open dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ConfirmClearCacheFragment;->dismiss()V

    const/4 v11, 0x0

    goto :goto_6

    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "samsung.myfiles.intent.extra.START_PATH"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "samsung.myfiles.intent.extra.OTHER_APP"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v15

    goto/16 :goto_2

    :sswitch_7
    const/4 v2, 0x1

    return v2

    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1002d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "check"

    const-string/jumbo v3, "gallery"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14800000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "vnd.android.cursor.dir/image"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :sswitch_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isUsedSpace"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "android.os.storage.extra.VOLUME_ID"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b04e9

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_2

    :sswitch_a
    const/4 v2, 0x1

    return v2

    :cond_8
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v15, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v13

    const-string/jumbo v2, "StorageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x7f0b04e9 -> :sswitch_9
        0x7f0b04eb -> :sswitch_8
        0x7f0b04ec -> :sswitch_7
        0x7f0b13c0 -> :sswitch_6
        0x7f0b13e0 -> :sswitch_0
        0x7f0b13e1 -> :sswitch_1
        0x7f0b13e2 -> :sswitch_2
        0x7f0b13e3 -> :sswitch_3
        0x7f0b13e4 -> :sswitch_5
        0x7f0b13e5 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    const v6, 0x7f11088e

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f11088f

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v6, 0x7f110890

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f110891

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v6, 0x7f110892

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string/jumbo v6, "private"

    iget-object v9, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const v6, 0x7f0b13bb

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    :goto_1
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    move v8, v7

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setTitle()V

    return-void
.end method

.method public update()V
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    if-nez v23, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isVolumeValid()Z

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v23

    const-class v24, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSharedVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v14

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mIsUsedSpace:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    const/16 v21, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isKnoxAdminLocked(Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_6

    :cond_3
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    :cond_7
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    const/16 v23, 0x1

    :goto_4
    if-nez v23, :cond_3

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getUserName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    :goto_5
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v7, v14, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addUsedDetailItems(Landroid/preference/PreferenceGroup;ZI)V

    goto :goto_3

    :cond_8
    const/16 v23, 0x0

    goto :goto_4

    :cond_9
    move-object v7, v12

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    new-instance v15, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getDeviceTotalSize(J)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mAvailableSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v16

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSystemSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mAvailableSize:J

    move-wide/from16 v26, v0

    sub-long v18, v24, v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const v24, 0x7f0b13cd

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    iget-object v0, v11, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v26, v25, v27

    iget-object v0, v11, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    const v25, 0x7f0b13ce

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x64

    mul-long v24, v24, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mDeviceTotalSize:J

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mItemPoolIndex:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mHeaderPoolIndex:I

    const/4 v4, 0x0

    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isKnoxAdminLocked(Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_c

    :cond_b
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_d

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    :cond_d
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getUserName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v7

    :cond_e
    :goto_8
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    if-nez v23, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v0, v7, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZZI)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    move-object v7, v12

    goto :goto_8

    :cond_10
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildItem()Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    const-string/jumbo v24, "knox"

    invoke-virtual/range {v23 .. v24}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->getKnoxTotalSize(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxTotalSize:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxTotalSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updatePreference(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    goto :goto_9

    :cond_11
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v0, v7, v14, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addDetailItems(Landroid/preference/PreferenceGroup;ZZI)V

    goto/16 :goto_9

    :cond_12
    sub-int v23, v20, v4

    if-lez v23, :cond_16

    const v23, 0x7f0b13c9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    const/16 v21, 0x0

    :goto_a
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    move/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mCurrentUser:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-nez v23, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->isKnoxAdminLocked(Landroid/content/pm/UserInfo;)Z

    move-result v23

    if-eqz v23, :cond_14

    :cond_13
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getUserName(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    goto :goto_b

    :cond_15
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    :cond_16
    const v23, 0x7f0b13e4

    const/16 v24, 0x0

    const/16 v25, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    const-string/jumbo v23, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_17

    const-string/jumbo v23, "CHC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    :cond_17
    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1b

    :cond_18
    :goto_c
    const v23, 0x7f0b13c0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mExplore:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addCategory(Landroid/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mKnoxItem:Lcom/android/settings/deviceinfo/StorageItemPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->mMeasure:Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/settings/deviceinfo/StorageMeasurement;->forceMeasure()V

    return-void

    :cond_1b
    const v23, 0x7f0b04ec

    const/16 v24, 0x0

    const/16 v25, -0x2710

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->addItem(Landroid/preference/PreferenceGroup;ILjava/lang/CharSequence;I)V

    goto :goto_c
.end method
