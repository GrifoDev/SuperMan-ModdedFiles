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

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    .line 27
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    .line 33
    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 34
    sput v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 35
    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 36
    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 37
    sput-object v2, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    const/4 v2, 0x0

    .line 51
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
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

    .line 57
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_0
    if-nez v2, :cond_0

    .line 58
    return-object v5

    .line 52
    .restart local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Exception:: unable to get Storage Service"

    invoke-static {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    return-object v3
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method private semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getExternalSDvolFsUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSDvolState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 153
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    .line 154
    return-object v5

    .line 155
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 156
    aget-object v1, v2, v0

    .line 157
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v3    # "subsystem":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 74
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 76
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 81
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 78
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v1, "Can\'t get mount service"

    invoke-static {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v2, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 116
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "sdPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    return-object v4

    .line 119
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isExternalSDRemovable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 139
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_0

    .line 140
    return v5

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 142
    aget-object v1, v2, v0

    .line 143
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->semGetSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const/4 v4, 0x1

    return v4

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v3    # "subsystem":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .locals 3

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v1, 0x1

    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 169
    return v2

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/security/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    :cond_1
    return v2
.end method

.method public setExternalSDvolFsUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "volFsUuid"    # Ljava/lang/String;

    .prologue
    .line 205
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolFsUuid:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setExternalSDvolId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 197
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolId:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setExternalSDvolState(Ljava/lang/String;)V
    .locals 0
    .param p1, "volState"    # Ljava/lang/String;

    .prologue
    .line 213
    sput-object p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mExternalSDvolState:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setSavedUserID(I)V
    .locals 0
    .param p1, "in"    # I

    .prologue
    .line 189
    sput p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mSavedUserId:I

    .line 188
    return-void
.end method

.method public setUserDiff(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 181
    sput-boolean p1, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 180
    return-void
.end method

.method public unmountHiddenVolume()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

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

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return v6

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    return v5
.end method

.method public unmountVolume()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return v6

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    return v5
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    return v1

    .line 225
    :cond_0
    const-string/jumbo v1, "HiddenMount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    sput-boolean v3, Lcom/samsung/android/security/DirEncryptionWrapper;->mUserDiff:Z

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    return v1

    .line 228
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

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    return v1

    .line 232
    :cond_3
    return v2
.end method
