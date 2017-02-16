.class public abstract Lcom/samsung/android/thememanager/IThemeManager$Stub;
.super Landroid/os/Binder;
.source "IThemeManager.java"

# interfaces
.implements Lcom/samsung/android/thememanager/IThemeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/thememanager/IThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.thememanager.IThemeManager"

.field static final TRANSACTION_applyEventTheme:I = 0x1d

.field static final TRANSACTION_applyThemeComponent:I = 0x26

.field static final TRANSACTION_applyThemePackage:I = 0x14

.field static final TRANSACTION_changeThemeState:I = 0x8

.field static final TRANSACTION_deleteThemePackage:I = 0x15

.field static final TRANSACTION_getActiveAODPackage:I = 0x31

.field static final TRANSACTION_getActiveAppIconPackage:I = 0x2a

.field static final TRANSACTION_getActiveComponents:I = 0x9

.field static final TRANSACTION_getActiveFestivalPackage:I = 0x1c

.field static final TRANSACTION_getActiveMyEvents:I = 0xb

.field static final TRANSACTION_getActiveThemeComponent:I = 0x32

.field static final TRANSACTION_getActiveWallpaperPackage:I = 0x2b

.field static final TRANSACTION_getCategoryList:I = 0xc

.field static final TRANSACTION_getChineseFestivalList:I = 0x3

.field static final TRANSACTION_getComponentCustomData:I = 0x35

.field static final TRANSACTION_getComponentPackageMap:I = 0x2

.field static final TRANSACTION_getCoverAttachStatus:I = 0x19

.field static final TRANSACTION_getCurrentThemePackage:I = 0xa

.field static final TRANSACTION_getCustomData:I = 0x20

.field static final TRANSACTION_getInstalledComponentList:I = 0x27

.field static final TRANSACTION_getInstalledComponentsCount:I = 0x28

.field static final TRANSACTION_getListByCategory:I = 0xf

.field static final TRANSACTION_getPreviousToCoverPackage:I = 0x1a

.field static final TRANSACTION_getSpecialEditionThemePackage:I = 0x1e

.field static final TRANSACTION_getStateComponentPackage:I = 0x30

.field static final TRANSACTION_getStateThemePackage:I = 0x11

.field static final TRANSACTION_getThemeDetailsList:I = 0x1

.field static final TRANSACTION_getThemeVersionForMasterPackage:I = 0x21

.field static final TRANSACTION_getThemesForComponent:I = 0x12

.field static final TRANSACTION_getVersionForThemeFramework:I = 0x5

.field static final TRANSACTION_getWallpaperFilePath:I = 0x2c

.field static final TRANSACTION_hideApplyProgress:I = 0x33

.field static final TRANSACTION_installThemeComponent:I = 0x24

.field static final TRANSACTION_installThemePackage:I = 0x4

.field static final TRANSACTION_isComponentExist:I = 0x29

.field static final TRANSACTION_isOnTrialMode:I = 0x6

.field static final TRANSACTION_isSupportThemePackage:I = 0x23

.field static final TRANSACTION_isSupportThemeVersion:I = 0x22

.field static final TRANSACTION_isThemePackageExist:I = 0x18

.field static final TRANSACTION_registerStatusListener:I = 0x16

.field static final TRANSACTION_removeThemeComponent:I = 0x25

.field static final TRANSACTION_removeThemePackage:I = 0x7

.field static final TRANSACTION_setComponentCustomData:I = 0x34

.field static final TRANSACTION_setCustomData:I = 0x1f

.field static final TRANSACTION_setDeleteMyEvents:I = 0xe

.field static final TRANSACTION_setFestivalPackage:I = 0x1b

.field static final TRANSACTION_setFestivalPackageFrom:I = 0x2f

.field static final TRANSACTION_setStateComponentPackage:I = 0x2d

.field static final TRANSACTION_setStateThemePackage:I = 0x10

.field static final TRANSACTION_setTimeForMyEvent:I = 0xd

.field static final TRANSACTION_stopTrial:I = 0x2e

.field static final TRANSACTION_stopTrialThemePackage:I = 0x13

.field static final TRANSACTION_unregisterStatusListener:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IThemeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.thememanager.IThemeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/thememanager/IThemeManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 624
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    return v3

    .line 48
    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemeDetailsList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v26

    .line 52
    .local v26, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 54
    const/4 v3, 0x1

    return v3

    .line 58
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v26    # "_result":Ljava/util/Map;
    :sswitch_2
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getComponentPackageMap()Ljava/util/Map;

    move-result-object v26

    .line 60
    .restart local v26    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 62
    const/4 v3, 0x1

    return v3

    .line 66
    .end local v26    # "_result":Ljava/util/Map;
    :sswitch_3
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getChineseFestivalList()Ljava/util/List;

    move-result-object v24

    .line 68
    .local v24, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 70
    const/4 v3, 0x1

    return v3

    .line 74
    .end local v24    # "_result":Ljava/util/List;
    :sswitch_4
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 83
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v16, 0x1

    .line 84
    .local v16, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->installThemePackage(Landroid/net/Uri;Z)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v3, 0x1

    return v3

    .line 80
    .end local v16    # "_arg1":Z
    :cond_0
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .line 83
    .end local v10    # "_arg0":Landroid/net/Uri;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 90
    :sswitch_5
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getVersionForThemeFramework()Ljava/lang/String;

    move-result-object v23

    .line 92
    .local v23, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x1

    return v3

    .line 98
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isOnTrialMode(Ljava/lang/String;)Z

    move-result v27

    .line 102
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v27, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v3, 0x1

    return v3

    .line 103
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 108
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_7
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->removeThemePackage(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v3, 0x1

    return v3

    .line 117
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 123
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .line 124
    .local v6, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13, v6}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->changeThemeState(Ljava/lang/String;IZ)Z

    move-result v27

    .line 125
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v27, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v3, 0x1

    return v3

    .line 123
    .end local v6    # "_arg2":Z
    .end local v27    # "_result":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 126
    .restart local v6    # "_arg2":Z
    .restart local v27    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 131
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg2":Z
    .end local v13    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveComponents()[Ljava/lang/String;

    move-result-object v28

    .line 133
    .local v28, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x1

    return v3

    .line 139
    .end local v28    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v23

    .line 141
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x1

    return v3

    .line 147
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveMyEvents()Ljava/util/List;

    move-result-object v25

    .line 149
    .local v25, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 151
    const/4 v3, 0x1

    return v3

    .line 155
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCategoryList()Ljava/util/List;

    move-result-object v24

    .line 157
    .restart local v24    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 159
    const/4 v3, 0x1

    return v3

    .line 163
    .end local v24    # "_result":Ljava/util/List;
    :sswitch_d
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 171
    .local v19, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1, v7}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v3, 0x1

    return v3

    .line 178
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 182
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setDeleteMyEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v3, 0x1

    return v3

    .line 189
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 192
    .local v9, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getListByCategory(I)Ljava/util/List;

    move-result-object v24

    .line 193
    .restart local v24    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 195
    const/4 v3, 0x1

    return v3

    .line 199
    .end local v9    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;
    :sswitch_10
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 204
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setStateThemePackage(Ljava/lang/String;I)I

    move-result v21

    .line 205
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v3, 0x1

    return v3

    .line 211
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v21    # "_result":I
    :sswitch_11
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getStateThemePackage(Ljava/lang/String;)I

    move-result v21

    .line 215
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v3, 0x1

    return v3

    .line 221
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":I
    :sswitch_12
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 226
    .restart local v13    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemesForComponent(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 227
    .restart local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 229
    const/4 v3, 0x1

    return v3

    .line 233
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_13
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->stopTrialThemePackage()Z

    move-result v27

    .line 235
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v3, 0x1

    return v3

    .line 236
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 241
    .end local v27    # "_result":Z
    :sswitch_14
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/16 v16, 0x1

    .line 246
    .restart local v16    # "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->applyThemePackage(Ljava/lang/String;Z)Z

    move-result v27

    .line 247
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v27, :cond_7

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v3, 0x1

    return v3

    .line 245
    .end local v16    # "_arg1":Z
    .end local v27    # "_result":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    .line 248
    .restart local v16    # "_arg1":Z
    .restart local v27    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    .line 253
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Z
    .end local v27    # "_result":Z
    :sswitch_15
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->deleteThemePackage(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v3, 0x1

    return v3

    .line 262
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IStatusListener;

    move-result-object v11

    .line 265
    .local v11, "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->registerStatusListener(Lcom/samsung/android/thememanager/IStatusListener;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    const/4 v3, 0x1

    return v3

    .line 271
    .end local v11    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    :sswitch_17
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/thememanager/IStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IStatusListener;

    move-result-object v11

    .line 274
    .restart local v11    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->unregisterStatusListener(Lcom/samsung/android/thememanager/IStatusListener;)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v3, 0x1

    return v3

    .line 280
    .end local v11    # "_arg0":Lcom/samsung/android/thememanager/IStatusListener;
    :sswitch_18
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 283
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isThemePackageExist(Ljava/lang/String;)Z

    move-result v27

    .line 284
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v27, :cond_8

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v3, 0x1

    return v3

    .line 285
    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    .line 290
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_19
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCoverAttachStatus(Ljava/lang/String;)Z

    move-result v27

    .line 294
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v27, :cond_9

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v3, 0x1

    return v3

    .line 295
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 300
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1a
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getPreviousToCoverPackage()Ljava/lang/String;

    move-result-object v23

    .line 302
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    const/4 v3, 0x1

    return v3

    .line 308
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setFestivalPackage(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v3, 0x1

    return v3

    .line 317
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveFestivalPackage()Ljava/lang/String;

    move-result-object v23

    .line 319
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x1

    return v3

    .line 325
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 331
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 332
    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v13, v1}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->applyEventTheme(Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v3, 0x1

    return v3

    .line 338
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getSpecialEditionThemePackage()Ljava/lang/String;

    move-result-object v23

    .line 340
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    const/4 v3, 0x1

    return v3

    .line 346
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 350
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 351
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    .line 356
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setCustomData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v3, 0x1

    return v3

    .line 354
    :cond_a
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/os/Bundle;
    goto :goto_a

    .line 362
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Landroid/os/Bundle;
    :sswitch_20
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 365
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getCustomData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 366
    .local v22, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v22, :cond_b

    .line 368
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 374
    :goto_b
    const/4 v3, 0x1

    return v3

    .line 372
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 378
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_21
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getThemeVersionForMasterPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 382
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    const/4 v3, 0x1

    return v3

    .line 388
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 391
    .restart local v9    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isSupportThemeVersion(I)Z

    move-result v27

    .line 392
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v27, :cond_c

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v3, 0x1

    return v3

    .line 393
    :cond_c
    const/4 v3, 0x0

    goto :goto_c

    .line 398
    .end local v9    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_23
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isSupportThemePackage(Ljava/lang/String;)Z

    move-result v27

    .line 402
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v27, :cond_d

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v3, 0x1

    return v3

    .line 403
    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    .line 408
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_24
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 412
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 413
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 419
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v6, 0x1

    .line 420
    .restart local v6    # "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v6}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->installThemeComponent(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v3, 0x1

    return v3

    .line 416
    .end local v6    # "_arg2":Z
    :cond_e
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/net/Uri;
    goto :goto_e

    .line 419
    .end local v14    # "_arg1":Landroid/net/Uri;
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 426
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->removeThemeComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    const/4 v3, 0x1

    return v3

    .line 437
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 441
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v6, 0x1

    .line 445
    .local v6, "_arg2":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 447
    .restart local v7    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg4":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 448
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->applyThemeComponent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 449
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v27, :cond_11

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v3, 0x1

    return v3

    .line 443
    .end local v6    # "_arg2":Z
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v27    # "_result":Z
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Z
    goto :goto_10

    .line 450
    .restart local v7    # "_arg3":Ljava/lang/String;
    .restart local v8    # "_arg4":Ljava/lang/String;
    .restart local v27    # "_result":Z
    :cond_11
    const/4 v3, 0x0

    goto :goto_11

    .line 455
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Z
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_27
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 461
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 463
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 464
    .local v20, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getInstalledComponentList(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v25

    .line 465
    .restart local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 467
    const/4 v3, 0x1

    return v3

    .line 471
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_28
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 474
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getInstalledComponentsCount(Ljava/lang/String;)I

    move-result v21

    .line 475
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v3, 0x1

    return v3

    .line 481
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":I
    :sswitch_29
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->isComponentExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 487
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v27, :cond_12

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v3, 0x1

    return v3

    .line 488
    :cond_12
    const/4 v3, 0x0

    goto :goto_12

    .line 493
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_2a
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveAppIconPackage()Ljava/lang/String;

    move-result-object v23

    .line 495
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    const/4 v3, 0x1

    return v3

    .line 501
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveWallpaperPackage()Ljava/lang/String;

    move-result-object v23

    .line 503
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    const/4 v3, 0x1

    return v3

    .line 509
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getWallpaperFilePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 513
    .restart local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 515
    const/4 v3, 0x1

    return v3

    .line 519
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2d
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 523
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 525
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 526
    .restart local v17    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v5, v1}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setStateComponentPackage(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    .line 527
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    const/4 v3, 0x1

    return v3

    .line 533
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v21    # "_result":I
    :sswitch_2e
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->stopTrial()Z

    move-result v27

    .line 535
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v27, :cond_13

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v3, 0x1

    return v3

    .line 536
    :cond_13
    const/4 v3, 0x0

    goto :goto_13

    .line 541
    .end local v27    # "_result":Z
    :sswitch_2f
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 545
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 546
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setFestivalPackageFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    const/4 v3, 0x1

    return v3

    .line 552
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 557
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getStateComponentPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 558
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    const/4 v3, 0x1

    return v3

    .line 564
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":I
    :sswitch_31
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveAODPackage()Ljava/lang/String;

    move-result-object v23

    .line 566
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    const/4 v3, 0x1

    return v3

    .line 572
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getActiveThemeComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 576
    .restart local v23    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    const/4 v3, 0x1

    return v3

    .line 582
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->hideApplyProgress()V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v3, 0x1

    return v3

    .line 589
    :sswitch_34
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 593
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 595
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 596
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    .line 601
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->setComponentCustomData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/4 v3, 0x1

    return v3

    .line 599
    :cond_14
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/os/Bundle;
    goto :goto_14

    .line 607
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/os/Bundle;
    :sswitch_35
    const-string/jumbo v3, "com.samsung.android.thememanager.IThemeManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 612
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->getComponentCustomData(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 613
    .restart local v22    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v22, :cond_15

    .line 615
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 621
    :goto_15
    const/4 v3, 0x1

    return v3

    .line 619
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 39
    nop

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
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
