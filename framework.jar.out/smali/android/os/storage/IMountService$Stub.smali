.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_addUserKeyAuth:I = 0x47

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_cryptoMount:I = 0xcc

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_disableStorageEncryption:I = 0xc9

.field static final TRANSACTION_encryptExternalStorage:I = 0xcb

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_encryptWipeStorage:I = 0x49

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getCCmodeForCryptKeeper:I = 0xd2

.field static final TRANSACTION_getCurrentEncryptionFailCount:I = 0xd3

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getPropertyFromFooter:I = 0xd0

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isConvertibleToFBE:I = 0x45

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isStorageFullyEncrypted:I = 0xcd

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountAppFuse:I = 0x46

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_moveDumpstates:I = 0xce

.field static final TRANSACTION_odeNativeTest:I = 0xd1

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setExternalEncryptionPassword:I = 0xca

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setPropertyIntoFooter:I = 0xcf

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeState:I = 0x69

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1803
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1804
    const-string/jumbo v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1803
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1792
    if-nez p0, :cond_0

    .line 1793
    return-object v1

    .line 1795
    :cond_0
    const-string/jumbo v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1796
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1797
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 1799
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1808
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 77
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1814
    sparse-switch p1, :sswitch_data_0

    .line 2551
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 1816
    :sswitch_0
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1817
    const/4 v6, 0x1

    return v6

    .line 1820
    :sswitch_1
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v38

    .line 1823
    .local v38, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1825
    const/4 v6, 0x1

    return v6

    .line 1828
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v38

    .line 1831
    .restart local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    const/4 v6, 0x1

    return v6

    .line 1836
    .end local v38    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v60

    .line 1838
    .local v60, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    if-eqz v60, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    const/4 v6, 0x1

    return v6

    .line 1839
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1843
    .end local v60    # "result":Z
    :sswitch_4
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v26, 0x1

    .line 1846
    .local v26, "enable":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    const/4 v6, 0x1

    return v6

    .line 1845
    .end local v26    # "enable":Z
    :cond_1
    const/16 v26, 0x0

    goto :goto_1

    .line 1851
    :sswitch_5
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v60

    .line 1853
    .restart local v60    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    if-eqz v60, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    const/4 v6, 0x1

    return v6

    .line 1854
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1858
    .end local v60    # "result":Z
    :sswitch_6
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1861
    .local v40, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v62

    .line 1862
    .local v62, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    const/4 v6, 0x1

    return v6

    .line 1867
    .end local v40    # "mountPoint":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_7
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1870
    .restart local v40    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v31, 0x1

    .line 1871
    .local v31, "force":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v55, 0x1

    .line 1872
    .local v55, "removeEncrypt":Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v31

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    const/4 v6, 0x1

    return v6

    .line 1870
    .end local v31    # "force":Z
    .end local v55    # "removeEncrypt":Z
    :cond_3
    const/16 v31, 0x0

    .restart local v31    # "force":Z
    goto :goto_3

    .line 1871
    :cond_4
    const/16 v55, 0x0

    goto :goto_4

    .line 1877
    .end local v31    # "force":Z
    .end local v40    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1880
    .restart local v40    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v58

    .line 1881
    .local v58, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1883
    const/4 v6, 0x1

    return v6

    .line 1886
    .end local v40    # "mountPoint":Ljava/lang/String;
    .end local v58    # "result":I
    :sswitch_9
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 1889
    .local v51, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v52

    .line 1890
    .local v52, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1892
    const/4 v6, 0x1

    return v6

    .line 1895
    .end local v51    # "path":Ljava/lang/String;
    .end local v52    # "pids":[I
    :sswitch_a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 1898
    .restart local v40    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1899
    .local v65, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1900
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1901
    const/4 v6, 0x1

    return v6

    .line 1904
    .end local v40    # "mountPoint":Ljava/lang/String;
    .end local v65    # "state":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1908
    .local v7, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1910
    .local v8, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1912
    .local v9, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1914
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1916
    .local v11, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v12, 0x1

    .local v12, "external":Z
    :goto_5
    move-object/from16 v6, p0

    .line 1917
    invoke-virtual/range {v6 .. v12}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v62

    .line 1919
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1920
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    const/4 v6, 0x1

    return v6

    .line 1916
    .end local v12    # "external":Z
    .end local v62    # "resultCode":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 1924
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v9    # "fstype":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1927
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v62

    .line 1928
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    const/4 v6, 0x1

    return v6

    .line 1933
    .end local v7    # "id":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1937
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v31, 0x1

    .line 1938
    .local v31, "force":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v62

    .line 1939
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    const/4 v6, 0x1

    return v6

    .line 1937
    .end local v31    # "force":Z
    .end local v62    # "resultCode":I
    :cond_6
    const/16 v31, 0x0

    goto :goto_6

    .line 1944
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1948
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1950
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1952
    .restart local v11    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v54, 0x1

    .line 1953
    .local v54, "readOnly":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v7, v10, v11, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v62

    .line 1954
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1955
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    const/4 v6, 0x1

    return v6

    .line 1952
    .end local v54    # "readOnly":Z
    .end local v62    # "resultCode":I
    :cond_7
    const/16 v54, 0x0

    goto :goto_7

    .line 1959
    .end local v7    # "id":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "ownerUid":I
    :sswitch_f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1963
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v31, 0x1

    .line 1964
    .restart local v31    # "force":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v62

    .line 1965
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    const/4 v6, 0x1

    return v6

    .line 1963
    .end local v31    # "force":Z
    .end local v62    # "resultCode":I
    :cond_8
    const/16 v31, 0x0

    goto :goto_8

    .line 1970
    .end local v7    # "id":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1973
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v67

    .line 1974
    .local v67, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    if-eqz v67, :cond_9

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    const/4 v6, 0x1

    return v6

    .line 1975
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 1979
    .end local v7    # "id":Ljava/lang/String;
    .end local v67    # "status":Z
    :sswitch_11
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 1983
    .local v47, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 1984
    .local v44, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v62

    .line 1985
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    const/4 v6, 0x1

    return v6

    .line 1990
    .end local v44    # "newId":Ljava/lang/String;
    .end local v47    # "oldId":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_12
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1993
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1994
    .restart local v51    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1996
    const/4 v6, 0x1

    return v6

    .line 1999
    .end local v7    # "id":Ljava/lang/String;
    .end local v51    # "path":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2000
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v34

    .line 2001
    .local v34, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2003
    const/4 v6, 0x1

    return v6

    .line 2006
    .end local v34    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v46

    .line 2010
    .local v46, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 2011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    const/4 v6, 0x1

    return v6

    .line 2015
    .end local v46    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2016
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 2017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    const/4 v6, 0x1

    return v6

    .line 2021
    :sswitch_16
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2023
    .local v14, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2024
    .local v15, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2026
    .restart local v10    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 2028
    .local v17, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "nonce":I
    move-object/from16 v13, p0

    move-object/from16 v16, v10

    .line 2029
    invoke-virtual/range {v13 .. v18}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 2030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2031
    const/4 v6, 0x1

    return v6

    .line 2034
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "rawPath":Ljava/lang/String;
    .end local v15    # "canonicalPath":Ljava/lang/String;
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    :sswitch_17
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2038
    .local v30, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v31, 0x1

    .line 2040
    .local v31, "force":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v17

    .line 2042
    .restart local v17    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2043
    .restart local v18    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 2044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2045
    const/4 v6, 0x1

    return v6

    .line 2038
    .end local v17    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v18    # "nonce":I
    .end local v31    # "force":Z
    :cond_a
    const/16 v31, 0x0

    .restart local v31    # "force":Z
    goto :goto_a

    .line 2048
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "force":Z
    :sswitch_18
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2051
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v67

    .line 2052
    .restart local v67    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    if-eqz v67, :cond_b

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    const/4 v6, 0x1

    return v6

    .line 2053
    :cond_b
    const/4 v6, 0x0

    goto :goto_b

    .line 2057
    .end local v30    # "filename":Ljava/lang/String;
    .end local v67    # "status":Z
    :sswitch_19
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2060
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2061
    .local v41, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2063
    const/4 v6, 0x1

    return v6

    .line 2066
    .end local v30    # "filename":Ljava/lang/String;
    .end local v41    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v25

    .line 2068
    .local v25, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    if-eqz v25, :cond_c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2070
    const/4 v6, 0x1

    return v6

    .line 2069
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 2073
    .end local v25    # "emulated":Z
    :sswitch_1b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2075
    .local v50, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v58

    .line 2076
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2077
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2078
    const/4 v6, 0x1

    return v6

    .line 2081
    .end local v50    # "password":Ljava/lang/String;
    .end local v58    # "result":I
    :sswitch_1c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2083
    .local v69, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2084
    .restart local v50    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v58

    .line 2085
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2086
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2087
    const/4 v6, 0x1

    return v6

    .line 2090
    .end local v50    # "password":Ljava/lang/String;
    .end local v58    # "result":I
    .end local v69    # "type":I
    :sswitch_1d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2092
    .restart local v69    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2093
    .restart local v50    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptWipeStorage(ILjava/lang/String;)I

    move-result v58

    .line 2094
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2096
    const/4 v6, 0x1

    return v6

    .line 2099
    .end local v50    # "password":Ljava/lang/String;
    .end local v58    # "result":I
    .end local v69    # "type":I
    :sswitch_1e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2101
    .restart local v69    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2102
    .restart local v50    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v58

    .line 2103
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2105
    const/4 v6, 0x1

    return v6

    .line 2108
    .end local v50    # "password":Ljava/lang/String;
    .end local v58    # "result":I
    .end local v69    # "type":I
    :sswitch_1f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 2110
    .local v70, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 2111
    .local v48, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2112
    .local v19, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v70

    move-object/from16 v2, v48

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v61

    .line 2113
    .local v61, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2115
    const/4 v6, 0x1

    return v6

    .line 2118
    .end local v19    # "_flags":I
    .end local v48    # "packageName":Ljava/lang/String;
    .end local v61    # "result":[Landroid/os/storage/StorageVolume;
    .end local v70    # "uid":I
    :sswitch_20
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2121
    .restart local v7    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2122
    .restart local v51    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2124
    const/4 v6, 0x1

    return v6

    .line 2127
    .end local v7    # "id":Ljava/lang/String;
    .end local v51    # "path":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v58

    .line 2129
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2130
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    const/4 v6, 0x1

    return v6

    .line 2134
    .end local v58    # "result":I
    :sswitch_22
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2138
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 2140
    .local v33, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2141
    .restart local v30    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v62

    .line 2142
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2147
    .end local v7    # "id":Ljava/lang/String;
    .end local v30    # "filename":Ljava/lang/String;
    .end local v33    # "gid":I
    .end local v62    # "resultCode":I
    :sswitch_23
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2149
    .local v21, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 2150
    .restart local v51    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v58

    .line 2151
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    const/4 v6, 0x1

    return v6

    .line 2157
    .end local v21    # "callingPkg":Ljava/lang/String;
    .end local v51    # "path":Ljava/lang/String;
    .end local v58    # "result":I
    :sswitch_24
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v51

    .line 2159
    .restart local v51    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 2160
    .restart local v65    # "state":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    const/4 v6, 0x1

    return v6

    .line 2166
    .end local v51    # "path":Ljava/lang/String;
    .end local v65    # "state":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v58

    .line 2168
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    const/4 v6, 0x1

    return v6

    .line 2173
    .end local v58    # "result":I
    :sswitch_26
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v59

    .line 2175
    .local v59, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2177
    const/4 v6, 0x1

    return v6

    .line 2180
    .end local v59    # "result":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 2182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    const/4 v6, 0x1

    return v6

    .line 2186
    :sswitch_28
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2188
    .local v29, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2189
    .local v22, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    const/4 v6, 0x1

    return v6

    .line 2194
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2196
    .restart local v29    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2197
    .restart local v22    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2198
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2199
    const/4 v6, 0x1

    return v6

    .line 2202
    .end local v22    # "contents":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isConvertibleToFBE()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v62, 0x1

    .line 2204
    .restart local v62    # "resultCode":I
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2205
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    const/4 v6, 0x1

    return v6

    .line 2203
    .end local v62    # "resultCode":I
    :cond_d
    const/16 v62, 0x0

    .restart local v62    # "resultCode":I
    goto :goto_d

    .line 2209
    .end local v62    # "resultCode":I
    :sswitch_2b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2213
    .restart local v7    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2215
    .restart local v8    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2216
    .restart local v10    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v62

    .line 2217
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    const/4 v6, 0x1

    return v6

    .line 2222
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "sizeMb":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_2c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v36

    .line 2224
    .local v36, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    move-object/from16 v0, p3

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2226
    const/4 v6, 0x1

    return v6

    .line 2229
    .end local v36    # "lastMaintenance":J
    :sswitch_2d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 2231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2232
    const/4 v6, 0x1

    return v6

    .line 2235
    :sswitch_2e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2236
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    const/4 v6, 0x1

    return v6

    .line 2241
    :sswitch_2f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2242
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v24

    .line 2243
    .local v24, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2245
    const/4 v6, 0x1

    return v6

    .line 2248
    .end local v24    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_30
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2250
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v75

    .line 2251
    .local v75, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v75

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2253
    const/4 v6, 0x1

    return v6

    .line 2256
    .end local v19    # "_flags":I
    .end local v75    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_31
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2258
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v76

    .line 2259
    .local v76, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2260
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2261
    const/4 v6, 0x1

    return v6

    .line 2264
    .end local v19    # "_flags":I
    .end local v76    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_32
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2266
    .local v73, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 2267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    const/4 v6, 0x1

    return v6

    .line 2271
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2273
    .restart local v73    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    const/4 v6, 0x1

    return v6

    .line 2278
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2280
    .restart local v73    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    const/4 v6, 0x1

    return v6

    .line 2285
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2287
    .restart local v73    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v56

    .line 2288
    .local v56, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    move-object/from16 v0, p3

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2290
    const/4 v6, 0x1

    return v6

    .line 2293
    .end local v56    # "res":J
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2295
    .local v23, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 2296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    const/4 v6, 0x1

    return v6

    .line 2300
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2302
    .restart local v23    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 2303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    const/4 v6, 0x1

    return v6

    .line 2307
    .end local v23    # "diskId":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2309
    .restart local v23    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2310
    .local v53, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 2311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2312
    const/4 v6, 0x1

    return v6

    .line 2315
    .end local v23    # "diskId":Ljava/lang/String;
    .end local v53    # "ratio":I
    :sswitch_39
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2317
    .restart local v73    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 2318
    .local v45, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2320
    const/4 v6, 0x1

    return v6

    .line 2323
    .end local v45    # "nickname":Ljava/lang/String;
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 2325
    .restart local v73    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2326
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2327
    .local v20, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 2328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2329
    const/4 v6, 0x1

    return v6

    .line 2332
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    .end local v73    # "volId":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2334
    .local v32, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 2335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    const/4 v6, 0x1

    return v6

    .line 2339
    .end local v32    # "fsUuid":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2340
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 2341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    const/4 v6, 0x1

    return v6

    .line 2345
    :sswitch_3d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2347
    .restart local v19    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 2348
    .restart local v20    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 2349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    const/4 v6, 0x1

    return v6

    .line 2353
    .end local v19    # "_flags":I
    .end local v20    # "_mask":I
    :sswitch_3e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2354
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v74

    .line 2355
    .local v74, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    move-object/from16 v0, p3

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2357
    const/4 v6, 0x1

    return v6

    .line 2360
    .end local v74    # "volumeUuid":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2363
    .restart local v74    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2362
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v35

    .line 2364
    .local v35, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 2365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2366
    const/4 v6, 0x1

    return v6

    .line 2369
    .end local v35    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v74    # "volumeUuid":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2371
    .local v71, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 2372
    .local v64, "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    .line 2373
    .local v27, "ephemeral":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v71

    move/from16 v2, v64

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->createUserKey(IIZ)V

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    const/4 v6, 0x1

    return v6

    .line 2372
    .end local v27    # "ephemeral":Z
    :cond_e
    const/16 v27, 0x0

    goto :goto_e

    .line 2378
    .end local v64    # "serialNumber":I
    .end local v71    # "userId":I
    :sswitch_41
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2380
    .restart local v71    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->destroyUserKey(I)V

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    const/4 v6, 0x1

    return v6

    .line 2385
    .end local v71    # "userId":I
    :sswitch_42
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2387
    .restart local v71    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 2388
    .restart local v64    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 2389
    .local v68, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 2390
    .local v63, "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v71

    move/from16 v2, v64

    move-object/from16 v3, v68

    move-object/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->addUserKeyAuth(II[B[B)V

    .line 2391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    const/4 v6, 0x1

    return v6

    .line 2395
    .end local v63    # "secret":[B
    .end local v64    # "serialNumber":I
    .end local v68    # "token":[B
    .end local v71    # "userId":I
    :sswitch_43
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2397
    .restart local v71    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->fixateNewestUserKeyAuth(I)V

    .line 2398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2399
    const/4 v6, 0x1

    return v6

    .line 2402
    .end local v71    # "userId":I
    :sswitch_44
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2404
    .restart local v71    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 2405
    .restart local v64    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v68

    .line 2406
    .restart local v68    # "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 2407
    .restart local v63    # "secret":[B
    move-object/from16 v0, p0

    move/from16 v1, v71

    move/from16 v2, v64

    move-object/from16 v3, v68

    move-object/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unlockUserKey(II[B[B)V

    .line 2408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2409
    const/4 v6, 0x1

    return v6

    .line 2412
    .end local v63    # "secret":[B
    .end local v64    # "serialNumber":I
    .end local v68    # "token":[B
    .end local v71    # "userId":I
    :sswitch_45
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2414
    .restart local v71    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->lockUserKey(I)V

    .line 2415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2416
    const/4 v6, 0x1

    return v6

    .line 2419
    .end local v71    # "userId":I
    :sswitch_46
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2421
    .restart local v71    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isUserKeyUnlocked(I)Z

    move-result v60

    .line 2422
    .restart local v60    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2423
    if-eqz v60, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    const/4 v6, 0x1

    return v6

    .line 2423
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 2427
    .end local v60    # "result":Z
    .end local v71    # "userId":I
    :sswitch_47
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2429
    .restart local v74    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2430
    .restart local v71    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 2431
    .restart local v64    # "serialNumber":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2432
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v71

    move/from16 v3, v64

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 2433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    const/4 v6, 0x1

    return v6

    .line 2437
    .end local v19    # "_flags":I
    .end local v64    # "serialNumber":I
    .end local v71    # "userId":I
    .end local v74    # "volumeUuid":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v74

    .line 2439
    .restart local v74    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 2440
    .restart local v71    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 2441
    .restart local v19    # "_flags":I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move/from16 v2, v71

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    const/4 v6, 0x1

    return v6

    .line 2446
    .end local v19    # "_flags":I
    .end local v71    # "userId":I
    .end local v74    # "volumeUuid":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 2448
    .local v43, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountAppFuse(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    .line 2449
    .local v28, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2450
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2451
    const/4 v6, 0x1

    return v6

    .line 2455
    .end local v28    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v43    # "name":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v69

    .line 2457
    .restart local v69    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    .line 2458
    .restart local v50    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v69

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->disableStorageEncryption(ILjava/lang/String;)I

    move-result v58

    .line 2459
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2461
    const/4 v6, 0x1

    return v6

    .line 2464
    .end local v50    # "password":Ljava/lang/String;
    .end local v58    # "result":I
    .end local v69    # "type":I
    :sswitch_4b
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 2467
    .local v49, "passwd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setExternalEncryptionPassword(Ljava/lang/String;)I

    move-result v62

    .line 2468
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2469
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    const/4 v6, 0x1

    return v6

    .line 2473
    .end local v49    # "passwd":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_4c
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 2477
    .restart local v49    # "passwd":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 2478
    .local v42, "mountpoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->cryptoMount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v62

    .line 2479
    .restart local v62    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2480
    move-object/from16 v0, p3

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    const/4 v6, 0x1

    return v6

    .line 2484
    .end local v42    # "mountpoint":Ljava/lang/String;
    .end local v49    # "passwd":Ljava/lang/String;
    .end local v62    # "resultCode":I
    :sswitch_4d
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v66, 0x1

    .line 2487
    .local v66, "state":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->encryptExternalStorage(Z)I

    move-result v58

    .line 2488
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2489
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    const/4 v6, 0x1

    return v6

    .line 2486
    .end local v58    # "result":I
    .end local v66    # "state":Z
    :cond_10
    const/16 v66, 0x0

    goto :goto_10

    .line 2493
    :sswitch_4e
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isStorageFullyEncrypted()I

    move-result v58

    .line 2495
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2497
    const/4 v6, 0x1

    return v6

    .line 2500
    .end local v58    # "result":I
    :sswitch_4f
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->moveDumpstates()I

    move-result v58

    .line 2502
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    const/4 v6, 0x1

    return v6

    .line 2507
    .end local v58    # "result":I
    :sswitch_50
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 2510
    .local v39, "module":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->odeNativeTest(Ljava/lang/String;)I

    move-result v58

    .line 2511
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2513
    const/4 v6, 0x1

    return v6

    .line 2516
    .end local v39    # "module":Ljava/lang/String;
    .end local v58    # "result":I
    :sswitch_51
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2517
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getCCmodeForCryptKeeper()I

    move-result v58

    .line 2518
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2519
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2520
    const/4 v6, 0x1

    return v6

    .line 2523
    .end local v58    # "result":I
    :sswitch_52
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 2527
    .restart local v43    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v72

    .line 2528
    .local v72, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v58

    .line 2529
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2531
    const/4 v6, 0x1

    return v6

    .line 2534
    .end local v43    # "name":Ljava/lang/String;
    .end local v58    # "result":I
    .end local v72    # "value":Ljava/lang/String;
    :sswitch_53
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 2537
    .restart local v43    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 2538
    .restart local v59    # "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2539
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2540
    const/4 v6, 0x1

    return v6

    .line 2543
    .end local v43    # "name":Ljava/lang/String;
    .end local v59    # "result":Ljava/lang/String;
    :sswitch_54
    const-string/jumbo v6, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getCurrentEncryptionFailCount()I

    move-result v58

    .line 2545
    .restart local v58    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2547
    const/4 v6, 0x1

    return v6

    .line 1814
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_25
        0x25 -> :sswitch_26
        0x26 -> :sswitch_27
        0x27 -> :sswitch_28
        0x28 -> :sswitch_29
        0x29 -> :sswitch_2b
        0x2a -> :sswitch_2c
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_2e
        0x2d -> :sswitch_2f
        0x2e -> :sswitch_30
        0x2f -> :sswitch_31
        0x30 -> :sswitch_32
        0x31 -> :sswitch_33
        0x32 -> :sswitch_34
        0x33 -> :sswitch_36
        0x34 -> :sswitch_37
        0x35 -> :sswitch_38
        0x36 -> :sswitch_39
        0x37 -> :sswitch_3a
        0x38 -> :sswitch_3b
        0x39 -> :sswitch_3c
        0x3a -> :sswitch_3e
        0x3b -> :sswitch_3f
        0x3c -> :sswitch_35
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_40
        0x3f -> :sswitch_41
        0x40 -> :sswitch_44
        0x41 -> :sswitch_45
        0x42 -> :sswitch_46
        0x43 -> :sswitch_47
        0x44 -> :sswitch_48
        0x45 -> :sswitch_2a
        0x46 -> :sswitch_49
        0x47 -> :sswitch_42
        0x48 -> :sswitch_43
        0x49 -> :sswitch_1d
        0x69 -> :sswitch_24
        0xc9 -> :sswitch_4a
        0xca -> :sswitch_4b
        0xcb -> :sswitch_4d
        0xcc -> :sswitch_4c
        0xcd -> :sswitch_4e
        0xce -> :sswitch_4f
        0xcf -> :sswitch_52
        0xd0 -> :sswitch_53
        0xd1 -> :sswitch_50
        0xd2 -> :sswitch_51
        0xd3 -> :sswitch_54
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
