.class public abstract Landroid/content/pm/IPersonaPolicyManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaPolicyManager.java"

# interfaces
.implements Landroid/content/pm/IPersonaPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaPolicyManager"

.field static final TRANSACTION_addLockOnImage:I = 0x2b

.field static final TRANSACTION_addSecureKey:I = 0x40

.field static final TRANSACTION_addSystemKey:I = 0x3e

.field static final TRANSACTION_getAirCommandEnabled:I = 0x22

.field static final TRANSACTION_getAllowAllShare:I = 0x1c

.field static final TRANSACTION_getAllowContainerReset:I = 0x12

.field static final TRANSACTION_getAllowCustomBadgeIcon:I = 0xa

.field static final TRANSACTION_getAllowCustomColorIdentification:I = 0x10

.field static final TRANSACTION_getAllowCustomPersonaIcon:I = 0xe

.field static final TRANSACTION_getAllowDLNADataTransfer:I = 0x16

.field static final TRANSACTION_getAllowExportAndDeleteFiles:I = 0x2a

.field static final TRANSACTION_getAllowExportFiles:I = 0x28

.field static final TRANSACTION_getAllowImportFiles:I = 0x26

.field static final TRANSACTION_getAllowPrint:I = 0x18

.field static final TRANSACTION_getAllowShortCutCreation:I = 0x14

.field static final TRANSACTION_getAllowUniversalCallerId:I = 0x24

.field static final TRANSACTION_getCameraModeChangeEnabled:I = 0x8

.field static final TRANSACTION_getDisableSwitchWidgetOnLockScreen:I = 0xc

.field static final TRANSACTION_getEncryptionStatus:I = 0x4

.field static final TRANSACTION_getGearSupportEnabled:I = 0x1e

.field static final TRANSACTION_getModifyLockScreenTimeout:I = 0x1a

.field static final TRANSACTION_getPasswordLockPolicy:I = 0x2

.field static final TRANSACTION_getPenWindowEnabled:I = 0x20

.field static final TRANSACTION_getRCPDataPolicy:I = 0x30

.field static final TRANSACTION_getRCPDataPolicyForUser:I = 0x31

.field static final TRANSACTION_getRCPNotificationPolicy:I = 0x33

.field static final TRANSACTION_getSecureFolderPolicy:I = 0x3a

.field static final TRANSACTION_getSecureKeys:I = 0x3d

.field static final TRANSACTION_getSecureKeystoreEnabled:I = 0x6

.field static final TRANSACTION_getSwitchNotifEnabled:I = 0x35

.field static final TRANSACTION_getSystemKeys:I = 0x3c

.field static final TRANSACTION_isBadgeRequired:I = 0x2c

.field static final TRANSACTION_isBadgeRequiredFromOwner:I = 0x2d

.field static final TRANSACTION_isMoveFilesToContainerAllowed:I = 0x37

.field static final TRANSACTION_isMoveFilesToOwnerAllowed:I = 0x38

.field static final TRANSACTION_isShareClipboardDataToContainerAllowed:I = 0x39

.field static final TRANSACTION_isShareClipboardDataToOwnerAllowed:I = 0x36

.field static final TRANSACTION_registerReceivers:I = 0x2e

.field static final TRANSACTION_removeSecureKey:I = 0x41

.field static final TRANSACTION_removeSystemKey:I = 0x3f

.field static final TRANSACTION_setAirCommandEnabled:I = 0x21

.field static final TRANSACTION_setAllowAllShare:I = 0x1b

.field static final TRANSACTION_setAllowContainerReset:I = 0x11

.field static final TRANSACTION_setAllowCustomBadgeIcon:I = 0x9

.field static final TRANSACTION_setAllowCustomColorIdentification:I = 0xf

.field static final TRANSACTION_setAllowCustomPersonaIcon:I = 0xd

.field static final TRANSACTION_setAllowDLNADataTransfer:I = 0x15

.field static final TRANSACTION_setAllowExportAndDeleteFiles:I = 0x29

.field static final TRANSACTION_setAllowExportFiles:I = 0x27

.field static final TRANSACTION_setAllowImportFiles:I = 0x25

.field static final TRANSACTION_setAllowPrint:I = 0x17

.field static final TRANSACTION_setAllowShortCutCreation:I = 0x13

.field static final TRANSACTION_setAllowUniversalCallerId:I = 0x23

.field static final TRANSACTION_setCameraModeChangeEnabled:I = 0x7

.field static final TRANSACTION_setDisableSwitchWidgetOnLockScreen:I = 0xb

.field static final TRANSACTION_setEncryptionStatus:I = 0x3

.field static final TRANSACTION_setGearSupportEnabled:I = 0x1d

.field static final TRANSACTION_setModifyLockScreenTimeout:I = 0x19

.field static final TRANSACTION_setPasswordLockPolicy:I = 0x1

.field static final TRANSACTION_setPenWindowEnabled:I = 0x1f

.field static final TRANSACTION_setRCPDataPolicy:I = 0x2f

.field static final TRANSACTION_setRCPNotificationPolicy:I = 0x32

.field static final TRANSACTION_setSecureFolderPolicy:I = 0x3b

.field static final TRANSACTION_setSecureKeystoreEnabled:I = 0x5

.field static final TRANSACTION_setSwitchNotifEnabled:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.content.pm.IPersonaPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/content/pm/IPersonaPolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 763
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 45
    :sswitch_0
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v14, 0x1

    return v14

    .line 50
    :sswitch_1
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v7, 0x1

    .line 55
    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPasswordLockPolicy(IZ)Z

    move-result v13

    .line 56
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v13, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v14, 0x1

    return v14

    .line 54
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 57
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 62
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_2
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPasswordLockPolicy(I)Z

    move-result v13

    .line 66
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v13, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v14, 0x1

    return v14

    .line 67
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 72
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_3
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v7, 0x1

    .line 77
    .restart local v7    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setEncryptionStatus(IZ)Z

    move-result v13

    .line 78
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v13, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/4 v14, 0x1

    return v14

    .line 76
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 79
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 84
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_4
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getEncryptionStatus(I)Z

    move-result v13

    .line 88
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v14, 0x1

    return v14

    .line 89
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 94
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_5
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v7, 0x1

    .line 99
    .restart local v7    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSecureKeystoreEnabled(IZ)Z

    move-result v13

    .line 100
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v13, :cond_7

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v14, 0x1

    return v14

    .line 98
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 101
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    .line 106
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_6
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureKeystoreEnabled(I)Z

    move-result v13

    .line 110
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v13, :cond_8

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v14, 0x1

    return v14

    .line 111
    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .line 116
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_9

    const/4 v7, 0x1

    .line 121
    .restart local v7    # "_arg1":Z
    :goto_9
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setCameraModeChangeEnabled(IZ)Z

    move-result v13

    .line 122
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v13, :cond_a

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v14, 0x1

    return v14

    .line 120
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 123
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_a

    .line 128
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_8
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getCameraModeChangeEnabled(I)Z

    move-result v13

    .line 132
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v13, :cond_b

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v14, 0x1

    return v14

    .line 133
    :cond_b
    const/4 v14, 0x0

    goto :goto_b

    .line 138
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_9
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_c

    const/4 v7, 0x1

    .line 143
    .restart local v7    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomBadgeIcon(IZ)Z

    move-result v13

    .line 144
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v13, :cond_d

    const/4 v14, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v14, 0x1

    return v14

    .line 142
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    .line 145
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_d

    .line 150
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_a
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 153
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomBadgeIcon(I)Z

    move-result v13

    .line 154
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v13, :cond_e

    const/4 v14, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v14, 0x1

    return v14

    .line 155
    :cond_e
    const/4 v14, 0x0

    goto :goto_e

    .line 160
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_b
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 164
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_f

    const/4 v7, 0x1

    .line 165
    .restart local v7    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setDisableSwitchWidgetOnLockScreen(IZ)Z

    move-result v13

    .line 166
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v13, :cond_10

    const/4 v14, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v14, 0x1

    return v14

    .line 164
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    .line 167
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_10
    const/4 v14, 0x0

    goto :goto_10

    .line 172
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_c
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getDisableSwitchWidgetOnLockScreen(I)Z

    move-result v13

    .line 176
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v13, :cond_11

    const/4 v14, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v14, 0x1

    return v14

    .line 177
    :cond_11
    const/4 v14, 0x0

    goto :goto_11

    .line 182
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_d
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_12

    const/4 v7, 0x1

    .line 187
    .restart local v7    # "_arg1":Z
    :goto_12
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomPersonaIcon(IZ)Z

    move-result v13

    .line 188
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v13, :cond_13

    const/4 v14, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v14, 0x1

    return v14

    .line 186
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_12
    const/4 v7, 0x0

    goto :goto_12

    .line 189
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_13

    .line 194
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_e
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomPersonaIcon(I)Z

    move-result v13

    .line 198
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v13, :cond_14

    const/4 v14, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v14, 0x1

    return v14

    .line 199
    :cond_14
    const/4 v14, 0x0

    goto :goto_14

    .line 204
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_f
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_15

    const/4 v7, 0x1

    .line 209
    .restart local v7    # "_arg1":Z
    :goto_15
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomColorIdentification(IZ)Z

    move-result v13

    .line 210
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v13, :cond_16

    const/4 v14, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v14, 0x1

    return v14

    .line 208
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_15

    .line 211
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_16
    const/4 v14, 0x0

    goto :goto_16

    .line 216
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_10
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomColorIdentification(I)Z

    move-result v13

    .line 220
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v13, :cond_17

    const/4 v14, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v14, 0x1

    return v14

    .line 221
    :cond_17
    const/4 v14, 0x0

    goto :goto_17

    .line 226
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_11
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_18

    const/4 v7, 0x1

    .line 231
    .restart local v7    # "_arg1":Z
    :goto_18
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowContainerReset(IZ)Z

    move-result v13

    .line 232
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v13, :cond_19

    const/4 v14, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v14, 0x1

    return v14

    .line 230
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_18
    const/4 v7, 0x0

    goto :goto_18

    .line 233
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_19
    const/4 v14, 0x0

    goto :goto_19

    .line 238
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_12
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowContainerReset(I)Z

    move-result v13

    .line 242
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v13, :cond_1a

    const/4 v14, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v14, 0x1

    return v14

    .line 243
    :cond_1a
    const/4 v14, 0x0

    goto :goto_1a

    .line 248
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_13
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1b

    const/4 v7, 0x1

    .line 253
    .restart local v7    # "_arg1":Z
    :goto_1b
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowShortCutCreation(IZ)Z

    move-result v13

    .line 254
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v13, :cond_1c

    const/4 v14, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v14, 0x1

    return v14

    .line 252
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_1b
    const/4 v7, 0x0

    goto :goto_1b

    .line 255
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_1c
    const/4 v14, 0x0

    goto :goto_1c

    .line 260
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_14
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowShortCutCreation(I)Z

    move-result v13

    .line 264
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v13, :cond_1d

    const/4 v14, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v14, 0x1

    return v14

    .line 265
    :cond_1d
    const/4 v14, 0x0

    goto :goto_1d

    .line 270
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_15
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1e

    const/4 v7, 0x1

    .line 275
    .restart local v7    # "_arg1":Z
    :goto_1e
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowDLNADataTransfer(IZ)Z

    move-result v13

    .line 276
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v13, :cond_1f

    const/4 v14, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v14, 0x1

    return v14

    .line 274
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_1e
    const/4 v7, 0x0

    goto :goto_1e

    .line 277
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_1f
    const/4 v14, 0x0

    goto :goto_1f

    .line 282
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_16
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowDLNADataTransfer(I)Z

    move-result v13

    .line 286
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v13, :cond_20

    const/4 v14, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v14, 0x1

    return v14

    .line 287
    :cond_20
    const/4 v14, 0x0

    goto :goto_20

    .line 292
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_17
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_21

    const/4 v7, 0x1

    .line 297
    .restart local v7    # "_arg1":Z
    :goto_21
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowPrint(IZ)Z

    move-result v13

    .line 298
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v13, :cond_22

    const/4 v14, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v14, 0x1

    return v14

    .line 296
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_21
    const/4 v7, 0x0

    goto :goto_21

    .line 299
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_22
    const/4 v14, 0x0

    goto :goto_22

    .line 304
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_18
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowPrint(I)Z

    move-result v13

    .line 308
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v13, :cond_23

    const/4 v14, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v14, 0x1

    return v14

    .line 309
    :cond_23
    const/4 v14, 0x0

    goto :goto_23

    .line 314
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_19
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_24

    const/4 v7, 0x1

    .line 319
    .restart local v7    # "_arg1":Z
    :goto_24
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setModifyLockScreenTimeout(IZ)Z

    move-result v13

    .line 320
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    if-eqz v13, :cond_25

    const/4 v14, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v14, 0x1

    return v14

    .line 318
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_24
    const/4 v7, 0x0

    goto :goto_24

    .line 321
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_25
    const/4 v14, 0x0

    goto :goto_25

    .line 326
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_1a
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getModifyLockScreenTimeout(I)Z

    move-result v13

    .line 330
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v13, :cond_26

    const/4 v14, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v14, 0x1

    return v14

    .line 331
    :cond_26
    const/4 v14, 0x0

    goto :goto_26

    .line 336
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_1b
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_27

    const/4 v7, 0x1

    .line 341
    .restart local v7    # "_arg1":Z
    :goto_27
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowAllShare(IZ)Z

    move-result v13

    .line 342
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v13, :cond_28

    const/4 v14, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v14, 0x1

    return v14

    .line 340
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_27
    const/4 v7, 0x0

    goto :goto_27

    .line 343
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_28
    const/4 v14, 0x0

    goto :goto_28

    .line 348
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_1c
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowAllShare(I)Z

    move-result v13

    .line 352
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v13, :cond_29

    const/4 v14, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v14, 0x1

    return v14

    .line 353
    :cond_29
    const/4 v14, 0x0

    goto :goto_29

    .line 358
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_1d
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2a

    const/4 v7, 0x1

    .line 363
    .restart local v7    # "_arg1":Z
    :goto_2a
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setGearSupportEnabled(IZ)Z

    move-result v13

    .line 364
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v13, :cond_2b

    const/4 v14, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v14, 0x1

    return v14

    .line 362
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_2a
    const/4 v7, 0x0

    goto :goto_2a

    .line 365
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_2b
    const/4 v14, 0x0

    goto :goto_2b

    .line 370
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_1e
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getGearSupportEnabled(I)Z

    move-result v13

    .line 374
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v13, :cond_2c

    const/4 v14, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v14, 0x1

    return v14

    .line 375
    :cond_2c
    const/4 v14, 0x0

    goto :goto_2c

    .line 380
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_1f
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v7, 0x1

    .line 385
    .restart local v7    # "_arg1":Z
    :goto_2d
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPenWindowEnabled(IZ)Z

    move-result v13

    .line 386
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v13, :cond_2e

    const/4 v14, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v14, 0x1

    return v14

    .line 384
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_2d
    const/4 v7, 0x0

    goto :goto_2d

    .line 387
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_2e
    const/4 v14, 0x0

    goto :goto_2e

    .line 392
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_20
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPenWindowEnabled(I)Z

    move-result v13

    .line 396
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v13, :cond_2f

    const/4 v14, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    const/4 v14, 0x1

    return v14

    .line 397
    :cond_2f
    const/4 v14, 0x0

    goto :goto_2f

    .line 402
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_21
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_30

    const/4 v7, 0x1

    .line 407
    .restart local v7    # "_arg1":Z
    :goto_30
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAirCommandEnabled(IZ)Z

    move-result v13

    .line 408
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v13, :cond_31

    const/4 v14, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v14, 0x1

    return v14

    .line 406
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_30
    const/4 v7, 0x0

    goto :goto_30

    .line 409
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_31
    const/4 v14, 0x0

    goto :goto_31

    .line 414
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_22
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAirCommandEnabled(I)Z

    move-result v13

    .line 418
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v13, :cond_32

    const/4 v14, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v14, 0x1

    return v14

    .line 419
    :cond_32
    const/4 v14, 0x0

    goto :goto_32

    .line 424
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_23
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 428
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_33

    const/4 v7, 0x1

    .line 429
    .restart local v7    # "_arg1":Z
    :goto_33
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowUniversalCallerId(IZ)Z

    move-result v13

    .line 430
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v13, :cond_34

    const/4 v14, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v14, 0x1

    return v14

    .line 428
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_33
    const/4 v7, 0x0

    goto :goto_33

    .line 431
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_34
    const/4 v14, 0x0

    goto :goto_34

    .line 436
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_24
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowUniversalCallerId(I)Z

    move-result v13

    .line 440
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v13, :cond_35

    const/4 v14, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v14, 0x1

    return v14

    .line 441
    :cond_35
    const/4 v14, 0x0

    goto :goto_35

    .line 446
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_25
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_36

    const/4 v7, 0x1

    .line 451
    .restart local v7    # "_arg1":Z
    :goto_36
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowImportFiles(IZ)Z

    move-result v13

    .line 452
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v13, :cond_37

    const/4 v14, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v14, 0x1

    return v14

    .line 450
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_36
    const/4 v7, 0x0

    goto :goto_36

    .line 453
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_37
    const/4 v14, 0x0

    goto :goto_37

    .line 458
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_26
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowImportFiles(I)Z

    move-result v13

    .line 462
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    if-eqz v13, :cond_38

    const/4 v14, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    const/4 v14, 0x1

    return v14

    .line 463
    :cond_38
    const/4 v14, 0x0

    goto :goto_38

    .line 468
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_27
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 472
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_39

    const/4 v7, 0x1

    .line 473
    .restart local v7    # "_arg1":Z
    :goto_39
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportFiles(IZ)Z

    move-result v13

    .line 474
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v13, :cond_3a

    const/4 v14, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    const/4 v14, 0x1

    return v14

    .line 472
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_39
    const/4 v7, 0x0

    goto :goto_39

    .line 475
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_3a
    const/4 v14, 0x0

    goto :goto_3a

    .line 480
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_28
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportFiles(I)Z

    move-result v13

    .line 484
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v13, :cond_3b

    const/4 v14, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v14, 0x1

    return v14

    .line 485
    :cond_3b
    const/4 v14, 0x0

    goto :goto_3b

    .line 490
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_29
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3c

    const/4 v7, 0x1

    .line 495
    .restart local v7    # "_arg1":Z
    :goto_3c
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportAndDeleteFiles(IZ)Z

    move-result v13

    .line 496
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v13, :cond_3d

    const/4 v14, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v14, 0x1

    return v14

    .line 494
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_3c
    const/4 v7, 0x0

    goto :goto_3c

    .line 497
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_3d
    const/4 v14, 0x0

    goto :goto_3d

    .line 502
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_2a
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportAndDeleteFiles(I)Z

    move-result v13

    .line 506
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v13, :cond_3e

    const/4 v14, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v14, 0x1

    return v14

    .line 507
    :cond_3e
    const/4 v14, 0x0

    goto :goto_3e

    .line 512
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_2b
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3f

    .line 515
    sget-object v14, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 520
    :goto_3f
    invoke-virtual {p0, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 521
    .local v10, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v10, :cond_40

    .line 523
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 529
    :goto_40
    const/4 v14, 0x1

    return v14

    .line 518
    .end local v10    # "_result":Landroid/graphics/Bitmap;
    :cond_3f
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_3f

    .line 527
    .end local v2    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v10    # "_result":Landroid/graphics/Bitmap;
    :cond_40
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 533
    .end local v10    # "_result":Landroid/graphics/Bitmap;
    :sswitch_2c
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequired()Z

    move-result v13

    .line 535
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v13, :cond_41

    const/4 v14, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v14, 0x1

    return v14

    .line 536
    :cond_41
    const/4 v14, 0x0

    goto :goto_41

    .line 541
    .end local v13    # "_result":Z
    :sswitch_2d
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v13

    .line 545
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v13, :cond_42

    const/4 v14, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v14, 0x1

    return v14

    .line 546
    :cond_42
    const/4 v14, 0x0

    goto :goto_42

    .line 551
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_2e
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->registerReceivers()V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v14, 0x1

    return v14

    .line 558
    :sswitch_2f
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 562
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v5, v9}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 566
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v13, :cond_43

    const/4 v14, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v14, 0x1

    return v14

    .line 567
    :cond_43
    const/4 v14, 0x0

    goto :goto_43

    .line 572
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_30
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 576
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 577
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 578
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    const/4 v14, 0x1

    return v14

    .line 584
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 588
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 590
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 591
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v5, v9}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 592
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    const/4 v14, 0x1

    return v14

    .line 598
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 602
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 604
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 605
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v5, v9}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 606
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v13, :cond_44

    const/4 v14, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v14, 0x1

    return v14

    .line 607
    :cond_44
    const/4 v14, 0x0

    goto :goto_44

    .line 612
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_33
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 616
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 617
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 618
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    const/4 v14, 0x1

    return v14

    .line 624
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 628
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_45

    const/4 v7, 0x1

    .line 629
    .restart local v7    # "_arg1":Z
    :goto_45
    invoke-virtual {p0, v1, v7}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSwitchNotifEnabled(IZ)Z

    move-result v13

    .line 630
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v13, :cond_46

    const/4 v14, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v14, 0x1

    return v14

    .line 628
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_45
    const/4 v7, 0x0

    goto :goto_45

    .line 631
    .restart local v7    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_46
    const/4 v14, 0x0

    goto :goto_46

    .line 636
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_35
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 639
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSwitchNotifEnabled(I)Z

    move-result v13

    .line 640
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v13, :cond_47

    const/4 v14, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v14, 0x1

    return v14

    .line 641
    :cond_47
    const/4 v14, 0x0

    goto :goto_47

    .line 646
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_36
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 649
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v13

    .line 650
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v13, :cond_48

    const/4 v14, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v14, 0x1

    return v14

    .line 651
    :cond_48
    const/4 v14, 0x0

    goto :goto_48

    .line 656
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_37
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isMoveFilesToContainerAllowed(I)Z

    move-result v13

    .line 660
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v13, :cond_49

    const/4 v14, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v14, 0x1

    return v14

    .line 661
    :cond_49
    const/4 v14, 0x0

    goto :goto_49

    .line 666
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_38
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 669
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isMoveFilesToOwnerAllowed(I)Z

    move-result v13

    .line 670
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v13, :cond_4a

    const/4 v14, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v14, 0x1

    return v14

    .line 671
    :cond_4a
    const/4 v14, 0x0

    goto :goto_4a

    .line 676
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_39
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 679
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v13

    .line 680
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v13, :cond_4b

    const/4 v14, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v14, 0x1

    return v14

    .line 681
    :cond_4b
    const/4 v14, 0x0

    goto :goto_4b

    .line 686
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Z
    :sswitch_3a
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 690
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 691
    .local v4, "_arg1":I
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 692
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 694
    const/4 v14, 0x1

    return v14

    .line 698
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3b
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 704
    .local v6, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 705
    .local v8, "_arg2":I
    invoke-virtual {p0, v3, v6, v8}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v13

    .line 706
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v13, :cond_4c

    const/4 v14, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    const/4 v14, 0x1

    return v14

    .line 707
    :cond_4c
    const/4 v14, 0x0

    goto :goto_4c

    .line 712
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_arg2":I
    .end local v13    # "_result":Z
    :sswitch_3c
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSystemKeys()Ljava/util/List;

    move-result-object v12

    .line 714
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 716
    const/4 v14, 0x1

    return v14

    .line 720
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3d
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureKeys()Ljava/util/List;

    move-result-object v12

    .line 722
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 724
    const/4 v14, 0x1

    return v14

    .line 728
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3e
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 731
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addSystemKey(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v14, 0x1

    return v14

    .line 737
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->removeSystemKey(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v14, 0x1

    return v14

    .line 746
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 749
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addSecureKey(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v14, 0x1

    return v14

    .line 755
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v14, "android.content.pm.IPersonaPolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/pm/IPersonaPolicyManager$Stub;->removeSecureKey(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v14, 0x1

    return v14

    .line 41
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
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
