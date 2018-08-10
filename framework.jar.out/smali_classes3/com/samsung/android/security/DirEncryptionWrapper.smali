.class public Lcom/samsung/android/security/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mExternalSDvolFsUuid:Ljava/lang/String;

.field private static mExternalSDvolId:Ljava/lang/String;

.field private static mExternalSDvolState:Ljava/lang/String;

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IStorageManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    sput v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    iput-object p1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_0

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Exception:: unable to get Storage Service"

    invoke-static {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    return-object v3
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolState()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v1, v2, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IStorageManager;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IStorageManager;

    return-object v1

    :cond_1
    const-string/jumbo v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    sget v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isExternalSDRemovable()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    if-nez v2, :cond_0

    return v5

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v1, v2, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public isSecure()Z
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public setExternalSDvolFsUuid(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-void
.end method

.method public setExternalSDvolState(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-void
.end method

.method public setSavedUserID(I)V
    .locals 0

    sput p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return-void
.end method

.method public setUserDiff(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return-void
.end method

.method public unmountHiddenVolume()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public unmountVolume()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IStorageManager;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    return v1

    :cond_0
    const-string/jumbo v1, "HiddenMount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    return v1

    :cond_3
    return v2
.end method
